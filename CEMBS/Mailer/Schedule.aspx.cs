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
using CRMServiceReference;
using InbuiltServiceReference;

public partial class Mailer_Schedule : System.Web.UI.Page
{
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


    webclass myclass = new webclass();
    //CEMServiceReference.IcemserviceClient client = new IcemserviceClient();
    CRMServiceReference.Service1Client client = new Service1Client();
    InbuiltServiceClient client1 = new InbuiltServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["fn"] != null)
        {
            NameTextBox.Text = Request.QueryString["fn"].ToString();
        }
        if (Request.QueryString["ln"] != null)
        {
            LastnameTextBox.Text = Request.QueryString["ln"].ToString();
        }
        if (Request.QueryString["company"] != null)
        {
            CompanyTextBox.Text = Request.QueryString["company"].ToString();
        }
        if (Request.QueryString["email"] != null)
        {
            MailTextBox.Text = Request.QueryString["email"].ToString();
        }

        name = NameTextBox.Text;
        designation = "";
        company = CompanyTextBox.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTextBox.Text;
        message = "Construct mailer";
        from = "request@cembs.com";
        to = "geetha@cembs.com";
        cc = "arokia@cembs.com";
        requestdate = System.DateTime.Now;
        formname = Request.QueryString["formname"];

        var q = from data in myclass.domains() select data;
        domainlist.DataSource = myclass.domains();
        domainlist.DataBind();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        //sqlcon = new SqlConnection(con_string);
        //sqlcon.Open();

        contact = ContactTextBox.Text;
        sendmail();
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        resetvalues();
    }
    #region email

    protected void sendmail()
    {
        if (website == null)
        {
            website = string.Empty;
        }
        //creating object of mailclass from mailclass.cs
        string Automessage = "Dear " + name + ".<br/>Thanks for providing your interest to meet us at the Microsoft Dynamics AX Industry Summit 2014 Summit! We truly hope to interest and drive you with our unique services and solutions…<br/><br/>Best regards<br/>Geetha<br/>Director, US Operations,<br/>CEM Business Solutions<br/>Email: geetha@cembs.com<br/>(201) 391-5345 <br/>(201) 355-7987<br/><a href='http://www.cembs.com' target='_blank'>www.cembs.com</a>";
        //string image = "Images/cem_logo.jpg";
        formname = "Construct Mailer";
        client1.mailquotenewAsync(name + " " + LastnameTextBox.Text, to, cc, "-", company, contact, website, email, message, requestdate, formname);
        client1.AutomessageAsync(email, name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(name, "", company, contact, "", email, message, requestdate, formname);
        client.GetDataAsync(message, name, company, email, contact, website);
        Response.Redirect("../SuccessPage.aspx");
    }

    #endregion

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        //DesignationTextBox.Text = "";
        CompanyTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
        //MessageTextBox.Text = "";
    }
}