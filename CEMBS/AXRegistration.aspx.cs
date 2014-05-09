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
using CEMServiceReference;
using InbuiltServiceReference;


public partial class AXRegistration : System.Web.UI.Page
{
    SqlConnection sqlcon;
    //SqlCommand cmd;
    string name;
    string designation;
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

    //Creating client object for Cemservice
    //IcemserviceClient objserviceClient = new IcemserviceClient();
    InbuiltServiceClient objclient = new InbuiltServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        formname = "AX 2012 Registration";
        name = NameTextBox.Text;
        designation = DesignationTextBox.Text;
        company = CompanyTextBox.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTextBox.Text;
        message = "AX Registration";
        from = "request@cembs.com";
        cc = "alex.c@cembs.com,mahesh@cembs.com";
        to = "ramki@cembs.com,geetha@cembs.com,rajesh@cembs.com";
        //cc = "naresh@cembs.com";
        //to = "naresh@cembs.com,rajesh@cembs.com";
        website = WebsiteTextBox.Text;
        requestdate = System.DateTime.Now;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        sqlcon = new SqlConnection(con_string);
        contact = ContactTextBox.Text;
        //sqlcon.Open();
        if (IsPostBack)
        {
            try
            {
                string Automessage = "Thank you for your registration " + name;
                resultLabel.Text = "";
                //QuoteInsertClass myquote = new QuoteInsertClass();
                objclient.InsertEventRegistrations(name, designation, company, contact, website, email, message, requestdate, formname);
                sendmailhere(name, from, to, cc, designation, company, contact, website, email, message, requestdate, formname);
                webclass.AutoMessage_customer(MailTextBox.Text, name, "CEM Business Solutions", Automessage);
                resetValues();
                ClientScript.RegisterStartupScript(this.GetType(), "alertwindow", "<script type='text/javascript'>alertwindow('Registration successful. Thank you for your registration. The mail related to your seat confirmation and logistics will be sent to you shortly.');</script>");
                //}
                //else
                //{
                //    //Response.Write("<script language='javascript'>alert('There were some errors sending unsuccessfull. Thankyou for showing interest, kindly requote again.');</script>");
                //    resultLabel.Text = "Mail was not successful";
                //}
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                resultLabel.Text = ex.ToString();
            }
        }
    }
    protected void resetValues()
    {
        NameTextBox.Text = "";
        DesignationTextBox.Text = "";
        CompanyTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
        WebsiteTextBox.Text = "";
        MessageTextBox.Text = "";
    }
    public void sendmailhere(string name, string from, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req_c@mbs_123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(to);
        msg.CC.Add(cc);
        msg.Subject = "Request from " + name;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        client.Send(msg);
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        resetValues();
    }
}