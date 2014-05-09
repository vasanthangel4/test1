<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cem_news.aspx.cs" Inherits="achievements_section_achievements" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- ticker-->
    <link href="../Styles/cem_styles.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="styles/ticker-style.css" rel="stylesheet" type="text/css" />
    <script src="includes/site.js" type="text/javascript"></script>
    <script src="includes/jquery.ticker.js" type="text/javascript"></script>
    <!-- end ticker -->
    <style type="text/css">
        #ticker-wrapper-1343116131710 .whitefont:hover
        {
            color: #000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="footer">
        <div class="news">
            <ul id="js-news" class="js-hidden">
                <li class="news-item">CEM has been awarded with 2012 Microsoft President’s Club award
                    at WPC – Toronto in July. We did it again..</li>
                <li class="news-item"><a href="../Convergence.aspx" class="whitefont" style="color: #fff;"
                    target="_parent">CEM at Convergence 2012 – Houston</a></li>
                <li class="news-item"><a href="../Gallery.aspx" class="whitefont" style="color: #fff;"
                    target="_parent">CEM participated in WPC 2012 – Toronto</a></li>
                <li class="news-item">Further updates are coming soon!</li>
            </ul>
            <noscript>
                <h1>
                    CEM News</h1>
                <ul id="no-js-news">
                    <li class="news-item">CEM has been awarded with 2012 Microsoft President’s Club award
                        at WPC – Toronto in July. We did it again..</li>
                    <li class="news-item"><a href="#" class="whitefont" style="color: #fff;">CEM at Convergence
                        2012 – Houston</a></li>
                    <li class="news-item"><a href="#" class="whitefont" style="color: #fff;">CEM participated
                        in WPC 2012 – Toronto</a></li>
                    <li class="news-item">Further updates are coming soon!</li>
                </ul>
            </noscript>
        </div>
    </div>
    </form>
</body>
</html>
