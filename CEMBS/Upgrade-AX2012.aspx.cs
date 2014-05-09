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
using System.Globalization;

public partial class Upgrade_AX2012 : System.Web.UI.Page
{
    int totalscore, count;
    bool mybool;
    string score1, score2, score3, message, answersheet;
    string firstname;
    string name;
    string company;
    string contact;
    string email;
    string from;
    string to;
    string cc;
    string formname;
    string question;
    string website = "";
    DateTime requestdate;

    webclass myclass = new webclass();
    //CEMServiceReference.IcemserviceClient client = new IcemserviceClient();
    CRMServiceReference.Service1Client client = new Service1Client();
    InbuiltServiceClient client1 = new InbuiltServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {        
        from = "request@cembs.com";
        to = "michael.vana@cembs.com ";
        cc = "arokia@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "upgrade AX2012 Landing Page";
    }
    
    protected void submit_Click(object sender, EventArgs e)
    {
        name = StringExtensions.InitCap(NameTextBox.Text);
        company = CompanyTextBox.Text;
        contact = ContactTextBox.Text;
        email = MailTextBox.Text;
        question = QuestionTextBox.Text;
        sendmail();
    }
    protected void sendmail()
    {
        if (website == null)
        {
            website = string.Empty;
        }
        //creating object of mailclass from mailclass.cs
        string Automessage = "Dear " + name + ".<br/><br/>Thank you for your interest in upgrading to AX2012. A representative will contact you shortly. If you want to reach us immediately, please don’t hesitate to call or email me.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";

        client1.mailquotenewAsync(name, to, cc, "", company, contact, "", email, question, requestdate, formname);
        client1.AutomessageAsync(email, name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(name, "", company, contact, "", email, "visitor", requestdate, formname);
        client.GetDataAsync("visitor", name, company, email, contact, website);
        Response.Redirect("http://www.cembs.com");
    }
}