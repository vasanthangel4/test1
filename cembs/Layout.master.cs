using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Compression;

public partial class Layout : System.Web.UI.MasterPage
{
    webclass myclass = new webclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Filter = new GZipStream(Response.Filter,CompressionMode.Compress);
        Response.AddHeader("Content-Encoding", "gzip");
        //if (myclass.USRedirect() == true)
        //{
        //    Response.Redirect("http://us.cembs.com");
        //}
    }
}
