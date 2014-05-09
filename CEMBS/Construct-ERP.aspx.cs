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

public partial class Construct_ERP : System.Web.UI.Page
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
        NameTxt.Attributes.Add("onblur", "name_blur(this);");
        CompanyTxt.Attributes.Add("onblur", "company_blur(this);");
        MailTxt.Attributes.Add("onblur", "mail_blur(this);");
        PhoneTxt.Attributes.Add("onblur", "phone_blur(this);");

        name = NameTxt.Text;
        company = CompanyTxt.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTxt.Text;
        from = "request@cembs.com";
        to = "michael.vana@cembs.com";
        cc = "arokia@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Construct Landing Page";
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        contact = PhoneTxt.Text;
        sendmail();
    }
    protected void Fill_Click(object sender, EventArgs e)
    {
        contact = PhoneTextBox.Text;
        sendmailfill();
    }

    #region email
    protected void sendmailfill()
    {
        if (website == null)
        {
            website = string.Empty;
        }
        //creating object of mailclass from mailclass.cs
        string Automessage = "Dear " + NameTextBox.Text + ".<br/><br/>Thank you for your interest in CEM AX Construct. A representative will contact you shortly. If you want to reach us immediately, please don’t hesitate to call or email me.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";        
        client1.mailquotenewAsync(NameTextBox.Text, to, cc, CompanyTextBox.Text, PhoneTextBox.Text, "", "", MailTextBox.Text, "visitor", requestdate, formname);
        client1.AutomessageAsync(MailTextBox.Text, NameTextBox.Text, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(NameTextBox.Text, "", CompanyTextBox.Text, PhoneTextBox.Text, "", MailTextBox.Text, "visitor", requestdate, formname);
        //client.GetDataAsync("visitor", NameTextBox.Text, CompanyTextBox.Text, MailTextBox.Text, PhoneTextBox.Text, website);
        Response.Redirect("Construct-ERP?visitor");
    }
    protected void sendmail()
    {
        if (website == null)
        {
            website = string.Empty;
        }
        //creating object of mailclass from mailclass.cs
        string Automessage = "Dear " + name + ".<br/><br/>Thank you for your interest in CEM AX Construct. A representative will contact you shortly. If you want to reach us immediately, please don’t hesitate to call or email me.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";

        client1.mailquotenewAsync(name, to, cc, "", company, contact, "", email, "visitor", requestdate, formname);
        client1.AutomessageAsync(email, name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(name, "", company, contact, "", email, "visitor", requestdate, formname);
        //client.GetDataAsync("visitor", name, company, email, contact, website);
        Response.Redirect("Construct-ERP?visitor");
    }
    #endregion

    protected void resetvalues()
    {
        NameTxt.Text = "";
        CompanyTxt.Text = "";
        //ContactTextBox.Text = "";
        //MailTextBox.Text = "";
        //MessageTextBox.Text = "";
    }
}