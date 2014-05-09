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

public partial class Financial_Audit_Poll : System.Web.UI.Page
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

    string countrycode, countryname;
    static public string GetCountry()
    {
        return new WebClient().DownloadString("http://j.maxmind.com/app/country.js");
    }

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

        #region Ip Redirect for countries
        if (myclass.USRedirect() == true)
        {
            Server.Transfer("~/Financial-Audit-Poll.aspx");
        }
        /* ----- United states users -------------- */
        //countryname = GetCountry().ToString().Split('{')[2].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countryname = countryname.Remove(countryname.Length - 1);
        //countrycode = GetCountry().ToString().Split('{')[1].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countrycode = countrycode.Remove(countrycode.Length - 1);
        //if (countrycode == "US" || countryname == "United States")
        //{
        //    Server.Transfer("~/Financial-Audit-Poll-US.aspx");
        //}
        /* ------ End United States---------------- */

        /* ----- Gulf -------------- */
        //countryname = GetCountry().ToString().Split('{')[2].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countryname = countryname.Remove(countryname.Length - 1);
        //countrycode = GetCountry().ToString().Split('{')[1].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countrycode = countrycode.Remove(countrycode.Length - 1);
        //if (countrycode == "IN")
        //{
        //    //Response.Redirect("http://www.cembs.com");
        //}
        /* ------ End Gulf---------------- */

        #endregion

        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "success")
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "changecountry", "<script type='text/javascript'>changecountry();</script>");
                Response.Redirect("~/Index.aspx");
            }
        }
    }
    protected void USRedirect()
    {
        char[] delimiterChars = { ' ', ',', '.', ':', '\t', '(', ')' };
        string ipAddress;
        String strHostName = HttpContext.Current.Request.UserHostAddress.ToString();
        ipAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();

        string[] words = GetApiCountry(ipAddress).Split(delimiterChars);
        countryname = (words[2] + words[3]).ToLower();
        countrycode = words[5];

        if (countryname == "unitedstates")
        {
            Response.Redirect("http://us.cembs.com");
        }
    }
    protected string GetApiCountry(string ip)
    {
        return new WebClient().DownloadString("http://api.hostip.info/get_html.php?ip=" + ip + "&position=true");
    }
}