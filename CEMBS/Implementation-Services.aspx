<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Implementation-Services.aspx.cs" Inherits="Implementation_Services" %>

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
    <title>CRM Implementation</title>
    <meta name="description" content="CEM provides the complete range of services for a successful Microsoft Dynamics ERP and CRM implementation solution. Using proven ‘sure step’ methodology and in-depth knowledge of servicing over 19 industries, CEM concentrates on operational excellence leveraging you to capitalize on enhanced productivity and decision making, reducing inefficiencies and streamline your business process. " />
    <meta name="keywords" content="implementation, erp implementation , crm implementation, microsoft dynamics implementation, crm installation, erp installation , payroll implementation" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_services').addClass('bluebg');
        // loading other page content in this page (div)
            //$('.tabs a').click(function () {
               // var linkid = $(this).attr('href');
                //var divid = $('ul.tabs li:nth-child(1)').find("a").attr("href")
                //$(divid).load('Upgrading-Microsoft-Dynamics.aspx #' + linkid); // load the content in first div
            //});

            $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
            });
        });
    </script>
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/implementation.jpg" class="active" alt="implementation services" />
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
  <%--              <li><a href="Project-Management.aspx">Project management</a></li>
                <li><a href="Product-Selection.aspx">Product selection</a></li>
                <li><a href="http://www.cemcloudservices.com"  target="_blank" >Cloud Services</a></li>--%>
            </ul>
            <div class="tab_container">
                <div id="implementation" class="tab_content">
                    <implementation:servicesusercontrol ID="imple" runat="server" />
                </div>
                <%--<div id="upgrade" class="tab_content">
                    <upgrade:servicesusercontrol id="up" runat="server" />
                </div>
                <div id="migration" class="tab_content">
                    <migration:servicesusercontrol id="mig" runat="server" />
                </div>
                <div id="outsourcing" class="tab_content">
                    <outsourcing:servicesusercontrol ID="out" runat="server" />
                </div>
                <div id="optimization" class="tab_content">
                    <optimization:servicesusercontrol ID="opt" runat="server" />
                </div>
                <div id="manpower" class="tab_content">
                    <manpower:servicesusercontrol ID="man" runat="server" />
                </div>
                <div id="support" class="tab_content">
                    <support:servicesusercontrol ID="sup" runat="server" />
                </div>
                <div id="projectmanagement" class="tab_content">
                    <projectmanagement:servicesusercontrol ID="prom" runat="server" />
                </div>
                <div id="projectselection" class="tab_content">
                    <projectselection:servicesusercontrol ID="pros" runat="server" />
                </div>--%>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
