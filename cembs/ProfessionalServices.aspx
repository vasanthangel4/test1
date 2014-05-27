<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true" CodeFile="ProfessionalServices.aspx.cs" Inherits="ProfessionalServices" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>CEMBS | Professional Service </title>
<meta name="description" content="CEM’s Professional service solution which is built on top of Microsoft Dynamics Enterprise resource planning (ERP) technology helps your firms manage every aspect of your business from customer relationships to process outsourcing to meet new business demands and challenges and remain competitive. CEM’s solution is designed to drive efficiencies, streamline key business process with the ability to gain deep insight across your entire organization while improving your quality of customer interactions and decision making skills."/>
<meta name="keywords" content="microsoft dynamic ax"/>
<meta name="robots" content="index, follow"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_industries').addClass('bluebg');
            $("ul.tabs li:nth-child(4)").addClass("active").show(); //Activate first tab           
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
                    <script type="text/javascript" src="Industries_content_js/serviceindustries.js"></script>
                    <h3>Case Studies</h3>
<div style="margin-top: 0px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
<div class="casetitle float-left">
<div><a target="_blank" href="downloads/CaseStudies/Cornor-stone.pdf" title="Corner Stone Case Study" style="text-decoration: underline;">Corner Stone Case Study</a></div>
</div>
</div>
<div style="margin-top: 10px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
<div class="casetitle float-left">
<div><a target="_blank" href="downloads/CaseStudies/greencresent.pdf" title="Greencresent Case Study" style="text-decoration: underline;">Greencresent Case Study</a></div>
</div>
</div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
