using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GzipComp
/// </summary>
public class GzipComp
{
	public GzipComp()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    /// <summary>
    /// Sets up the current page or handler to use GZip through a Response.Filter
    /// IMPORTANT: 
    /// You have to call this method before any output is generated!
    /// </summary>
    public static void GZipEncodePage()
    {
        HttpResponse Response = HttpContext.Current.Response;

        if (IsGZipSupported())
        {
            string AcceptEncoding = HttpContext.Current.Request.Headers["Accept-Encoding"];
            if (AcceptEncoding.Contains("deflate"))
            {
                Response.Filter = new System.IO.Compression.DeflateStream(Response.Filter,
                                           System.IO.Compression.CompressionMode.Compress);
                Response.AppendHeader("Content-Encoding", "deflate");
            }
            else
            {
                Response.Filter = new System.IO.Compression.GZipStream(Response.Filter,
                                          System.IO.Compression.CompressionMode.Compress);
                Response.AppendHeader("Content-Encoding", "gzip");
            }
        }

        // Allow proxy servers to cache encoded and unencoded versions separately
        Response.AppendHeader("Vary", "Content-Encoding");
    }

    /// <summary>
    /// Determines if GZip is supported
    /// </summary>
    /// <returns></returns>
    public static bool IsGZipSupported()
    {
        string AcceptEncoding = HttpContext.Current.Request.Headers["Accept-Encoding"];
        string IsPartial = HttpContext.Current.Request.Headers["x-microsoftajax"];

        if (!string.IsNullOrEmpty(AcceptEncoding) &&
             AcceptEncoding.Contains("gzip") || AcceptEncoding.Contains("deflate"))

            //Just checking to see if this is a partial page update
            //See http://bit.ly/GlHfD for more info.
            if (string.Compare("Delta=true", IsPartial, true) == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        else
        {
            return false;
        }
    }
}