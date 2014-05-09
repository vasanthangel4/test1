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

public partial class Financial_Audit_Poll_US : System.Web.UI.Page
{
    int totalscore, count;
    bool mybool;
    string score1, score2, score3, message, answersheet;
    string name;
    string company;
    string contact;
    string email;
    string from;
    string to;
    string cc;
    string formname;
    string website;
    DateTime requestdate;
    webclass myclass = new webclass();
    CRMServiceReference.Service1Client client = new Service1Client();

    protected void Page_Load(object sender, EventArgs e)
    {
        name = NameTextBox.Text;
        company = CompanyTextBox.Text;
        //contact = Convert.ToInt16(ContactTextBox.Text);
        email = MailTextBox.Text;
        from = "request@cembs.com";
        to = "michael.vana@cembs.com";
        cc = "arokia@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Financial Self-Audit";


        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "success")
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "<script type='text/javascript'>myalert('Thank you');</script>");
                Response.Redirect("~/Index.aspx");
            }
        }
    }
    
}