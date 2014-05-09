<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="PressReleases.aspx.cs" Inherits="PressReleases" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Press Releases</title>
    <link href="Styles/gallery_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/uiTabsFirstItem.js"></script>
    <style type="text/css">
        a.downloadlink
        {
            float: right;
            color: #7e9c1a;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/showcase.jpg" alt="showcase" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#tab1">OCS Infotech</a></li>
            </ul>
            <div class="tab_container" style="text-align:justify;">
                <div id="tab1" class="tab_content">
                    <h1>
                        OCS Infotech announces Strategic Partnership for Software Solutions & Services
                    </h1>
                    <p>
                        OCS Infotech conducted a special technology event at Crowne Plaza, Muscat, recently
                        to announce the company’s strategic partnership with CEM Business Solutions Dubai,
                        a global Microsoft Dynamics solution provider, to offer world class implementation
                        and support services for Microsoft Dynamics ERP and other related solutions in Oman.</p>
                    <p>
                        CEM Business Solutions showcased the power of Microsoft Dynamics ERP and how Microsoft
                        Dynamics AX can address the complex business challenges of large corporates integrated
                        along with Microsoft’s self-service Business Intelligence tools that can provide
                        valuable real-time business insights for better decision making.</p>
                    <img src="Images/ocs.jpg" alt="ocs infotech" width="493" height="370" style="border: medium none;
                        padding-top: 0px; box-shadow: 0 12px 7px -8px #000000; padding-bottom:0px; float:none;" />
                    <p>
                        The event gave an opportunity for OCS Infotech to share its vision to become a strong
                        Software Solutions provider in the GCC region and a leader in end-to-end solutions
                        provider in Oman. In the recent past, OCS Infotech has built a strong software solutions
                        team and has acquired best practices and off-shore delivery models, in partnership
                        with global service providers, towards offering best-in-class Software Solutions
                        & Services.</p>
                    <p>
                        OCS Infotech is a part of the ICT division of The Zubair Corporation Group with
                        over two decades of established presence in the region. “OCS Infotech is committed
                        to its vision to build sustainable and value based business models. We have enjoyed
                        a long association with Microsoft and we hope this initiative will further enhance
                        and strengthen our business positioning with them” said Rogeh Hajj, Chief Operating
                        Officer, ICT Division, The Zubair Corporation.
                    </p>
                    <p>
                        Also in the event, Dharini Suresh, Partner Account Manager, Microsoft Gulf (Oman
                        & Bahrain), presented the latest features of the Microsoft Dynamics product suite
                        including the product road map highlighting the new technologies and innovations
                        that the customers can expect from Microsoft Dynamics. Karim Talhouk, Microsoft
                        Business Solutions Lead at Microsoft Gulf said, “At Microsoft Business Solutions,
                        we work closely with our partners to continue to provide customers in the Gulf region
                        with innovative solutions that will help them improve their productivity and reduce
                        costs. We believe that the partnership with OCS Infotech will allow us to continue
                        to offer best-in-class-services to our customers in Oman.”
                        <p>
                            &ldquo;This value based partnership with CEM Business Solutions will enable us to
                            offer our customers a choice of best-of-breed solutions with world-class services
                            along with uncompromised support for Microsoft Dynamics Solutions. In addition,
                            we will also offer other solutions like BI, CRM, HRMS &amp; Payroll and also Microsoft
                            SharePoint Services&rdquo; highlighted V G Rajasekar, General Manager of OCS Infotech.
                            &ldquo;With this we are committed to set newer standards in this domain for Oman
                            market&rdquo;, he added.</p>
                        <p>
                            CEM Business Solutions has the distinction of winning many performance awards including
                            the Microsoft President&rsquo;s award and also the Best Implementation Partner award
                            for three years in a row, among many others. CEM Business Solutions has presence
                            in over 9 countries and has an off-shore delivery center based in Chennai, India,
                            with over 100 Microsoft Dynamics trained consultants.</p>
                        <p>
                            &ldquo;We are delighted to partner with OCS Infotech, a leading IT player with established
                            presence in Oman. The partnership will allow us to leverage on our global reach
                            and offshore facility in India and also to bring in best-in-class Microsoft Dynamics
                            solutions &amp; services for the Oman market&rdquo;, commented S H Ramakrishnan,
                            Managing Director, CEM Business Solutions.
                        </p>
                        <p>
                            OCS Infotech, an ISO 9001 Certified Organization, is a leading Information Technology
                            company offering a suite of innovative and leading enterprise technology IT solutions
                            such as Hardware Servers, Storage, Networking &amp; Security, and also Software
                            Solutions along with Professional Services. OCS Infotech effectively addresses the
                            technology needs of corporate enterprises across multiple industries like Oil &amp;
                            Gas, Telco, Government, Transportation, Services, Retail, Manufacturing, etc.
                        </p>
                    </p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
