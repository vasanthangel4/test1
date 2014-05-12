using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InbuiltServiceReference;
using CRMServiceReference;

public partial class Dynamics_Workshop_index : System.Web.UI.Page
{
    SubscribeClass sclass = new SubscribeClass();

    string message;
    string formname;
    string website;
    DateTime requestdate;
    string contact;

     webclass myclass = new webclass();
    //CEMServiceReference.IcemserviceClient client = new IcemserviceClient();
    CRMServiceReference.Service1Client client = new Service1Client();
    InbuiltServiceClient client1 = new InbuiltServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        sclass.name = FirstNameTextBox.Text;
        sclass.email = MailTextBox.Text;
        if (CompanyTextBox.Text == null)
        {
            sclass.Company = string.Empty;
        }
        else
        {
            sclass.Company = CompanyTextBox.Text;
        }
        sclass.Designation = string.Empty;
        if (PhoneTextBox.Text == null)
        {
            sclass.phone = string.Empty;
        }
        else
        {
            sclass.phone = PhoneTextBox.Text;
        }
        sclass.FromEmail = "request@cembs.com";
        sclass.ToEmail = "michael.vana@cembs.com";
        sclass.CCEmail = "arokia@cembs.com;srinivasan.b@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Dynamics Workshop Landing Page";
    }

    protected void Fill_Click(object sender, EventArgs e)
    {
        contact = PhoneTextBox.Text;
        //sendmailfill();
    }
    //protected void sendmailfill()
    //{
    //    if (website == null)
    //    {
    //        website = string.Empty;
    //    }
    //    //creating object of mailclass from mailclass.cs
    //    string Automessage = "Dear " + fill_NameTextBox.Text + ".<br/><br/>Thank you for your interest in CEM AX HCM. A representative will contact you shortly. If you want to reach us immediately, please don’t hesitate to call or email me.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";
    //    client1.mailquotenewAsync(fill_NameTextBox.Text, sclass.ToEmail, sclass.CCEmail, fill_CompanyTextBox.Text, fill_PhoneTextBox.Text, "", "", "HCM Landing Page", MessageTextBox.Text, requestdate, formname);
    //    client1.AutomessageAsync(fill_MailTextBox.Text, fill_NameTextBox.Text, "CEM Business Solutions", Automessage);
    //    client1.InsertQuoteAsync(fill_NameTextBox.Text, "", fill_CompanyTextBox.Text, fill_PhoneTextBox.Text, "", fill_MailTextBox.Text, "HCM Landing Page", requestdate, formname);
    //    client.GetDataAsync("HCM Landing Page", fill_NameTextBox.Text, fill_CompanyTextBox.Text, fill_MailTextBox.Text, fill_PhoneTextBox.Text, website);
    //    Response.Redirect("http://www.cembs.com/HCM/Index.aspx?visitor");
    //}
    protected void subscribe_btn_Click(object sender, EventArgs e)
    {
        string Automessage = "Dear " + sclass.name + ".<br/><br/>Thank you for your interest in CEM AX Dynamics Workshop Landing Page. A representative will contact you shortly. If you want to reach us immediately, please don’t hesitate to call or email me.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";

        webclass.mail_quotenew(sclass.name, sclass.ToEmail, sclass.CCEmail, sclass.Designation, sclass.Company, sclass.phone, "", sclass.email, MessageTextBox.Text, requestdate, formname);
        client1.AutomessageAsync(sclass.email, sclass.name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(sclass.name, sclass.Designation, sclass.Company, sclass.phone, "", sclass.email, MessageTextBox.Text, requestdate, formname);
        //client.GetDataAsync("HCM Landing Page", sclass.name, sclass.Company, sclass.email, sclass.phone, website);
        Response.Redirect("http://cembs.com");
    }
}