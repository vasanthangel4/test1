<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEM-AX-Union-Payroll.aspx.cs" Inherits="CEM_AX_Union_Payroll" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM AX Union Payroll </title>
    <meta name="description" content=" CEM AX payroll is designed to meet all the payroll related requirements of your organization and allows you to manage your payroll process across multiple positions in multiple entities across the globe. " />
    <meta name="keywords" content="microsoft payroll software, payroll, payroll process in india, payroll services, payroll services india, payroll software india" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">        $(document).ready(function () { $('#m_products').addClass('bluebg') });</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/header_hcm.jpg" style="width: 980px; height: 192px;" alt="hcm" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">CEM AX Union Payroll </a></li>
            </ul>
            <div class="tab_container">
                <div style="padding: 0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                        <h1>
                            CEM AX Union Payroll</h1>
                        <p>
                            Now, CEM AX Payroll has a module to handle all union payroll activities. Your HR
                            department no longer has to manually calculate union deductions and fringe benefits.
                            Or, perhaps you are outsourcing your union payroll. Now you can bring it in-house.
                            Standard union tables define pay, deductions and fringes by employee craft code,
                            so that the correct pay rate defaults automatically to the timecard. If necessary,
                            taxable union fringes may be taken into account.</p>
                        <p>
                            The primary difference between payroll processing for union and non-union workers
                            is the union deduction. You can input multiple union tables into CEM AX Payroll,
                            which will set aside a predetermined portion of each paycheck for union dues. Most
                            unions have specific requirements regarding pay scales and payroll processing. Each
                            union file will define pay rates based on criteria like seniority, department and
                            worker performance.</p>
                        <p>
                            The ability to track and report union payroll activities is also very important.
                            CEM AX Payroll can create certified payroll reports in real time, that document
                            vacation time, sick leave, absences, etc. by individual or by union members within
                            the organization. This kind of documentation becomes absolutely necessary when business
                            leaders are in discussions with union leaders.</p>
                        <p>
                            <strong>CEM AX Payroll Union Features &amp; Benefits:</strong></p>
                        <ul class="ul_reasons">
                            <li>Integration with projects and accounts payable</li>
                            <li>Union file summary and detail</li>
                            <li>Track union deductions for multiple labor classifications &amp; multiple unions</li>
                            <li>Powerful fringe benefit calculations</li>
                            <li>Integration with time and attendance and time card</li>
                            <li>Track unlimited earnings and deduction codes</li>
                            <li>Configurable certified payroll reports</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
