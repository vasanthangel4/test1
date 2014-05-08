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
using CRMServiceReference;
using InbuiltServiceReference;

public partial class Financial_ScoreCard : System.Web.UI.Page
{
    string[] MyAnswers;
    string name, company, mail, answersheet, message;
    int total, totalscore, count;
    bool mybool;
    string q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14;
    string contact;
    string email;
    string from;
    string to;
    string cc;
    string formname;
    string website;
    DateTime requestdate;
    webclass myclass;

    InbuiltServiceClient client1 = new InbuiltServiceClient();
    CRMServiceReference.Service1Client client = new Service1Client();

    protected void Page_Load(object sender, EventArgs e)
    {
        from = "request@cembs.com";
        to = "michael.vana@cembs.com";
        cc = "arokia@cembs.com";
        requestdate = System.DateTime.Now;
        formname = "Financial Self-Audit";


        //int t = 0;
        MyAnswers = Request.QueryString["Answers"].ToString().Split(',');
        //foreach (var items in MyAnswers)
        //{
        //    total += Convert.ToInt32(items);
        //    answersheet += "Q" + Convert.ToInt32(++t) + "- " + items + "<br />";
        //    //q2 = items[items.Length - 2].ToString();
        //    //q3 = items[items.Length - 3].ToString();
        //    //q3 = items[t].ToString();
        //    //Response.Write();
        //}

        for (int i = 0; i < MyAnswers.Length; i++)
        {
            total += Convert.ToInt32(MyAnswers[i]);
            answersheet += "Q" + Convert.ToInt32(i + 1) + "- " + MyAnswers[i] + "<br />";
            q1 = MyAnswers[0];
            q2 = MyAnswers[1];
            q3 = MyAnswers[2];
            q4 = MyAnswers[3];
            q5 = MyAnswers[4];
            q6 = MyAnswers[5];
            q7 = MyAnswers[6];
            q8 = MyAnswers[7];
            q9 = MyAnswers[8];
            q10 = MyAnswers[9];
            q11 = MyAnswers[10];
            q12 = MyAnswers[11];
            q13 = MyAnswers[12];
            q14 = MyAnswers[13];
        }

        if (total >= 14 && total <= 20)
        {
            score.InnerHtml = "Your score is " + total + ". <br />Therefore, Your current ERP system is probably adequate.";
        }
        else if (total >= 21 && total <= 25)
        {
            score.InnerHtml = "Your score is " + total + ". <br />Therefore, You might want to begin thinking about a new ERP system.";
        }
        else if (total >= 26 && total <= 34)
        {
            score.InnerHtml = "Your score is " + total + ". <br />Therefore, You would probably benefit from a new ERP system.";
        }
        else
        {
            score.InnerHtml = "Please answer all the questions";
        }

        name = Request.QueryString["Name"].ToString();
        company = Request.QueryString["Company"].ToString();
        mail = Request.QueryString["Mail"].ToString();
        if (!Page.IsPostBack)
        {
            DataUpoad();
        }
    }
    protected void DataUpoad()
    {
        contact = "";
        string Automessage = "Dear " + name + ".<br/><br/>Congratulations! You’ve been entered into this month’s sweepstakes drawing for an iPad Mini. Winners will be picked at random and notified by email.<br/><br/>Best regards<br/>Michael Vana <br/>Marketing Director <br/>CEM Business Solutions <br/>michael.vana@cembs.com <br/>(201) 391-5345 ";

        client1.mailquotenewAsync(name, cc, to, "", company, contact, website, mail, message, requestdate, formname);
        client1.AutomessageAsync(mail, name, "CEM Business Solutions", Automessage);
        try
        {
            client1.InsertQuoteAsync(name, "", company, contact, "", mail, answersheet, requestdate, formname);
        }
        catch (Exception ex)
        {

            ex.ToString();
        }
        string m = client.getFinancialData(name, company, email, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14);
    }
}