<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Trading.aspx.cs" Inherits="Trading" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>CEMBS | Trading</title>
<meta name="description" content="CEM offers a powerful, adaptable and fully integrated solution for trading industry that gives the companies’ the ability to manage every aspect of their business process. Based on Microsoft Dynamics technology, our solutions are designed to support the trading and distribution process adequately with all necessary functionalities that help you to meet your customer demands on time and within budget. From order entry to shipment delivery all integral parts of your business are covered with our solution providing effective business process and efficient sales. From technical and functional viewpoint, CEM’s trading solutions supports multi-market requirements and international business activities including tax and legal demands."/>
<meta name="keywords" content="trading erp, erp for small business"/>
<meta name="robots" content="index, follow" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#m_industries').addClass('bluebg');
        $("ul.tabs li:nth-child(7)").addClass("active").show(); //Activate first tab           
        //On Click Event
        $("ul.tabs li").click(function () {
            $("ul.tabs li").removeClass("active"); //Remove any "active" class
            $(this).addClass("active"); //Add "active" class to selected tab               
        });
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container">
            <%--<script src="Industries_content_js/sidebar_content.js" type="text/javascript"></script>--%>
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
                    <script type="text/javascript" src="Industries_content_js/trading.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>