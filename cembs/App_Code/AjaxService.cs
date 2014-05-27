using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using CRMServiceReference;
using InbuiltServiceReference;

[ServiceContract(Namespace = "")]
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class AjaxService
{
    helper helper = new helper();
    CRMServiceReference.Service1Client client = new Service1Client();
    InbuiltServiceClient client1 = new InbuiltServiceClient();
    // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
    // To create an operation that returns XML,
    //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
    //     and include the following line in the operation body:
    //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
    [OperationContract]
    public void DoWork()
    {
        // Add your operation implementation here
        return;
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.WrappedRequest, ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
    public string AjaxSendMail(string name, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname)
    {
        // Add your operation implementation here
        webclass.mail_quotenew(name, cc, to, "", company, contact, website, email, message, requestdate, formname);
        return "Success";
    }

    //[OperationContract]
    //[WebInvoke(Method = "POST", RequestFormat = WebMessageFormat.Json)]
    //public string AjaxMail(string name, string contact, string email, string message)
    //{
    //    // Add your operation implementation here
    //    //webclass.mail_quotenew(name, "naresh@cembs.com", "naresh@cembs.com", "", "", contact, "", email, message, System.DateTime.Now, "Quick Contact");
    //    return email;
    //}

    [OperationContract]
    public string PersonTest(string name, string email)
    {
        return (new Person
        {
            name = string.Format("Hello, {0}", name),
            email = string.Format("Email,{0}", email)
        }).ToJson();
    }

    [OperationContract]
    public string AjaxMail_Contact(Person person)
    {
        string Automessage = "Dear " + person.name + ".<br/><br/>Thank you for your interest in CEM! We appreciate your time. We will get back to you shortly.<br/> <br/>CEM Business Solutions<br/>";
        string to, cc;
        to = "arokia@cembs.com";
        cc = "info@cembs.com;srinivasan.b@cembs.com";
        try
        {
            webclass.QuickContact_Mail(person.name, to, cc, person.phone, person.email, person.message, System.DateTime.Now, "Quick Contact");
            webclass.AutoMessage_customer(person.email, person.name, "CEM Business Solutions", Automessage);
            client1.InsertQuoteAsync(person.name, "", "", person.phone, "", person.email, person.message, System.DateTime.Now, "Quick Contact");
            //client.GetDataAsync(person.message, person.name, "", person.email, person.phone, "");
            return (new Person
            {
                name = string.Format("Hello, {0}", person.name)
            }).ToJson();
        }
        catch (Exception ex)
        {
            return ex.ToString().ToJson();
        }
        finally
        {
            to = string.Empty;
            cc = string.Empty; 
            Automessage = string.Empty;
        }
    }
    // Add more operations here and mark them with [OperationContract]
}
