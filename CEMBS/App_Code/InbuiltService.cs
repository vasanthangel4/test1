using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Activation;
using System.Net.Mail;


// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "InbuiltService" in code, svc and config file together.

[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class InbuiltService : IInbuiltService
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    webclass wb = new webclass();
    public void InsertEventRegistrations(string Customername, string Designation, string Company, string Contact, string Website, string Email, string Message, DateTime RequestDate, string FormName)
    {
        db.proc_ins_eventregistrations(Customername, Designation, Company, Contact, Website, Email, Message, RequestDate, FormName);
        db.SubmitChanges();
    }

    public void EventRegMail(string name, string from, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        webclass.mail_eventreg(name, from, to, cc, designation, company, contact, website, email, message, requestdate, formname);
    }
    public void CloudMail(string name, string from, string to, string cc, string contact, string email, string message, DateTime requestdate, string formname)
    {
        webclass.mail_cloud_quote(name, to, contact, "", email, message, requestdate, formname);
    }
    public void mailquotenew(string name, string to, string cc, string designation, string company, string contact, string website,string email, string message, DateTime requestdate, string formname)
    {
        webclass.mail_quotenew(name, cc, to, "", company, contact, website, email, message, requestdate, formname);
    }
    public void Automessage(string to, string name, string company,string message)
    {
        webclass.AutoMessage_customer(to, name, company, message);
    }
    public void InsertQuote(string name, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        wb.InsertQuote(name, designation, company, contact, website, email, message, requestdate, formname);
    }
    public void maildownloads(string name, string to, string cc, string displayname, string email, string downloadedfile, DateTime requestdate, string formname)
    {
        webclass.mail_downloads(name, to, cc, displayname, email, downloadedfile, requestdate, formname);
    }
}
