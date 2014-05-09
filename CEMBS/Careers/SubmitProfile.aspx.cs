using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Careers_SubmitProfile : System.Web.UI.Page
{
    webclass helper = new webclass();
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    string saved_path;
    string profile_path = HttpContext.Current.Request.PhysicalApplicationPath + "Careers/Profiles/";
    string name;
    string mail;
    string contact;
    string location;
    string experience;
    string profileurl;
    string message;
    string to;
    string cc;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = NameTextBox.Text;
        mail = MailTextBox.Text;
        contact = PhoneTextBox.Text;
        message = MessageTextBox.Text;
        location = LocationTextbox.Text;
        experience = ExperienceTextbox.Text;
    }

    /// <summary>
    /// Upload the file[resume] to the folder "Careers/Profiles/"
    /// </summary>
    /// <returns></returns>
    protected string upload()
    {
        string mailname = getmailname(mail);
        if (Profile_Uploader.PostedFile.ContentLength <= 1004800)
        {
            /* will keep the filename of the image. */
            ViewState["path"] = mailname + Profile_Uploader.FileName;

            /* will save the selected document into “Profiles” folder. */
            Profile_Uploader.PostedFile.SaveAs(profile_path + ViewState["path"]);

            saved_path = "Careers/Profiles/" + ViewState["path"].ToString();
            ViewState["savedpath"] = saved_path;
            return saved_path;
        }
        else
        {
            return saved_path = "invalid";
        }
    }
    protected void Upload_Click(object sender, EventArgs e)
    {
        //Response.Write("<script language='javascript'> alert('" + Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1) + "');</script>");
        if (sendmail() == true)
        {
            InsertProfile();
            ResultLabel.ForeColor = System.Drawing.Color.Green;
            ResultLabel.Text = "Job Application sent Successfully.";
        }
        else
        {
            if (ResultLabel.Text != "Job Application not sent.")
            {
                ResultLabel.ForeColor = System.Drawing.Color.Red;
                ResultLabel.Text = "Sorry you have already applied";
            }
            else
            {
                ResultLabel.ForeColor = System.Drawing.Color.Red;
                ResultLabel.Text = "Job Application not sent.";
            }
        }
    }

    /// <summary>
    /// Inserts the resume and candidate details to the "Profiles" table
    /// </summary>
    protected void InsertProfile()
    {
        //profileurl = upload().ToString();
        profileurl = ViewState["savedpath"].ToString();
        if (profileurl != "invalid")
        {
            //var insert = db.proc_insert_profiles(name, location, experience, mail, contact, profileurl, message);
            //db.SubmitChanges();
        }
        else
        {
            ResultLabel.ForeColor = System.Drawing.Color.Red;
            ResultLabel.Text = "Sorry File type Invalid";
        }
    }
    protected bool sendmail()
    {
        to = "careers@cembs.com";
        cc = "info@cembs.com";
        profileurl = upload().ToString();
        string mailname = getmailname(mail);

        /* Get the file name */
        string strFileName = Path.GetFileName(mailname + Profile_Uploader.PostedFile.FileName);
        string attachment = Server.MapPath("Profiles/" + strFileName);
        string message;

        /* Get the job details for which the candidate applied */
        string jobid = SelectJobs().jobidfield;
        string category = SelectJobs().categoryfield;
        string title = SelectJobs().titlefield;
        if (jobid != null && category != null && title != null)
        {
            message = "Candidate Name: " + name + "<br/>" +
                        "Current Location: " + location + "<br/>" +
                        "Years of Experience: " + experience + "<br/>" +
                        "Candidate MailID: " + mail + "<br/>" +
                        "Candidate Contact Number:" + PhoneTextBox.Text + "<br/>" +
                        "Applied Type: Application to Specified Job" + "<br/><br/>" +
                        "Applied Job ID: " + jobid + "<br/>" +
                        "Job Category: " + category + "<br/>" +
                        "Job Title: " + title + "<br/>" +
                        "Message: " + MessageTextBox.Text;
        }
        else
        {
            message = "Candidate Name: " + name + "<br/>" +
                        "Current Location: " + location + "<br/>" +
                        "Years of Experience: " + experience + "<br/>" +
                        "Candidate MailID: " + mail + "<br/>" +
                        "Candidate Contact Number:" + PhoneTextBox.Text + "<br/>" +
                        "Applied Type: General Application" + "<br/>" +
                        "Message: " + MessageTextBox.Text;
        }

        //if (CheckCandidateMail() == true)
        //{
        if (profileurl != "invalid")
        {
            try
            {
                helper.applyonline(to, cc, name, mail, contact, profileurl, attachment, message);
                helper.AutoMessage_resumes(mail, name);
                return true;
            }
            catch (Exception ex)
            {
                //Response.Write(ex.ToString());
                return false;
            }
        }
        else
        {
            return false;
        }
        //}
        //else
        //{
        //    ResultLabel.ForeColor = System.Drawing.Color.Red;
        //    ResultLabel.Text = "Sorry you have already applied";
        //    return false;
        //}
    }

    protected jobslist SelectJobs()
    {
        string jobid = Request.QueryString["jobid"];
        //string category;
        //string jobtitle;
        jobslist jobs = new jobslist();

        if (jobid == "0")
        //if (Session["jobid"] != null)
        {
            jobs.jobidfield = null;
            jobs.categoryfield = null;
            jobs.titlefield = null;
            return jobs;
        }
        else if (jobid == null)
        {
            //ResultLabel.Text = "Sorry";
            //jobid = "none";
            jobs.jobidfield = null;
            jobs.categoryfield = null;
            jobs.titlefield = null;
            return jobs;
            //category = "none";
            //jobtitle = "none";
        }
        else
        {
            //jobid = Session["jobid"].ToString();
            jobid = Request.QueryString["jobid"];
            var query = from data in db.JobOpenings where data.JobID.Equals(jobid) select new { data.JobID, data.Category, data.JobTitle };
            jobs.jobidfield = jobid;
            jobs.categoryfield = query.First().Category;
            jobs.titlefield = query.First().JobTitle;
            return jobs;
        }
    }

    /// <summary>
    /// split and get username from email id of the candidate and adding it as prefix of the resume name.
    /// </summary>
    /// <param name="mail">mail id of the candidate from textbox</param>
    /// <returns>username of the mail id</returns>
    protected string getmailname(string mail)
    {
        string mailid;
        string[] nameparts = mail.Split('@');
        return mailid = nameparts[0] + "_";
    }

    /// <summary>
    /// Check if the email id of the candidate already exists in the database
    /// </summary>
    /// <returns>boolean</returns>
    protected bool CheckCandidateMail()
    {
        int getmails = (from data in db.Profiles where data.Email.Equals(mail) select new { data.Email }).Count();
        if (getmails != 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}