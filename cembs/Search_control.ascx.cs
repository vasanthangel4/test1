using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Search_control : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //search_txt.Attributes.Add("onfocus" , "setBlur()");
    }
    protected void search_btn_Click(object sender, EventArgs e)
    {

        //Response.ContentType = "text/HTML";
        string keywords;
        if (search_txt.Text != string.Empty)
        {
            keywords = search_txt.Text;
            Response.Redirect("Search.aspx?keywords=" + keywords);
        }
        else if (search_txt.Text == null)
        {
            keywords = "Empty Input";
            Response.Redirect("Search.aspx?keywords=" + keywords);
        }
        else
        {
            keywords = "Empty Input";
            Response.Redirect("Search.aspx?keywords=" + keywords);
        }
    }
}