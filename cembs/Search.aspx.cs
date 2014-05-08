using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    protected void Page_Load(object sender , EventArgs e)
    {
        string keyword = Request.QueryString["keywords"];
        if (keyword != "Empty Input")
        {
            var query = db.proc_search(keyword);
            int count_results = (db.proc_search(keyword)).Count();
            results.Text = Convert.ToString(count_results) + " Results for " + "'" + keyword + "'";
            SearchList.DataSource = query;
            SearchList.DataBind();
        }
        else
        {
            var query = db.proc_search(keyword);
            results.Text = "No Results for your empty input";
            SearchList.DataSource = query;
            SearchList.DataBind();
        }
    }
}