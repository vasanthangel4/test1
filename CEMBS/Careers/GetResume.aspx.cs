using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Careers_GetResume : System.Web.UI.Page
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Jobuser"] == null)
        {
            Response.Redirect("AdminPosting.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getProfiles(NameText.Text, EmailText.Text);
    }
    protected void getProfiles(string name, string email)
    {
        var query = from data in db.Profiles.Where(d => d.Name.Contains(firstname(name)) || d.Name == name || d.Email == email)
                    select data;
        GridView1.DataSourceID = null;
        GridView1.DataSource = query;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HtmlAnchor resumelink = (HtmlAnchor)e.Row.FindControl("downloadlink");
            string[] linkparts = resumelink.HRef.Split('/');
            string createlink = linkparts[1] + "/" + linkparts[2];
            resumelink.HRef = createlink;

            Label date = (Label)e.Row.FindControl("Date");
            DateTime thisdate = Convert.ToDateTime(date.Text);
            date.Text = thisdate.ToShortDateString();
        }
    }
    protected string firstname(string name)
    {
        string[] nameparts;
        string myname;
        nameparts = name.Split(' ');
        myname = nameparts[0];
        return myname;
    }
    protected string lastname(string name)
    {
        string[] nameparts;
        string myname;
        nameparts = name.Split(' ');
        myname = nameparts[1];
        return myname;
    }
}