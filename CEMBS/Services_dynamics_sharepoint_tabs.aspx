<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services_dynamics_sharepoint_tabs.aspx.cs"
    Inherits="Services_dynamics_sharepoint_tabs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- ajax tabs -->
    <link href="Styles/tabmenu.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="Scripts/uiTabsFirstItem.js" type="text/javascript"></script>
    <!-- end ajax tabs -->
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="width: 550px; min-height: 230px; height: auto;">
        <ul class="tabs">
            <%--</div>--%>
            <li><a href="#tab1">Sites</a></li>
            <li><a href="#tab2">Communities</a></li>
            <li><a href="#tab3">Search</a></li>
            <li><a href="#tab4">Content</a></li>
            <li><a href="#tab5">Insights</a></li>
            <li><a href="#tab6">Composites</a></li>
        </ul>
        <div class="tab_container" style="width: 350px;">
            <div id="tab1" class="tab_content">
                <p class="bold">
                    Sites</p>
                <p>
                    SharePoint 2010 Sites provides a single infrastructure for all your business Web
                    sites. Share documents with colleagues, manage projects with partners, and publish
                    information to customers.</p>
            </div>
            <div id="tab2" class="tab_content">
                <p class="bold">
                    Communities</p>
                <p>
                    SharePoint 2010 Communities delivers great collaboration tools—and a single platform
                    to manage them. Make it easy for people to share ideas and work together the way
                    they want.</p>
            </div>
            <div id="tab3" class="tab_content">
                <p class="bold">
                    Search</p>
                <p>
                    SharePoint 2010 Search cuts through the clutter. A unique combination of relevance,
                    refinement, and social cues helps people find the information and contacts they
                    need to get their jobs done.</p>
            </div>
            <div id="tab4" class="tab_content">
                <p class="bold">
                    Content</p>
                <p>
                    SharePoint 2010 Content makes content management easy. Set up compliance measures
                    ”behind the scenes”—with features like document types, retention polices, and automatic
                    content sorting—and then let people work naturally in Microsoft Office.</p>
            </div>
            <div id="tab5" class="tab_content">
                <p class="bold">
                    Insights</p>
                <p>
                    SharePoint 2010 Insights gives everyone access to the information in databases,
                    reports, and business applications. Help people locate the information they need
                    to make good decisions.</p>
            </div>
            <div id="tab6" class="tab_content">
                <p class="bold">
                    Composites</p>
                <p>
                    SharePoint 2010 Composites offers tools and components for creating do-it-yourself
                    business solutions. Build no-code solutions to rapidly respond to business needs</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
