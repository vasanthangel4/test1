using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Compression;
using System.Globalization;
using System.Net;
using System.Web.Script.Serialization;
using System.Runtime.Serialization.Json;
using System.Activities;
using System.IO;
using System.Text;
using System.Xml.Linq;
using System.Xml;

public partial class Default : System.Web.UI.Page
{
    string countrycode, countryname;
    webclass wc = new webclass();
    //static public string GetCountry()
    //{
    //    return new WebClient().DownloadString("http://freegeoip.net/json/");
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.Title = "Microsoft Dynamics Implementation | Dynamics CRM Consultant | SharePoint Services";
        Response.Filter = new GZipStream(Response.Filter, CompressionMode.Compress);
        Response.AddHeader("Content-Encoding", "gzip");
        string country = string.Empty;
        //if (Request.Url.AbsoluteUri.Contains("gulf"))
        //{
        //    //Response.Redirect("http://cembs.com");
        //}
        //else if (wc.USRedirect() == true)
        //{
        //    Response.Redirect("http://us.cembs.com");
        //}

        #region Ip Redirect for countries

        /* ----- United states users -------------- */
        //countryname = GetCountry().ToString().Split('{')[2].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countryname = countryname.Remove(countryname.Length - 1);
        //countrycode = GetCountry().ToString().Split('{')[1].ToString().Split(' ')[2].ToString().Split(';')[0].Remove(0, 1);
        //countrycode = countrycode.Remove(countrycode.Length - 1);

        //countrycode = GetCountry().Split(',')[1].ToString();
        //countrycode = countrycode.Split('"')[3].ToString();
        //if (countrycode == "US")
        //{
        //    Response.Redirect("http://us.cembs.com");
        //}
        //else
        //{
        //    //Response.Redirect("http://www.cembs.com");
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


        //India ip - 27.251.234.34------- US ip - 74.125.45.100
        //ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        //if (ipAddress == "74.125.45.100")
        //{
        //    Response.Redirect("http://us.cembs.com/");
        //}


        //string url = string.Format("http://freegeoip.net/json/");
        //string json;
        //using (WebClient client = new WebClient())
        //{
        //    json = client.DownloadString(url);
        //}
    }
}
