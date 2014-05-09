using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Microsoft_Dynamics_AX_Services : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void submit_Click(object sender, EventArgs e)
    //{
    //    //using (con = cembs_class.connection_global())
    //    //{
    //    //    con.Open();

    //    //}
    //    if (sendmail())
    //    {
    //        resultLabel.Text = "mail sent";
    //    }
    //    else
    //    {
    //        resultLabel.Text = "Mail not sent";
    //    }
    //}
    //protected bool sendmail()
    //{
    //    string name = NameTextBox.Text;
    //    string email = EmailTextBox.Text;
    //    string from = "naresh@cembs.com";
    //    string cc = "naresh@cembs.com";
    //    string comment = "hi";
    //    try
    //    {
    //        cembs_class.mail_axrequest(name, email, from, cc, comment);
    //        return true;
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.ToString());
    //    }
    //    return false;
    //}
}