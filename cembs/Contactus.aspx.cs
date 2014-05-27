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

public partial class Contactus : System.Web.UI.Page
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
        name = NameTextBox.Text;
        designation = DesignationTextBox.Text;
        company = CompanyTextBox.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTextBox.Text;
        message = MessageTextBox.Text + ",Country:" + countrytextbox.Text;
        from = "request@cembs.com";
        to = "arokia@cembs.com";
        cc = "info@cembs.com;srinivasan.b@cembs.com";
        if (WebsiteTextBox.Text == string.Empty)
        {
            website = string.Empty;
        }
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
    #region email

    protected void sendmail()
    {
        if (website == null)
        {
            website = string.Empty;
        }
        //creating object of mailclass from mailclass.cs
        string Automessage = "Dear " + name + ".<br/> <br/>Thank you for your interest in CEM! We appreciate your time. We will get back to you shortly.<br/> <br/>CEM Business Solutions<br/>";

        //string image = "Images/cem_logo.jpg";
        formname = "contact";
        webclass.mail_quotenew(name, to, cc, "", company, contact, website, email, message, requestdate, formname);
        //client1.mailquotenewAsync(name, to, cc, "", company, contact, website, email, message, requestdate, formname);
        client1.AutomessageAsync(email, name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(name, "", company, contact, "", email, message, requestdate, formname);
        //client.GetDataAsync(message, name, company, email, contact, website);
        Response.Redirect("SuccessPage.aspx");
    }

    #endregion

    protected void reset_Click(object sender, EventArgs e)
    {
        resetvalues();
    }

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        DesignationTextBox.Text = "";
        CompanyTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
        MessageTextBox.Text = "";
        countrytextbox.Text = "";
    }
}