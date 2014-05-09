<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Construction-Management.aspx.cs" Inherits="Construction_Management" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Construction Management | Microsoft Dynamics AX</title>
    <meta name="description" content="Microsoft Dynamics AX provides integrated, flexible construction management software systems that allow contractors to manage complex business processes without the burden of a large, expensive information technology (IT) infrastructure. " />
    <meta name="keywords" content="Dynamics AX Construction, construction management, Microsoft ERP for construction, Microsoft Dynamics AX, construction software, construction management software,building automation solutions, building companies, building construction software, building management solutions, building solutions, building system solutions" />
    <meta name="robots" content="index, follow" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_industries').addClass('bluebg');
            $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab           
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
                    <h1>Microsoft Dynamics for Construction</h1>
                    <script type="text/javascript" src="Industries_content_js/construction.js"></script>
                    <h3>Case Studies</h3>
                    <div style="margin-top: 0px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
                         <div class="casetitle float-left">
<div><a target="_self" href="downloads/CaseStudies/Granite.pdf" title="Granite Case Study" style="text-decoration: underline;">Granite Case Study</a></div>
<div class="exlink" id="exlink"><a target="_blank" href="http://www.microsoft.com/casestudies/Microsoft-Dynamics-AX-2012/Granite-Construction-Company/International-Construction-Powered-by-Microsoft-ERP/710000002980" title="Microsoft case studies">Microsoft Dynamics has chosen this case study for their promotional archives. To view it among the Microsoft case studies, </a><a target="_new" href="http://www.microsoft.com/casestudies/Microsoft-Dynamics-AX-2012/Granite-Construction-Company/International-Construction-Powered-by-Microsoft-ERP/710000002980" style="text-decoration: underline;">click here</a>.</div>
</div>
                    </div>
                    <div style="margin-top: 10px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
<div class="casetitle float-left">
<div><a target="_self" href="downloads/CaseStudies/CAE.pdf" title="CAE Case Study" style="text-decoration: underline;">CAE Case Study</a></div>
<div class="exlink" id="Div1"><a target="_blank" href="http://www.microsoft.com/casestudies/Microsoft-Dynamics-AX-2009/Control-Applications-Emirates/Electrical-Contractor-Advances-Agility-Through-Platform-Migration-and-Upgrade/710000003483" title="Microsoft case studies">Microsoft Dynamics has chosen this case study for their promotional archives. To view it among the Microsoft case studies, </a><a target="_new" href="http://www.microsoft.com/casestudies/Microsoft-Dynamics-AX-2009/Control-Applications-Emirates/Electrical-Contractor-Advances-Agility-Through-Platform-Migration-and-Upgrade/710000003483" style="text-decoration: underline;">click here</a>.</div>
</div>
</div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
