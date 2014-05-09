using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InbuiltServiceReference;
using CRMServiceReference;

public partial class subscribe : System.Web.UI.Page
{
    SubscribeClass sclass = new SubscribeClass();

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
        sclass.name = NameTextBox.Text;
        sclass.email = MailTextBox.Text;
        if (CompanyTextBox.Text == null)
        {
            sclass.Company = string.Empty;
        }
        else
        {
            sclass.Company = CompanyTextBox.Text;
        }
        if (DesignationTextBox.Text == null)
        {
            sclass.Designation = string.Empty;
        }
        else
        {
            sclass.Designation = DesignationTextBox.Text;
        }
        if (PhoneTextBox.Text == null)
        {
            sclass.phone = string.Empty;
        }
        else
        {
            sclass.phone = PhoneTextBox.Text;
        }
        sclass.FromEmail = "request@cembs.com";
        sclass.ToEmail = "aroia@cembs.com";
        sclass.CCEmail = "info@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Subscription Form";
    }
    protected void subscribe_btn_Click(object sender, EventArgs e)
    {
        string Automessage = "Dear " + sclass.name + ".<br/><br/>Thank you for subscribing.<br/><br/>Best regards<br/>Arokia <br/>Project Manager [Social Media] <br/>CEM Business Solutions";

        webclass.mail_quotenew(sclass.name, sclass.ToEmail, sclass.CCEmail, sclass.Designation, sclass.Company, sclass.phone, "", sclass.email, "subscription", requestdate, formname);
        client1.AutomessageAsync(sclass.email, sclass.name, "CEM Business Solutions", Automessage);
        client1.InsertQuoteAsync(sclass.name, sclass.Designation, sclass.Company, sclass.phone, "", sclass.email, "subscription", requestdate, formname);
        client.GetDataAsync("subscription", sclass.name, sclass.Company, sclass.email, sclass.phone, website);
        Response.Redirect("http://cembs.com");
    }
}