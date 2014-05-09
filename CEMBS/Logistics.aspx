<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true" CodeFile="Logistics.aspx.cs" Inherits="Logistics" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Logistics and Distribution</title>
<meta name="description" content="CEM’s transportation solutions improve your data access and reporting strength and provide perfect visibility into your business process. Fully integrated with Microsoft Dynamics Technology, our solution is scalable, flexible and easily configurable to meet the unique needs of your organization and provides complete control over the operation for better cost management and returns. It is ideal for transporters, logistics providers, truck loaders, freight forwarders, multinational and multi-model freight forwarders, and for providers managing warehouse and logistics services."/>
<meta name="keywords" content="logistics, logistics erp, logistics software, logistics management, logistics company, supply chain management"/>
<meta name="robots" content="index, follow"/>
<script type="text/javascript">
    $(document).ready(function () {
        $('#m_industries').addClass('bluebg');
        $("ul.tabs li:nth-child(8)").addClass("active").show(); //Activate first tab           
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
                    <script type="text/javascript" src="Industries_content_js/logistics.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>