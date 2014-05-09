<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Oil-companies.aspx.cs" Inherits="Oil_companies" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Oil Companies</title>
<meta name="description" content="CEM's solutions for Oil &amp; Gas Industry can provide such tool built on top of Microsoft Dynamics ERP that can easily integrate your project teams, improve collaboration, and get your projects completed on time and within budget. CEM offers a new range of ERP and CRM solutions from analysing to reporting that allow decision makers to make better decisions and drive business performance. With extensive experience and knowledge in the industry, CEM’s solution for Oil & Gas consists of customized modules that are necessary to execute your business process more successful with profitability.."/>
<meta name="keywords" content="Oil & Gas, Oil & Gas industry, oil companies, petroleum, petroleum companies, energy companies, ERP implementation" />
<meta name="robots" content="index, follow" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#m_industries').addClass('bluebg');
        $("ul.tabs li:nth-child(5)").addClass("active").show(); //Activate first tab           
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
                    <script type="text/javascript" src="Industries_content_js/oil.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>