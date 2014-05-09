<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-RMS.aspx.cs" Inherits="Microsoft_Dynamics_RMS" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics RMS | CEM AX Retail</title>
    <meta name="description" content=" CEM AX for Retail is a powerful end-to-end retail solution that delivers on this vision for both midsize and enterprise specialty retailers through real-time visibility to critical data and complete central control of all critical activity at the retail stores. CEM AX for Retail helps retailers gain insight into customer behaviour and then use it to optimize the whole chain of operations—from sales to supply and distribution. The end-to-end solution will uniquely support point-of-sale, store management, merchandising, and ERP business processes through deep integration out of the box that helps solve the challenge of complexity faced by retailers." />
    <meta name="keywords" content="Ax Retail, Microsoft Ax Retail, Microsoft Dynamics Ax Retail, Microsoft Dynamics AX for Retail
ax retail, microsoft ax retail, microsoft dynamics ax retail, ax for retail, microsoft dynamics rms, microsoft dynamics retail management system, microsoft dynamics marketplace, microsoft dynamics ax for retail, microsoft dynamics accounting, microsoft dynamics ax 2012 for retail, dynamics ax for retail, microsoft dynamics ax retail, microsoft dynamics ax retail pos, microsoft dynamics retail management,microsoft retail management system, microsoft dynamics pos, retail software,microsoft retail, retail management system, point of sale systems" />
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
                <li class="active"><a href="#overview">CEM AX Retail </a></li>
            </ul>
            <div class="tab_container">
                <div style="padding: 0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                        <h1>
                            CEM AX Retail</h1>
                        <p>
                            The present day retail environment offers ever-expanding opportunity while also posing unprecedented challenges. Retailers have more channels to reach their customers globally, but they must also serve an empowered consumer with access to more information and choice—forcing retailers leverage IT in an entirely different way to drive visibility across the organization to react quickly; seize new opportunities; and build customer loyalty. Finally, retailers must find new ways to make their most valuable asset, ‘people’, more productive to enable a “Connected Experience for Retail.” 
                            &nbsp;</p>
                        <p>
                            CEM AX for Retail is a powerful end-to-end retail solution that delivers vision for both midsize and enterprise specialty retailers through real-time visibility to critical data and complete central control of all critical activity at the retail stores. CEM AX for Retail helps retailers gain insight into customer behavior and then use it to optimize the whole chain of operations—from sales to supply and distribution. The end-to-end solution will uniquely support point-of-sale, store management, merchandising, and ERP business processes through deep integration out of the box, that helps solve the challenge of complexity faced by retailers.</p>
                        <ul class="ul_reasons">
                            <li>Fully integrated online storefront offers content management via industry-standard tools</li>
                            <li>Retail channel integration with online marketplaces and stores, creates new opportunities for sales, customer interaction, and feedback</li>
                            <li>Implement promotions, discounts, coupons, and more via social sites. Enable recall or redemption through other channels</li>
                            <li>Track relevant demographic detail from redeemed promotions via marketplaces and social networks for customer data mining and analytics</li>
                            <li>Manage inventory transfers and intercompany flows with an end-to-end view</li>
                            <li>Replenish seamlessly across any channel, based on strategy or need</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
