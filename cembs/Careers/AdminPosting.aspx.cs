using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Careers_AdminPosting : System.Web.UI.Page
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    protected void Page_Load(object sender , EventArgs e)
    {
        if (!IsPostBack && !IsCrossPagePostBack)
        {
            Session.Abandon();
            Session.Clear();
            Session.Contents.Remove("Jobuseruser");
        }
    }
    private bool IsvalidUser(string userName , string password)
    {
        var login_query = from p in db.JobAdmins
                          where p.JobAdmin1.Equals(userName) && p.JobPassword.Equals(password)
                          select p;
        if (login_query.Any())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void login_btn_Click(object sender , EventArgs e)
    {
        if (IsvalidUser(username_txt.Text , password_txt.Text))
        {
            Session["Jobuser"] = username_txt.Text;
            string adminpage = "JobPost.aspx";
            Response.Redirect(adminpage);
        }
        else
        {
            response.Text = "Please provide correct credentials";
        }
    }
}