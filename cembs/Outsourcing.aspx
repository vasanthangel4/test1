<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Outsourcing.aspx.cs" Inherits="Outsourcing" %>

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
    <title>CEMBS | MS Dynamics Outsourcing Services India </title>
    <meta name="description" content="CEM, with over a decade of experience strives to provide Microsoft Dynamics based outsourcing services to our customers across the world as a pro-active Endeavour to enhance client performance and lower the labour cost investment. " />
    <meta name="keywords" content="Microsoft Dynamics Outsourcing,
Erp & Crm Outsourcing,
Ms Outsourcing,
Outsourcing Microsoft,
Microsoft Outsource,
ms dynamics, 
microsoft dynamix,
microsoft dynamics,
outsourcing,
outsourcing companies,  
outsourcing india, 
outsourcing it,     
outsourcing microsoft,
outsourcing partner,
outsourcing services ,   
outsourcing services india,
Outsourcing Software Development,
outsourcing software development, 
outsourcing to india,   
outsourcing uae,    
outsourcing us " />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_services').addClass('bluebg');
            $("ul.tabs li:nth-child(4)").addClass("active").show(); //Activate first tab           
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
                <%--    <li><a href="Project-Management.aspx">Project management</a></li>
                <li><a href="Product-Selection.aspx">Product selection</a></li>
                <li><a href="http://www.cemcloudservices.com"  target="_blank" >Cloud Services</a></li>--%>
            </ul>
            <div class="tab_container">
                <div id="outsourcing" class="tab_content">
                    <outsourcing:servicesusercontrol ID="out" runat="server" />
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
