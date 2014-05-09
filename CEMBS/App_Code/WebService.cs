using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

[ServiceContract(Namespace = "")]
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class WebService
{
    helperDataClassesDataContext db = new helperDataClassesDataContext();
    // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
    // To create an operation that returns XML,
    //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
    //     and include the following line in the operation body:
    //        WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";

    

    public static List<string> SplitTags(string str)
    {
        List<string> keyword = new List<string>();
        try
        {
            string[] kywd = str.Split(',');
            keyword = kywd.ToList<string>();
            int i = 0;
            foreach (var items in keyword)
            {
                kywd[i++] = items.TrimStart();
            }
            return keyword = kywd.ToList<string>();
        }
        catch (Exception ex)
        {
            return keyword;
        }
    }


    public List<string> MakeTags()
    {
        // select all rows from table "SearchEngine" having keywords
        var query = from data in db.SearchEngines select new { data.keywords };

        // create list name "tags" for adding items
        List<string> tags = new List<string>();
        foreach (var items in query)
        {
            // split the resulting words from rows one by one
            List<string> myitems = SplitTags(items.keywords);
            var distinctList = (from data in myitems select data.ToLowerInvariant()).Distinct();
            tags.AddRange(distinctList);
        }
        return tags;
    }

    [OperationContract]
    [WebGet(ResponseFormat = WebMessageFormat.Json)]
    public IEnumerable<string> keywords(string prefix)
    {
        List<string> _keywords = MakeTags();
        return (from data in _keywords
               group data by data into m
               where m.Key.StartsWith(prefix, StringComparison.InvariantCultureIgnoreCase) && m.Key.Contains(prefix)
               orderby m.Key
               select m.Key).Distinct();
    }

    [OperationContract]
    [WebGet(ResponseFormat = WebMessageFormat.Json)]
    public string AjaxMail(string name)
    {
        // Add your operation implementation here
        //webclass.mail_quotenew(name, cc, to, "", "", contact, "", email, message, requestdate, formname);
        return "Success";
    }



    // Add more operations here and mark them with [OperationContract]
}
