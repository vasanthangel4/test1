<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Services_project.aspx.cs" Inherits="Services_project" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="services" TagPrefix="services_crm" Src="~/ServicesCRM.ascx" %>
<%@ Register TagName="services" TagPrefix="sharepoint" Src="SharePoint.ascx" %>
<%@ Register TagName="services" TagPrefix="projectserver" Src="ProjectServer.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Microsoft project server 2010 India | MS project server 2010 price</title>
<meta name="description" content="Microsoft Project Server 2010 provides unified project and portfolio management to help organizations prioritize investments, align resources and execute projects efficiently and effectively. "/>
<meta name="keywords" content="Microsoft project server 2010 India | MS project server 2010 price in UAE"/>
<meta name="robots" content="index, follow"/>
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li.activetab").addClass("active").show(); //Activate first tab
            $(".tab_content:#tab3").show(); //Show first tab content

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
        <img src="Images/projectserver.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <a href="MS_Dynamics_ERP.aspx" class="tablinks">MS Dynamics ERP</a>
                <a href="#" class="tablinks">MS Dynamics CRM</a>
                <a href="Staffing.aspx" class="tablinks">MS Dynamics Staffing</a> <a href="Outsourcing.aspx"
                    class="tablinks">MS Dynamics Outsourcing</a>
                <a href="Services_sharepoint.aspx" class="tablinks">MS SharePoint</a>
                <li class="activetab"><a href="#tab3">MS Enterprise Project Server</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <%--<services_crm:services ID="crm" runat="server" />--%>
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
