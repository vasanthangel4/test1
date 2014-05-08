using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;


public class loghelper
{
    public static void WriteLog(string message, string path)
    {
        using (StreamWriter sw = new StreamWriter(path, true))
        {
            sw.WriteLine("Logged at " + DateTime.Now.ToString() + " " + message);
        }

    }

}