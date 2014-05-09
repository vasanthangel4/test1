using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
/// <summary>
/// Summary description for helper
/// </summary>
public class helper
{
	public helper()
	{
	}
    public static string SplitWords(string words)
    {
        string myvalue = string.Empty;
        string[] nameparts = words.Split(',');
        foreach (var items in nameparts)
        {
            myvalue = items.ToString();
        }
        return myvalue;
    }
}