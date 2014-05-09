using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Xml.Linq;
using System.Xml.XPath;
//using CEMServiceReference;
using CRMServiceReference;

public partial class CloudRegistration : System.Web.UI.Page
{
    //SqlConnection sqlcon;
    //SqlCommand cmd;
    string name;
    string designation;
    string company;
    string contact;
    string email;
    string from;
    string to;
    string cc;
    string message;
    string formname;
    string website;
    DateTime requestdate;
    string UpPath = HttpContext.Current.Server.MapPath("~/Data/customers.xml");
    XDocument xmlDoc = null;

    webclass myclass = new webclass();
    CRMServiceReference.Service1Client client = new Service1Client();
    //CEMServiceReference.IcemserviceClient client = new IcemserviceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        xmlDoc = XDocument.Load(UpPath);
        name = NameTextBox.Text;
        email = MailTextBox.Text;
        message = MessageTextBox.Text;
        from = "request@cembs.com";
        cc = "ramki@cembs.com";
        to = "vinod@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Cloud services";

        var q = from data in myclass.domains() select data;
        domainlist.DataSource = myclass.domains();
        domainlist.DataBind();

        if (!Page.IsPostBack)
        {
            BindCountrylist();
            country.Items.Insert(0, new ListItem("Select your country", "select your country"));
        }
    }
    public void BindCountrylist()
    {
        string filePath = Server.MapPath("~/Data/country.xml");
        using (DataSet ds = new DataSet())
        {

            ds.ReadXml(filePath);
            country.DataSource = ds;
            country.DataTextField = "name";
            country.DataValueField = "country_id";
            country.DataBind();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        //sqlcon = new SqlConnection(con_string);
        //sqlcon.Open();

        contact = ContactTextBox.Text;
        if (IsPostBack)
        {
            try
            {
                if (sendmail() == true)
                {
                    //resultlabel.Text = "Quote has been successfully sent.<br/>Thankyou for showing interest.";
                    //QuoteInsertClass myquote = new QuoteInsertClass();
                    AddNode();
                    Response.Redirect("SuccessPage.aspx");
                    //myquote = myclass.insert_quote(name , "" , "" , contact , "" , email , message , requestdate , formname);
                    //client.GetData(message, name, company, email, contact, website);
                }
                else
                {
                    Response.Redirect("FailurePage.aspx");
                    //resultlabel.Text = "Sorry mail was not sent. Please try again after sometime";
                }
            }
            catch (Exception ex)
            {
                //resultlabel.Text = ex.ToString();
                Response.Redirect("FailurePage.aspx");
            }
            resetvalues();
        }
    }

    #region email

    protected bool sendmail()
    {
        //creating object of mailclass from mailclass.cs
        MailClass mymail = new MailClass();
        string Automessage = "Thank you for your request " + name + ". We will get back to you shortly";
        //string image = "Images/cem_logo.jpg";
        try
        {
            if (myclass.IsValidMail(MailTextBox.Text) == false)
            {
                if (formname == null || formname == string.Empty)
                {
                    formname = "Cloud Services";
                    //mail_quote_wpc(name , from , to , cc , designation , company , contact , email , message , website);
                    mymail = myclass.mail_cloud(name, to, contact, website, email, message, requestdate, formname);
                    webclass.AutoMessage_customer(email, name, "CEM Business Solutions", Automessage);
                    return true;
                }
                else
                {
                    mymail = myclass.mail_cloud(name, to, contact, website, email, message, requestdate, formname);
                    webclass.AutoMessage_customer(email, name, "CEM Business Solutions", Automessage);
                    return true;
                }
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
            resultlabel.Text = ex.ToString();
            return false;
        }
    }

    #endregion

    protected void resetvalues()
    {
        NameTextBox.Text = "";
        ContactTextBox.Text = "";
        MailTextBox.Text = "";
        MessageTextBox.Text = "";
    }



    protected void reset_Click(object sender, EventArgs e)
    {
        resetvalues();
    }

    protected void AddNode()
    {
        XElement parentXElement = null;
        XElement refXElement = null;
        XElement newXElement = null;
        int nodescount = CountNodes();

        parentXElement = xmlDoc.XPathSelectElement("customers");


        //newXElement.SetAttributeValue("url", parent_url_txt.Text);
        //newXElement.SetAttributeValue("src", "");

        if (nodescount == 0)
        {
            //refXElement = xmlDoc.XPathSelectElement("customers/customer[@id = '1']");
            //refXElement.SetElementValue("name",NameTextBox.Text);
            //refXElement.SetElementValue("designation", DesignationTextBox.Text);

            newXElement = new XElement("customer");
            newXElement.SetAttributeValue("id", (nodescount + 1).ToString());
            newXElement.SetElementValue("name", NameTextBox.Text);
            newXElement.SetElementValue("phone", ContactTextBox.Text);
            newXElement.SetElementValue("country", country.SelectedItem.Text);
            newXElement.SetElementValue("email", MailTextBox.Text);
            newXElement.SetElementValue("subject", SubjectTextBox.Text);
            parentXElement.AddFirst(newXElement);
        }
        else if (nodescount > 0)
        {
            newXElement = new XElement("customer");
            newXElement.SetAttributeValue("id", (nodescount + 1).ToString());
            newXElement.SetElementValue("name", NameTextBox.Text);
            newXElement.SetElementValue("phone", ContactTextBox.Text);
            newXElement.SetElementValue("country", country.SelectedItem.Text);
            newXElement.SetElementValue("email", MailTextBox.Text);
            newXElement.SetElementValue("subject", SubjectTextBox.Text);
            parentXElement.LastNode.AddAfterSelf(newXElement);
        }

        xmlDoc.Save(UpPath);
        string message = "New parent menu added successfully";
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "customalert", "<script type='text/javascript'>customalert('" + message + "')</script>");
    }
    private int CountNodes()
    {
        int totalnodes = (from m in xmlDoc.Descendants("customer") select m).Count();
        return totalnodes;
    }
}