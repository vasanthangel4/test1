using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Careers_CurrentOpportunities : System.Web.UI.Page
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    string SelectedCategory;
    string SelectedPost;
    DateTime startdate;
    DateTime enddate;
    DateTime today = System.DateTime.Now;
    DateTime yesterday = System.DateTime.Now.AddDays(-1);
    DateTime sevenday = System.DateTime.Now.AddDays(-6);
    DateTime twoweeks = System.DateTime.Now.AddDays(-13);
    DateTime onemonth = System.DateTime.Now.AddMonths(-1);
    DateTime twomonths = System.DateTime.Now.AddMonths(-2);
    DateTime threemonths = System.DateTime.Now.AddMonths(-3);
    //string experience;

    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["post"] = posts_lists.SelectedItem.Text;
        if (!IsPostBack)
        {
            posts_lists.Enabled = false;
        }
        else
        {
            if (categories_list.SelectedItem.Text == "Relevance by Categories")
            {
                posts_lists.Enabled = false;
            }
            else
            {
                posts_lists.Enabled = true;
            }
        }
    }
    protected void BindJobs_Categories(string category)
    {
        var query = from data in db.JobOpenings
                    where data.Category == category
                    select new
                    {
                        data.JobID,
                        data.JobTitle,
                        career = data.MinimumExperience + "-" + data.MaximumExperience + " years",
                        data.Location,
                        data.Skills,
                        data.JD,
                        data.MinimumExperience,
                        data.MaximumExperience,
                        data.PostedDate,
                        data.Category
                    };
        Jobs_Grid.DataSourceID = null;
        Jobs_Grid.DataSource = query;
        Jobs_Grid.DataBind();
    }
    protected void BindSelectedPosts(DateTime startdate, DateTime enddate, string mycategory)
    {
        startdate = Convert.ToDateTime(startdate.ToShortDateString());
        enddate = Convert.ToDateTime(enddate.ToShortDateString());

        var query = from data in db.proc_SelectJobs_Date(startdate, enddate, categories_list.SelectedItem.Text)
                    orderby data.JobID descending
                    select new
                    {
                        data.JobID,
                        data.JobTitle,
                        career = data.MinimumExperience + "-" + data.MaximumExperience + " years",
                        data.Location,
                        data.Skills,
                        data.JD,
                        data.MinimumExperience,
                        data.MaximumExperience,
                        data.PostedDate,
                        data.Category
                    };
        Jobs_Grid.DataSourceID = null;
        Jobs_Grid.DataSource = query.ToList();
        Jobs_Grid.DataBind();
    }
    protected void BindSevenDays()
    {
        //var query = from data in db.proc_SelectJobs_Date(Convert.ToDateTime(sevenday.ToShortDateString()),Convert.ToDateTime(today.ToShortDateString()))
        //            select new
        //            {
        //                data.JobTitle ,
        //                career = data.MinimumExperience + "-" + data.MaximumExperience + " years" ,
        //                data.Location ,
        //                data.Skills ,
        //                data.JD ,
        //                data.MinimumExperience ,
        //                data.MaximumExperience ,
        //                data.PostedDate ,
        //                data.Category
        //            };
        var query = from data in db.JobOpenings
                    where data.PostedDate >= Convert.ToDateTime(sevenday.ToShortDateString()) && data.PostedDate <= Convert.ToDateTime(today.ToShortDateString())
                    select new
                    {
                        data.JobTitle,
                        career = data.MinimumExperience + "-" + data.MaximumExperience + " years",
                        data.Location,
                        data.Skills,
                        data.JD,
                        data.MinimumExperience,
                        data.MaximumExperience,
                        data.PostedDate,
                        data.Category
                    };
        Jobs_Grid.DataSource = query;
        Jobs_Grid.DataBind();
    }
    protected void categories_list_SelectedIndexChanged(object sender, EventArgs e)
    {
        SelectedCategory = categories_list.SelectedItem.Text;
        //Session["selectedcategory"] = categories_list.SelectedItem.Text;
        SelectedPost = ViewState["post"].ToString();
        if (categories_list.SelectedItem.Text == "Relevance by Categories")
        {
            Session.Abandon();
            Session.Clear();
            posts_lists.Enabled = false;
            //BindJobs_Categories("no results");
        }
        else
        {
            BindJobs_Categories(categories_list.SelectedItem.Text);
            posts_lists.Enabled = true;
        }
    }

    protected void PostsSelected(object sender, EventArgs e)
    {
        SelectedPost = posts_lists.SelectedItem.Text;
        //ViewState["post"] = posts_lists.SelectedItem.Text;
        switch (SelectedPost)
        {
            case "Today":
                startdate = today;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "Yesterday":
                startdate = yesterday;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "7 Days":
                startdate = sevenday;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "2 Weeks":
                startdate = twoweeks;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "1 Month":
                startdate = onemonth;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "2 Month":
                startdate = twomonths;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;

            case "3 Month":
                startdate = threemonths;
                enddate = today;
                BindSelectedPosts(startdate, enddate, categories_list.SelectedItem.Text);
                break;
        }

    }
    protected void JobsSearchButton_Click(object sender, ImageClickEventArgs e)
    {
        if (categories_list.Items[0].Selected == true)
        {
            ShowJobsBySearch();
        }
        else
        {
            posts_lists.SelectedValue = posts_lists.Items[0].Text;
            posts_lists.Enabled = false;
        }
    }
    protected void ShowJobsBySearch()
    {
        //string jobtitle = JobTitleText.Text;
        //string skillset = SkillsText.Text;
        //string location;
        //if (LocationText.Text != string.Empty)
        //{
        //    location = LocationText.Text;
        //}
        //else
        //{
        //    location = "nothing";
        //}
        //string category;
        //experience = ExperienceText.Value;
        //if (categories_list.Items[0].Selected == false)
        //{
        //    category = categories_list.SelectedItem.Text;
        //}
        //else
        //{
        //    category = "nothing";
        //}
        //var searchskills = from data in db.proc_searchjobs_skills(jobtitle , skillset , experience , location , category)
        //                   select new
        //                   {
        //                       data.JobID ,
        //                       data.JobTitle ,
        //                       career = data.MinimumExperience + "-" + data.MaximumExperience + " years" ,
        //                       data.Location ,
        //                       data.Skills ,
        //                       data.JD ,
        //                       data.MinimumExperience ,
        //                       data.MaximumExperience ,
        //                       data.PostedDate ,
        //                       data.Category
        //                   };
        //Jobs_Grid.DataSourceID = null;
        //Jobs_Grid.DataSource = searchskills;
        //Jobs_Grid.DataBind();
    }
    protected void BindAllJobs()
    {
        var query = from data in db.JobOpenings orderby data.JobID descending select data;
        Jobs_Grid.DataSourceID = null;
        Jobs_Grid.DataSource = query;
        Jobs_Grid.DataBind();
    }
    //protected void BindAllJobCategories()
    //{
    //    categories_list.DataSource = from data in db.JobCategories select data;
    //    categories_list.DataTextField = "JobCategory1";
    //    categories_list.DataValueField = "ID";
    //    categories_list.DataBind();
    //}
    protected void OnEventFired(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "apply")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow Row = Jobs_Grid.Rows[rowindex];
            Label jobid = (Label)Row.FindControl("myjobid");
            //Response.Write(lbl.Text);
            //Session["jobid"] = jobid.Text;
            ResetAllValues();
            BindAllJobs();
            //Response.Write("<script type='text/javascript'>alert('hi');</script>");            
            string url = "SubmitProfile.aspx?jobid=" + jobid.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "OpenWin", "<script type='text/javascript'>openNewWin('" + url + "')</script>");
            //Response.Write("<script type='text/javascript'>window.open('SubmitProfile.aspx?arg=" + e.CommandName + "','_new');</script>");
        }
    }
    protected void ResetAllValues()
    {
        categories_list.SelectedValue = categories_list.Items[0].Text;
        //JobTitleText.Text = string.Empty;
        //SkillsText.Text = string.Empty;
        //ExperienceText.Value = string.Empty;
        //LocationText.Text = string.Empty;
    }
    protected void Jobs_Grid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label min = (Label)e.Row.FindControl("min");
            Label max = (Label)e.Row.FindControl("max");
            Label career = (Label)e.Row.FindControl("career");
            if (min.Text == max.Text)
            {
                career.Text = max.Text + "+ years";
            }
        }
    }
}