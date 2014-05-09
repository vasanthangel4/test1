using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userdownloads : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["visitor"] == null)
        {
            Response.Redirect("Download-CaseStudies.aspx");
        }
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "alertme", "<script type='text/javascript'>alertme();</script>");
        //}
    }
}