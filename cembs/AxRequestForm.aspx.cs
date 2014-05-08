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
//using CEMServiceReference;

public partial class AxRequestForm : System.Web.UI.Page
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

    //Creating client object for Cemservice
    //IcemserviceClient objserviceClient = new IcemserviceClient();

    webclass myclass = new webclass();

    protected void Page_Load(object sender , EventArgs e)
    {
        formname = "AXUpgrade";
        name = NameTextBox.Text;
        designation = DesignationTextBox.Text;
        company = CompanyTextBox.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTextBox.Text;
        message = MessageTextBox.Text;
        //from = "request@cembs.com";
        cc = "request@cembs.com";
        to = "request@cembs.com";
        website = WebsiteTextBox.Text;
        requestdate = System.DateTime.Now;
    }
    //protected void submit_Click(object sender , EventArgs e)
    //{
    //    //string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
    //    contact = ContactTextBox.Text;
    //    if (IsPostBack)
    //    {
    //        try
    //        {
    //            if (sendmail() == true)
    //            {
    //                resultLabel.Text = "Registration successful.<br/>Thankyou for showing interest.";
    //                QuoteService myquote = new QuoteService();
    //                myquote = objserviceClient.insert_quote(name , designation , company , contact , website , email , message , requestdate , formname);
    //            }
    //            else
    //            {
    //                resultLabel.Text = "Mail was not successful";
    //            }
    //        }
    //        catch (Exception ex)
    //        {
    //            resultLabel.Text = ex.ToString();
    //        }
    //    }
    //}

    protected void submit_Click(object sender , EventArgs e)
    {
        //string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        contact = ContactTextBox.Text;
        if (IsPostBack)
        {
            try
            {
                if (sendmail() == true)
                {
                    resultLabel.Text = "Registration successful.<br/>Thankyou for showing interest.";
                    QuoteInsertClass myquote = new QuoteInsertClass();
                    myquote = myclass.insert_quote(name , designation , company , contact , website , email , message , requestdate , formname);
                    resetvalues();
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
        string Automessage = "Thank you for your request " + name + ". We will get back to you shortly";
        //string image = "Images/cem_logo.jpg";
        try
        {
            //mail_quote_wpc(name , from , to , cc , designation , company , contact , email , message , website);
            mymail = myclass.mail_quote(name , to , designation , company , contact , website , email , message , requestdate , formname);
            webclass.AutoMessage_customer(MailTextBox.Text , name , "CEM Business Solutions" , Automessage);
            return true;
        }
        catch (Exception ex)
        {
            resultLabel.Text = ex.ToString();
            return false;
        }
    }

    #endregion

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        DesignationTextBox.Text = "";
        CompanyTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
        MessageTextBox.Text = "";
    }

    //protected bool sendmail()
    //{
    //    //calling MailService from WCFService
    //    MailService mymail = new MailService();
    //    try
    //    {
    //        //mail_quote_wpc(name , from , to , cc , designation , company , contact , email , message , website);
    //        mymail = objserviceClient.mail_quote(name , from , to , cc , designation , company , contact , website , email , message , requestdate , formname);
    //        return true;
    //    }
    //    catch (Exception ex)
    //    {
    //        resultLabel.Text = ex.ToString();
    //        return false;
    //    }
    //}

}