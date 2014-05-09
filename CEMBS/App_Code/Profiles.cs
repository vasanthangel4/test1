using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Profiles
/// </summary>
public class Profiles
{
    public string Name;
    public string Mail;
    public string Contact;
    public string Message;
    public string ProfileURL;
    public DateTime AppliedDate;

    public string NameField { get; set; }
    public string MailField { get; set; }
    public string ContactField { get; set; }
    public string MessageField { get; set; }
    public string ProfileURLField { get; set; }
    public DateTime AppliedDateField { get; set; }
}