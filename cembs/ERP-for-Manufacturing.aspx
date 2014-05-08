<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="ERP-for-Manufacturing.aspx.cs" Inherits="ERP_for_Manufacturing" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>ERP for Manufacturing</title>
    <meta name="description" content="Microsoft Dynamics ERP and CRM solutions work like and with familiar Microsoft software. They automate and improve financial, customer relationship, and supply-chain management. " />
    <meta name="keywords" content="manufacturers, manufacturing, manufacturing companies, manufacturing industry, manufacturing resource planning software, manufacturing software, Manufacturing Software Systems, material management, merchandising,mfg" />
    <meta name="robots" content="index, follow" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_industries').addClass('bluebg');
            $("ul.tabs li:nth-child(6)").addClass("active").show(); //Activate first tab           
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
                    <script type="text/javascript" src="Industries_content_js/manufacturing.js"></script>
                    <h3>
                        Case Studies</h3>
                    <div style="margin-top: 0px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
                        <div class="casetitle float-left">
                            <div>
                                <a target="_blank" href="downloads/CaseStudies/ABIflow.pdf" title="ABIflow Case Study"
                                    style="text-decoration: underline;">ABI case study</a></div>
                        </div>
                    </div>
                    <div style="margin-top: 10px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
                        <div class="casetitle float-left">
                            <div>
                                <a target="_blank" href="downloads/CaseStudies/Supra.pdf" title="Supra-Casestudy.pdf"
                                    style="text-decoration: underline;">Supra case study</a></div>
                        </div>
                    </div>
                    <div style="margin-top: 10px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
                        <div class="casetitle float-left">
                            <div>
                                <a target="_blank" href="downloads/CaseStudies/SP-Engineers.pdf" title="Supra-Casestudy"
                                    style="text-decoration: underline;">SP-Engineers case study</a></div>
                        </div>
                    </div>
                    <div style="margin-top: 10px; padding: 5px 0 10px; background: #f2f2f2;" class="casediv">
                        <div class="casetitle float-left">
                            <div>
                                <a target="_blank" href="downloads/CaseStudies/omya.pdf" title="Omya Casestudy" style="text-decoration: underline;">
                                    Omya case study</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
