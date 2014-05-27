<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Industries.aspx.cs" Inherits="Industries" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEMBS | Microsoft dynamics industry solutions
    </title>
    <meta name="description" content="Solution providers build on the standard Microsoft Dynamics ERP and CRM functionality to deliver powerful industry solutions that meet industry-specific needs. " />
    <meta name="keywords" content="erp for manufacturing" />
    <meta name="robots" content="index, follow" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_industries').addClass('bluebg');
            //$("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab           
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
        <img src="Images/industries.jpg" alt="industries"/>
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="Construction-Management.aspx">Construction</a></li>
                <li><a href="Contract-Software.aspx">Contracting</a></li>
                <li><a href="Project-Management-Software.aspx">Projects</a></li>
                <li><a href="ProfessionalServices.aspx">Professional services</a></li>
                <li><a href="Oil-companies.aspx">Oil &amp; Gas</a></li>
                <li><a href="ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                <li><a href="Trading.aspx">Trading</a></li>
                <li><a href="Logistics.aspx">Logistics/Distribution</a></li>
                <li><a href="Retail-Management.aspx">Retail</a></li>
                <li><a href="Group-Companies.aspx">Group companies</a></li>
            </ul>
            <div class="tab_container">
                <div id="construction" class="tab_content">
                    <h1>
                        Microsoft Dynamics for Industries</h1>
                    <script type="text/javascript" src="Industries_content_js/industry.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
