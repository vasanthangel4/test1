<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true" CodeFile="Group-Companies.aspx.cs" Inherits="Group_Companies" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Microsoft Dynamics ERP for Corporate</title>
<meta name="description" content="CEM helps group companies through both centralized and de-centralized deployments. Clients can opt to work with one partner to manage the whole deployment as a single organization or as a syndicate of local partners. A group company project requires local support in multiple locations, the options are working with a large partner who has a presence in all the locations required or to work with a partner who can assist in putting together a syndicate of appropriate partners. CEM has offices in 8 international locations and offers flexible options for successfully implementing and supporting Dynamics across the globe, whether this is a centrally managed implementation controlling local installations or multiple installations managed locally with varying levels of autonomy. "/>
<meta name="keywords" content="group companies, Microsoft Dynamics ERP, Microsoft Dynamics ERP solutions, multi-company, international organizations, customer relationship management, corporate, corporate erp, corporate crm, corporate software, microsoft crm, large organization, huge company, business process management software, business process software "/>
<meta name="robots" content="index, follow" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#m_industries').addClass('bluebg');
        $("ul.tabs li:nth-child(10)").addClass("active").show(); //Activate first tab           
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
                    <script type="text/javascript" src="Industries_content_js/group.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>