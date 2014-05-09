using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StringExtensions
/// </summary>
public static class StringExtensions
{
    public static string InitCap(this string x)
    {
        string fLetter = string.Empty;
        string remainingLetter = string.Empty;
        if (!string.IsNullOrEmpty(x))
        {
            fLetter = x.Substring(0, 1).ToUpper();
            if (x.Length > 1)
            {
                remainingLetter = x.Substring(1, x.Length - 1);
            }
        }
        return fLetter + remainingLetter;
    }
}