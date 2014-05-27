using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for webclass
/// </summary>

public class webclass
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    public webclass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    SqlCommand command = new SqlCommand();
    public static SqlConnection connection_global()
    {
        string con_string = ConfigurationManager.ConnectionStrings["cembs_connectionstring"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(con_string);
        return sqlcon;
    }

    #region email

    public static void testmail(string from, string to, string cc, string name, string mail)
    {
        MailMessage mMailMessage = new MailMessage();
        mMailMessage.From = new MailAddress(from);
        mMailMessage.To.Add(new MailAddress(to));
        mMailMessage.CC.Add(new MailAddress(cc));
        mMailMessage.Subject = "One Comment from " + name + "<" + mail + ">";
        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
        mMailMessage.Body = builder.ToString();

        mMailMessage.IsBodyHtml = true;
        mMailMessage.Priority = MailPriority.Normal;
        SmtpClient mSmtpClient = new SmtpClient();
        mSmtpClient.Host = "pod51021.outlook.com";
        mSmtpClient.Credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123", "www.cembs.com");
        mSmtpClient.Port = 587;
        mSmtpClient.EnableSsl = true;
        mSmtpClient.Send(mMailMessage);
    }

    public static void mail_cloud_quote(string name, string to, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.Subject = "Request from " + name;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            //builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            //builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            //builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            //builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            //builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        client.Send(msg);
    }

    public MailClass mail_cloud(string name, string to, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        MailClass customerDetails = new MailClass();
        customerDetails.nameField = name;
        customerDetails.fromField = "request@cembs.com";
        customerDetails.toField = to;
        //customerDetails.ccField = cc;
        //customerDetails.designationField = designation;
        //customerDetails.companyField = company;
        customerDetails.contactField = contact;
        customerDetails.websiteField = website;
        customerDetails.emailField = email;
        customerDetails.messageField = message;
        customerDetails.requestdateField = requestdate;
        customerDetails.formnameField = formname;


        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.Subject = "Request from " + name;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            //builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            //builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            //builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            //builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            //builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        client.Send(msg);

        return customerDetails;
    }

    public MailClass mail_quote(string name, string to, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        MailClass customerDetails = new MailClass();
        customerDetails.nameField = name;
        customerDetails.fromField = "request@cembs.com";
        customerDetails.toField = to;
        //customerDetails.ccField = cc;
        customerDetails.designationField = designation;
        customerDetails.companyField = company;
        customerDetails.contactField = contact;
        customerDetails.websiteField = website;
        customerDetails.emailField = email;
        customerDetails.messageField = message;
        customerDetails.requestdateField = requestdate;
        customerDetails.formnameField = formname;


        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;



        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.Subject = "Request from " + name;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        client.Send(msg);

        return customerDetails;
    }

    public MailClass mail_quotecc(string name, string cc, string to, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        MailClass customerDetails = new MailClass();
        customerDetails.nameField = name;
        customerDetails.fromField = "request@cembs.com";
        customerDetails.toField = to;
        customerDetails.ccField = cc;
        customerDetails.designationField = designation;
        customerDetails.companyField = company;
        customerDetails.contactField = contact;
        customerDetails.websiteField = website;
        customerDetails.emailField = email;
        customerDetails.messageField = message;
        customerDetails.requestdateField = requestdate;
        customerDetails.formnameField = formname;


        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.CC.Add(new MailAddress(cc));
        msg.Subject = "Request from " + formname;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            //builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            //builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            //builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            //builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            msg.Body = builder.ToString();
        }
        client.Send(msg);

        return customerDetails;
    }

    public static void mail_quotenew(string name, string cc, string to, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        string[] too = to.Split(';');
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(cc.ToString()));
        if (too.Length > 1)
        {
            msg.CC.Add(new MailAddress(too[0].ToString()));
            msg.CC.Add(new MailAddress(too[1].ToString()));
        }
        else
        {
            msg.CC.Add(new MailAddress(to.ToString()));
        }
        msg.Subject = "Request from " + formname;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            //builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            //builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            msg.Body = builder.ToString();
        }
        client.Send(msg);
    }

    public static void QuickContact_Mail(string name, string to, string cc, string phone, string email, string message, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        string[] ccc = cc.Split(';');

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to.ToString()));

        if (ccc.Length > 1)
        {
            msg.CC.Add(new MailAddress(ccc[0].ToString()));
            msg.CC.Add(new MailAddress(ccc[1].ToString()));
        }
        else
        {
            msg.CC.Add(new MailAddress(cc.ToString()));
        }
        msg.Subject = "Request from " + formname;
        msg.IsBodyHtml = true;


        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
        builder.AppendLine("<strong>" + "Contact : " + "</strong>" + phone + "<br />");
        builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
        builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
        //builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
        msg.Body = builder.ToString();

        client.Send(msg);
    }

    public static void mail_downloads(string name, string to, string cc, string displayname, string email, string downloadedfile, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com", displayname);
        msg.To.Add(new MailAddress(to));
        msg.CC.Add(new MailAddress(cc));
        msg.Subject = name.ToUpper() + " has viewed " + "'" + downloadedfile + "'" + " from " + formname;
        msg.IsBodyHtml = true;

        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.AppendLine("<strong>" + "Visitor name : " + "</strong>" + name + "<br />");
        builder.AppendLine("<strong>" + "File name : " + "</strong>" + downloadedfile + "<br />");
        builder.AppendLine("<strong>" + "Email : " + "</strong>" + email);
        msg.Body = builder.ToString();

        client.Send(msg);
    }

    public static void AutoMessage_customer(string to, string customer_name, string company, string message)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        //msg.From = new MailAddress("\"CEM Business Solutions\" <request@cembs.com>");
        msg.To.Add(to);
        msg.Subject = "Response from " + company;
        msg.Body = message;
        msg.IsBodyHtml = true;
        client.Send(msg);
    }

    public static void mail_eventreg(string name, string from, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("request@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.Subject = "Request from " + name;
        msg.IsBodyHtml = true;


        if (website == "")
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        else
        {
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
            builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
            builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
            builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
            builder.AppendLine("<strong>" + "Website : " + "</strong>" + website + "<br />");
            builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
            builder.AppendLine("<strong>" + "Request for : " + "</strong>" + formname + "<br />");
            builder.AppendLine("<strong>" + "Message :" + "</strong>" + message);
            msg.Body = builder.ToString();
        }
        client.Send(msg);
    }

    public static void mail_axrequest(string name, string from, string to, string cc, string designation, string company, string contact, string email, string message)
    {
        MailMessage mMailMessage = new MailMessage();
        mMailMessage.From = new MailAddress(from);
        mMailMessage.To.Add(new MailAddress(to));
        if ((cc != null) && (cc != string.Empty))
        {
            mMailMessage.CC.Add(new MailAddress(cc));
            //mMailMessage.CC.Add(new MailAddress(bcc));
        }
        mMailMessage.Subject = "One Comment from " + name;
        mMailMessage.Body = message;

        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
        builder.AppendLine("<strong>" + "Designation : " + "</strong>" + designation + "<br />");
        builder.AppendLine("<strong>" + "Company : " + "</strong>" + company + "<br />");
        builder.AppendLine("<strong>" + "Contact : " + "</strong>" + contact + "<br />");
        builder.AppendLine("<strong>" + "Email : " + "</strong>" + email + "<br />");
        mMailMessage.Body = builder.ToString();

        mMailMessage.IsBodyHtml = true;
        mMailMessage.Priority = MailPriority.Normal;
        SmtpClient server = new SmtpClient("pod51021.outlook.com");
        server.Credentials = new System.Net.NetworkCredential("request@cembs.com", "req@cembs@123", "www.cembs.com");
        server.Port = 587;
        server.EnableSsl = true;
        server.Send(mMailMessage);
    }
    // mail for blog
    public static void SendMail_blog(string name, string from, string to, string cc, string website, string gotoadmin, string comment)
    {
        MailMessage mMailMessage = new MailMessage();
        mMailMessage.From = new MailAddress(from);
        mMailMessage.To.Add(new MailAddress(to));
        if ((cc != null) && (cc != string.Empty))
        {
            mMailMessage.CC.Add(new MailAddress(cc));
            //mMailMessage.CC.Add(new MailAddress(bcc));
        }
        mMailMessage.Subject = "One Comment from " + name;
        mMailMessage.Body = comment;

        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.AppendLine("<strong>" + "Name : " + "</strong>" + name + "<br />");
        builder.AppendLine("<strong>Website : </strong>" + website + "<br />");
        builder.AppendLine(gotoadmin + "<br/>");
        mMailMessage.Body = builder.ToString();

        mMailMessage.IsBodyHtml = true;
        mMailMessage.Priority = MailPriority.Normal;
        SmtpClient mSmtpClient = new SmtpClient();
        mSmtpClient.Send(mMailMessage);
    }


    #endregion

    #region Insert all requests by quote

    public QuoteInsertClass insert_quote(string name, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        QuoteInsertClass customerDetails = new QuoteInsertClass();
        customerDetails.nameField = name;
        customerDetails.designationField = designation;
        customerDetails.companyField = company;
        customerDetails.contactField = contact;
        customerDetails.websiteField = website;
        customerDetails.emailField = email;
        customerDetails.messageField = message;
        customerDetails.requestdateField = requestdate;
        customerDetails.formnameField = formname;
        db.proc_ins_quote(name, designation, company, contact, website, email, message, requestdate, formname);
        //var savedata = db.proc_ins_quote(customerDetails.nameField , customerDetails.designationField , customerDetails.companyField , customerDetails.contactField , customerDetails.websiteField , customerDetails.emailField , customerDetails.messageField , customerDetails.requestdateField , customerDetails.formnameField);
        //db.Request_quotes.InsertOnSubmit(customerDetails);
        db.SubmitChanges();
        return customerDetails;
    }

    public void InsertQuote(string name, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        QuoteInsertClass customerDetails = new QuoteInsertClass();
        customerDetails.nameField = name;
        customerDetails.designationField = designation;
        customerDetails.companyField = company;
        customerDetails.contactField = contact;
        customerDetails.websiteField = website;
        customerDetails.emailField = email;
        customerDetails.messageField = message;
        customerDetails.requestdateField = requestdate;
        customerDetails.formnameField = formname;
        db.proc_ins_quote(name, designation, company, contact, website, email, message, requestdate, formname);
        //var savedata = db.proc_ins_quote(customerDetails.nameField , customerDetails.designationField , customerDetails.companyField , customerDetails.contactField , customerDetails.websiteField , customerDetails.emailField , customerDetails.messageField , customerDetails.requestdateField , customerDetails.formnameField);
        //db.Request_quotes.InsertOnSubmit(customerDetails);
        db.SubmitChanges();
    }

    #endregion

    #region job portal
    public void applyonline(string to, string cc, string name, string email, string phone, string profileurl, string attachment, string message)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("careers@cembs.com", "Huko04831");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("careers@cembs.com");
        msg.To.Add(new MailAddress(to));
        if ((cc != null) && (cc != string.Empty))
        {
            msg.CC.Add(new MailAddress(cc));
        }
        msg.Subject = "Job Application from " + name;
        Attachment mailattachment = new Attachment(attachment);
        msg.Attachments.Add(mailattachment);
        msg.Body = message;
        msg.IsBodyHtml = true;

        client.Send(msg);
    }

    public void AutoMessage_resumes(string to, string jobseeker_name)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("careers@cembs.com", "Huko04831");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("careers@cembs.com");
        msg.To.Add(new MailAddress(to));
        msg.Subject = "Auto-reply from CEM Business Solutions";
        msg.Body = "Thank you for applying " + jobseeker_name + ". Our HR team will get in touch with you soon.<br/><br/>  CEM Business Solutions<br/>";

        client.Send(msg);
    }
    #endregion

    #region mailservers unofficial

    public List<string> domains()
    {
        List<string> mydomains = new List<string>();
        var domain = from data in db.UnofficialMailServers select data;
        foreach (var items in domain)
        {
            string[] namespart = items.domains.Split('@');
            mydomains.Add(namespart[1]);
        }
        return mydomains;
    }

    public bool IsValidMail(string mailid)
    {
        List<string> mydomains = domains().ToList();
        string[] namespart = mailid.Split('@');
        string SplittedMail = namespart[1];
        var query = from data in mydomains where data.Contains(SplittedMail) select data;
        if (query.Any())
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    #endregion

    public bool USRedirect()
    {
        string countrycode, countryname;
        char[] delimiterChars = { ' ', ',', '.', ':', '\t', '(', ')' };
        string ipAddress;
        String strHostName = HttpContext.Current.Request.UserHostAddress.ToString();
        ipAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();

        string[] words = GetApiCountry(ipAddress).Split(delimiterChars);
        countryname = (words[2] + words[3]).ToLower();
        countrycode = words[5];

        if (countryname == "unitedstates")
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public string GetApiCountry(string ip)
    {
        return new WebClient().DownloadString("http://api.hostip.info/get_html.php?ip=" + ip + "&position=true");
    }
}