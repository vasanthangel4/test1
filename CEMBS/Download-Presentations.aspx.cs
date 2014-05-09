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
using InbuiltServiceReference;
using CRMServiceReference;
//using CEMServiceReference;

public partial class Download_Presentations : System.Web.UI.Page
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
    CRMServiceReference.Service1Client client = new Service1Client();
    InbuiltServiceClient client1 = new InbuiltServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        name = NameTextBox.Text;
        //company = CompanyTextBox.Text;
        email = MailTextBox.Text;
        from = "request@cembs.com";
        to = "arokia@cembs.com";
        cc = "srinivasan.b@cembs.com";
        website = string.Empty;
        requestdate = System.DateTime.Now;
        formname = "downloads/presentation";

        var q = from data in myclass.domains() select data;
        domainlist.DataSource = myclass.domains();
        domainlist.DataBind();

        if (Session["visitor"] != null)
        {
            Server.Transfer("Userdownloads.aspx");
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //contact = ContactTextBox.Text;
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
        string Automessage = "Dear " + name + ".<br/>Thanks a bunch for proving your interest with CEM! <br/><br/>Best regards<br/>Arokia Bakkianathan L<br/>Manager – Social Media<br/>CEM Business Solutions<br/>Email: arokia@cembs.com";
        client1.maildownloadsAsync(name, to, cc, "CEM Business Solutions", email, casestudy.Value, requestdate, formname);
        client1.AutomessageAsync(email, name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(name, "", "", "", "", email, "Case: " + casestudy.Value, requestdate, formname);
        //client.GetDataAsync("Case :"+casestudy.Value, name, "", email, "", website);
        Session["visitor"] = email;
        Server.Transfer("Userdownloads.aspx");
    }
    #endregion

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        //CompanyTextBox.Text = "";
        //ContactTextBox.Text = "";
        MailTextBox.Text = "";
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        resetvalues();
    }
}