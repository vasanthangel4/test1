using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Activation;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IInbuiltService" in both code and config file together.
[ServiceContract]
public interface IInbuiltService
{
    [OperationContract(IsOneWay = true)]
    void InsertEventRegistrations(string Customername, string Designation, string Company, string Contact, string Website, string Email, string Message, DateTime RequestDate, string FormName);

    [OperationContract(IsOneWay = true)]
    void EventRegMail(string name, string from, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname);

    [OperationContract(IsOneWay = true)]
    void CloudMail(string name, string from, string to, string cc, string contact, string email, string message, DateTime requestdate, string formname);

    [OperationContract(IsOneWay = true)]
    void mailquotenew(string name, string to, string cc, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname);

    [OperationContract(IsOneWay = true)]
    void Automessage(string to, string name, string company, string message);

    [OperationContract(IsOneWay = true)]
    void InsertQuote(string name, string designation, string company, string contact, string website, string email, string message, DateTime requestdate, string formname);

    [OperationContract(IsOneWay = true)]
    void maildownloads(string name, string to, string cc, string displayname, string email, string downloadedfile, DateTime requestdate, string formname);
}
