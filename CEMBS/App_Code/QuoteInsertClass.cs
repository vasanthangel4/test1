using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuoteInsertClass
/// </summary>
public class QuoteInsertClass
{
    private string name;
    private string designation;
    private string company;
    private string contact;
    private string website;
    private string email;
    private string message;
    private DateTime requestdate;
    private string formname;


    public string nameField
    {
        get { return name; }
        set { name = value; }
    }

    public string designationField
    {
        get { return designation; }
        set { designation = value; }
    }

    public string companyField
    {
        get { return company; }
        set { company = value; }
    }

    public string contactField
    {
        get { return contact; }
        set { contact = value; }
    }

    public string websiteField
    {
        get { return website; }
        set { website = value; }
    }

    public string emailField
    {
        get { return email; }
        set { email = value; }
    }

    public string messageField
    {
        get { return message; }
        set { message = value; }
    }

    public DateTime requestdateField
    {
        get { return requestdate; }
        set { requestdate = value; }
    }

    public string formnameField
    {
        get { return formname; }
        set { formname = value; }
    }
}
