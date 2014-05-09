<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEMValues.aspx.cs" Inherits="CEMValues" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Values | About CEM</title>
    <meta name="description" content=" Headquartered in Dubai, CEM Business solution is a global IT services Organization focusing on Microsoft Dynamics suite of ERP and CRM solutions. Our Offices at Chennai, INDIA, Mumbai, Dubai, UAE, Sharjah, UAE, Abu Dhabi, UAE, Kuwait, USA, UK " />
    <meta name="keywords" content="Microsoft dynamics suite, Microsoft Dynamics ERP and CRM Business software" />
    <meta name="robots" content="index, follow" />
    <script src="clearbox.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/about_banner.jpg" alt="about cem" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <div style="padding: 0 20px 0 20px; text-align: justify;">
                <h1>
                    CEM Values in Place</h1>
                <p>
                    <strong>Our Vision</strong></p>
                <ul class="ul_reasons">
                    <li>To empower enterprises with the power of technology and driven by our commitment
                    </li>
                </ul>
                <p>
                    <strong>Our Mission</strong></p>
                <ul class="ul_reasons">
                    <li>To create Centre’s of Excellence in Management of Business Solutions in many markets
                        through the common resource pool by multiplying benefits and dividing costs.
                    </li>
                    <li>To excel as a vendor, customer and employee loved organization. </li>
                    <li>To meet customers' expectations using transformational business solutions, empowering
                        enterprises to unleash their full potential. </li>
                </ul>
                <p>
                    <strong>Quality Policy</strong></p>
                CEM is committed to:
                <ul class="ul_reasons">
                    <li>Continuous improvement in Processes & Skills</li>
                    <li>Envisage and accomplish new Standards. </li>
                    <li>Maintain healthy stake holder Relations. </li>
                </ul>
                <p>
                    <strong>Our beliefs</strong></p>
                <ul class="ul_reasons">
                    <li>Diverse experience </li>
                    <li>Innovative methodologies </li>
                    <li>Knowledge management </li>
                    <li>Low cost operations </li>
                    <li>Result orientation </li>
                    <li>Customer satisfaction </li>
                </ul>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
