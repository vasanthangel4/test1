<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Services_sharepoint.aspx.cs" Inherits="Services_sharepoint" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%--<%@ Register TagName="services" TagPrefix="services_crm" Src="~/Services_CRM.ascx" %>--%>
<%@ Register TagName="services" TagPrefix="sharepoint" Src="~/SharePoint.ascx" %>
<%@ Register TagName="services" TagPrefix="projectserver" Src="ProjectServer.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>SharePoint Services India | Microsoft share point 2010 | Windows SharePoint</title>
<meta name="description" content=" MS share point 2010 help your company to quickly respond to changing business needs. SharePoint 2010 helps you reduce costs by consolidating intranet, extranet, and internet sites on a single platform-on-premises or on cloud"/>
<meta name="keywords" content=" SharePoint Services India | Microsoft share point 2010 UAE | Windows SharePoint Services"/>
<meta name="robots" content="index, follow"/>
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li.activetab").addClass("active").show(); //Activate first tab
            $(".tab_content:#tab2").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content
                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active content
                return false;
            });

        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/sharepoint.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <a href="MS_Dynamics_ERP.aspx" class="tablinks">MS Dynamics ERP</a>
                <a href="Services_CRM.aspx" class="tablinks">MS Dynamics CRM</a>
                <a href="Staffing.aspx" class="tablinks">MS Dynamics Staffing</a> <a href="UnderConstruction.aspx"
                    class="tablinks">MS Dynamics Outsourcing</a>
                <li class="activetab"><a href="#tab2">MS SharePoint</a></li>
                <a href="Services_project.aspx" class="tablinks">MS Project Server</a>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                  
                </div>
                <div id="tab2" class="tab_content">
                    <sharepoint:services ID="sharepoint" runat="server" />
                </div>
                <div id="tab3" class="tab_content">
                    <projectserver:services ID="project" runat="server" />
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
