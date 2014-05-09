using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class AXPayroll_Support_Index : System.Web.UI.Page
{

    //SqlConnection sqlcon;
    //SqlCommand cmd;
    string name;
    string designation = "";
    string company;
    string contact;
    string email;
    string from;
    string to;
    string cc;
    string message;
    string formname;
    string website;
    DateTime requestdate;

    webclass myclass = new webclass();
    //CEMServiceReference.IcemserviceClient client = new IcemserviceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        name = NameTextBox.Text;
        company = CompanyTextBox.Text;
        email = MailTextBox.Text;
        from = "request@cembs.com";
        cc = "ramki@cembs.com";
        to = "gshankar@cembs.com";
        website = string.Empty;
        requestdate = System.DateTime.Now;
        formname = "AXPayrollSupport";

        var q = from data in myclass.domains() select data;
        domainlist.DataSource = myclass.domains();
        domainlist.DataBind();

        if (Session["visitor"] == null)
        {
            //Server.Transfer("Case-Studies_downloads.aspx");
            sessionlabel.HRef = "novisitor";
        }
        else
        {
            sessionlabel.HRef = Session["visitor"].ToString();
            doc.InnerHtml = "Download FAQ";
            doc.HRef = "#";
        }

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        //sqlcon = new SqlConnection(con_string);
        //sqlcon.Open();

        contact = ContactTextBox.Text;
        if (IsPostBack)
        {
            try
            {
                if (sendmail() == true)
                {
                    //Response.Write("<script type='text/javascript'>alert('Thankyou for your interest in CEM Business Solutions. <br/>You can now start your downloads');</script>");
                    resultLabel.Text = "Thank you for downloading our FAQ document";
                    QuoteInsertClass myquote = new QuoteInsertClass();
                    myquote = myclass.insert_quote(name, designation, company, contact, website, email, "", requestdate, formname);
                    Session["visitor"] = NameTextBox.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "alertwindow", "<script type='text/javascript'>alertwindow('Thank you! Please click on the download link.');</script>");
                    //Server.Transfer("Index.aspx");
                }
                else
                {
                    resultLabel.Text = "Mail was not successful";
                }
            }
            catch (Exception ex)
            {
                resultLabel.Text = ex.ToString();
            }
        }
    }

    #region email

    protected bool sendmail()
    {
        //creating object of mailclass from mailclass.cs
        MailClass mymail = new MailClass();
        string Automessage = "Thank you for downloading our FAQ document";
        //string image = "Images/cem_logo.jpg";
        try
        {
            if (myclass.IsValidMail(MailTextBox.Text) == false)
            {
                if (formname == null || formname == string.Empty)
                {
                    formname = "contact";
                    //mail_quote_wpc(name , from , to , cc , designation , company , contact , email , message , website);
                    mymail = myclass.mail_quote(name, to, designation, company, contact, website, email, message, requestdate, formname);
                    webclass.AutoMessage_customer(MailTextBox.Text, name, "CEM Business Solutions", Automessage);
                    return true;
                }
                else
                {
                    mymail = myclass.mail_quote(name, to, designation, company, contact, website, email, message, requestdate, formname);
                    webclass.AutoMessage_customer(MailTextBox.Text, name, "CEM Business Solutions", Automessage);
                    return true;
                }
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            resultLabel.Text = ex.ToString();
            return true;
        }
    }

    #endregion

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        CompanyTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        resetvalues();
    }
}