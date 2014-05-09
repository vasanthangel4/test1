<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Upgrading-Microsoft-Dynamics.aspx.cs" Inherits="Upgrading_Microsoft_Dynamics" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="outsourcing" Src="~/ServicesUsercontrols/outsourcing.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="implementation" Src="~/ServicesUsercontrols/implementation.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="manpower" Src="~/ServicesUsercontrols/manpower.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="support" Src="~/ServicesUsercontrols/support.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="upgrade" Src="~/ServicesUsercontrols/upgrade.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="optimization" Src="~/ServicesUsercontrols/optimization.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="migration" Src="~/ServicesUsercontrols/migration.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="projectmanagement" Src="~/ServicesUsercontrols/projectmanagement.ascx" %>
<%@ Register TagName="servicesusercontrol" TagPrefix="projectselection" Src="~/ServicesUsercontrols/projectselection.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Upgrading Microsoft Dynamics</title>
    <meta name="description" content="CEM can help assess your needs and determine if it would be cost-effective to expand your system or take advantage of new functionality by upgrading to the current version. Expanding and upgrading your Microsoft Dynamics solution periodically helps you to improve your business productivity, protect your investment in your solution and to maximize the value of Microsoft Dynamics. CEM offers the most cost-effective choice for Dynamics upgrades at the lowest risk.  We have more experienced consultants, with 10+ years working with Microsoft Dynamics  " />
    <meta name="keywords" content="AX Upgrade, GP Upgrade, upgrading, crm consulting, 2012 to 2013, crm 2012, upgrade services, erp upgrade, navision upgrade, crm upgrade, nav upgrade, microsoft dynamics upgrade, ax upgrade, gp upgrade" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .ul_reasons
        {
            padding: 0px 0 0 0;
        }
        .ul_reasons li
        {
            list-style: disc inside url("Images/arrow.jpg");
            text-decoration: none;
            line-height: 18px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_services').addClass('bluebg');
            //location.href = location.href + '#upgrade';
            $("ul.tabs li:nth-child(2)").addClass("active").show(); //Activate first tab           
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab               
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/outsourcing_page.jpg" alt="outsourcing" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="Implementation-Services.aspx">Implementation</a></li>
                <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                <li><a href="Outsourcing.aspx">Outsourcing</a></li>
                <li><a href="Optimization.aspx">Optmization</a></li>
                           <!--<li><a href="Manpower-Staffing.aspx">Manpower</a></li>-->
                <li><a href="ERP-and-CRM-Support.aspx">Support</a></li>
             <%--   <li><a href="Project-Management.aspx">Project management</a></li>
                <li><a href="Product-Selection.aspx">Product selection</a></li>
                <li><a href="http://www.cemcloudservices.com"  target="_blank" >Cloud Services</a></li>--%>
            </ul>
            <div class="tab_container">
                <div id="upgrade" class="tab_content">
                    <upgrade:servicesusercontrol ID="up" runat="server" />
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
