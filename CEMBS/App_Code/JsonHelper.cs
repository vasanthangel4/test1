﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for JsonHelper
/// </summary>
public static class JsonHelper
{
    public static string ToJson(this object obj)
    {
        var serializer = new JavaScriptSerializer();
        return serializer.Serialize(obj);
    }

    public static string ToJson(this object obj, int recursionDepth)
    {
        var serializer = new JavaScriptSerializer();
        serializer.RecursionLimit = recursionDepth;
        return serializer.Serialize(obj);
    }
}