using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Compression;

public partial class master_Careers : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext context = HttpContext.Current;
        context.Response.Filter = new GZipStream(context.Response.Filter, CompressionMode.Compress);
        HttpContext.Current.Response.AppendHeader("Content-encoding", "gzip");
        HttpContext.Current.Response.Cache.VaryByHeaders["Accept-encoding"] = true;
    }
}
