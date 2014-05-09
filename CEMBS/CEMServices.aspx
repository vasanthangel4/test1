<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEMServices.aspx.cs" Inherits="CEMServices" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Services</title>
    <meta name="description" content="CEM Business solution offering the following ERP services: Implementation Services, Upgrade & Migration services, Outsourcing services and Support services" />
    <meta name="keywords" content="CEM services, CEM business solution services, Implementation Services, Upgrade & Migration services, Outsourcing services, Support services, ad-on, ERP Payroll, Microsoft Dynamics AX Payroll, ERP Upgrade Services, AX Upgrade, Data Migration Services, ERP Evaluation, Software Optimization, ERP Solutions, Microsoft SharePoint" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/cemproducts.jpg" class="active" alt="products" />
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
            <div class="tab_container" style="">
                <div class="tab_content paddingtopnone">
                    <h1 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        Not Just Products, Right-Sized Solutions</h1>
                    <p>
                       You don’t bring a sledgehammer to swat a fly. Or so the saying goes. Too much software will tie up valuable resources, ramp up the utilization learning curve and create more problems than you had before acquisition. Conversely, low-balling your ERP package will have you looking for a replacement before this one pays out. </p>
                    <p>
                       The first step to properly sizing your next ERP system is to find a provider that is completely media neutral. A provider that can implement a wide variety of solutions, without a vested interest in any given solution. CEM is a Gold Certified Microsoft Dynamics Partner that supports every Dynamics platform: SL, GP, CRM, NAV and AX. CEM’s engineering process is governed by ISO 9001 standards for quality control. And CEM has achieved Microsoft Dynamics highest standard for partner-developed software: Certified for Microsoft Dynamics (CfMD) for several custom add-ons. </p>
                    <p>
                        A media neutral focus coupled with technical proficiency, and experience in 19 different industries worldwide, allows CEM to properly audit an organization’s ERP needs.  Once the audit clearly defines the organization’s needs, CEM has at its disposal, all the considerable resources of Microsoft to solve the problem in the best, most cost-efficient way possible. </p>
                    <p>
                       
The objective is not to install the biggest, most expensive ERP solution. The objective is to provide the right solution – to create the kind of relationship that will result in many more successful installations in the years to come. 
</p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
