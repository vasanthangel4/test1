<%@ Application Language="C#" %>
<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        //RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes);
        //c.RegisterMyRoutes(System.Web.Routing.RouteTable.Routes);
    }
    // gzip
    //private const string GZIP = "gzip";
    //private const string DEFLATE = "deflate";
    //private static bool IsEncodingAccepted(string encoding)
    //{
    //    HttpContext context = HttpContext.Current;
    //    return context.Request.Headers["Accept-encoding"] != null && context.Request.Headers["Accept-encoding"].Contains(encoding);
    //}
    //void Application_ReleaseRequestState(object sender, EventArgs e)
    //{
    //    HttpApplication app = (HttpApplication)sender;
    //    if (app.Context.CurrentHandler is Page && app.Request["HTTP_X_MICROSOFTAJAX"] == null)
    //    {
    //        if (IsEncodingAccepted(DEFLATE))
    //        {
    //            app.Response.Filter = new System.IO.Compression.DeflateStream(app.Response.Filter, System.IO.Compression.CompressionMode.Compress);
    //            SetEncoding(DEFLATE);
    //        }
    //        else if (IsEncodingAccepted(GZIP))
    //        {
    //            app.Response.Filter = new System.IO.Compression.GZipStream(app.Response.Filter, System.IO.Compression.CompressionMode.Compress);
    //            SetEncoding(GZIP);
    //        }
    //    }
    //}
    //private static void SetEncoding(string encoding)
    //{
    //    HttpContext.Current.Response.AppendHeader("Content-encoding", encoding);
    //}

    //void Application_PreRequestHandlerExecute(object sender, EventArgs e)
    //{
    //    HttpApplication app = sender as HttpApplication;
    //    string acceptEncoding = app.Request.Headers["Accept-Encoding"];
    //    System.IO.Stream prevUncompressedStream = app.Response.Filter;

    //    if (!(app.Context.CurrentHandler is Page ||
    //        app.Context.CurrentHandler.GetType().Name == "SyncSessionlessHandler") ||
    //        app.Request["HTTP_X_MICROSOFTAJAX"] != null)
    //        return;

    //    if (acceptEncoding == null || acceptEncoding.Length == 0)
    //        return;

    //    acceptEncoding = acceptEncoding.ToLower();

    //    if (acceptEncoding.Contains("deflate") || acceptEncoding == "*")
    //    {
    //        // defalte
    //        app.Response.Filter = new System.IO.Compression.DeflateStream(prevUncompressedStream,
    //            System.IO.Compression.CompressionMode.Compress);
    //        app.Response.AppendHeader("Content-Encoding", "deflate");
    //    }
    //    else if (acceptEncoding.Contains("gzip"))
    //    {
    //        // gzip
    //        app.Response.Filter = new System.IO.Compression.GZipStream(prevUncompressedStream,
    //            System.IO.Compression.CompressionMode.Compress);
    //        app.Response.AppendHeader("Content-Encoding", "gzip");
    //    }
    //}
    
    //end gzip

    void Application_BeginRequest(object sender, EventArgs e)
    {
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://cembs.com"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://cembs.com", "http://www.cembs.com"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://cembs.com"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://cembs.com", "http://www.cembs.com"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/index.aspx/") || HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://cembs.com/index.aspx/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Index.aspx/", "http://www.cembs.com"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/index/") || HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://cembs.com/index/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Index/", "http://www.cembs.com"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/awards/") || HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://cembs.com/awards/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Awards/", "http://www.cembs.com/Awards"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/industries.aspx/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/industries.aspx/", "http://www.cembs.com/Idustries.aspx"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/construction.aspx/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Construction.aspx/", "http://www.cembs.com/Construction.aspx"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/contracting.aspx/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Contracting.aspx/", "http://www.cembs.com/Contracting.aspx"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/industries/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Industries/", "http://www.cembs.com/Industries"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/construction-management/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Construction-Management/", "http://www.cembs.com/Construction-Management"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/contract-software/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Contract-Software/", "http://www.cembs.com/Contract-Software"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/524a813d230a91.52700001"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/524a813d230a91.52700001", "http://www.cembs.com"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://www.cembs.com/Financial-Audit-Poll.aspx/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://www.cembs.com/Financial-Audit-Poll.aspx/", "http://www.cembs.com/Financial-Audit-Poll.aspx"));
        }
        if (HttpContext.Current.Request.Url.ToString().ToLower().Contains("http://us.cembs.com/page/about-us/"))
        {
            HttpContext.Current.Response.Status = "301 Moved Permanently";
            HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("http://us.cembs.com/page/About-us/", "http://us.cembs.com/page/About-us"));
        }        
    }
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
