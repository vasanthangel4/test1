<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true" CodeFile="Chemical.aspx.cs" Inherits="Chemical" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Microsoft Dynamics software for chemical manufacturers | Chemical Manufacturing Software solutions</title>
<meta name="description" content="CEM business solution offers Microsoft Dynamic integration of compliance, product development, manufacturing, and finance for chemical manufacturers. "/>
<meta name="keywords" content="Microsoft Dynamics for chemical manufacturers, Chemical Manufacturing Software solutions"/>
<meta name="robots" content="index, follow"/>
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li.active").addClass("active").show(); //Activate first tab
            $(".tab_content:#tab9").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content
                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active content
                return false;
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/industries.jpg" alt="industries"/>
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <%--<div style="width: 200px; height: 30px; background: none repeat scroll 0pt 0pt rgb(88, 76, 71);">
                    <h4 style="margin: 0px; color: rgb(255, 255, 255); font-size: 16px; font-weight: normal;
                        padding: 2px 0pt 0pt 20px;">
                        About us</h2>
                </div>--%>
                <li><a href="#tab1" class="bold">Industry</a></li>
                <li><a href="#tab2" class="bold">Distribution</a></li>
                <li><a href="#tab3">Consumer goods</a></li>
                <li><a href="#tab4">Foods and Beverages</a></li>
                <li><a href="#tab5">Industrial goods</a></li>
                <li><a href="#tab6" class="bold">Financial Services</a></li>
                <li><a href="#tab7" class="bold">Manufacturing</a></li>
                <li><a href="#tab8">Automotive</a></li>
                <li class="active"><a href="#tab9">Chemical</a></li>
                <li><a href="#tab10">Consumer packaged goods</a></li>
                <li><a href="#tab11">Food and Beverage</a></li>
                <li><a href="#tab12">High tech and electronics</a></li>
                <li><a href="#tab13">Industrial equipment</a></li>
                <li><a href="#tab14">Life sciences</a></li>
                <li><a href="#tab15">Metal fabrication</a></li>
                <li><a href="#tab16" class="bold">Professional Services</a></li>
                <li><a href="#tab17">Construction</a></li>
                <li><a href="#tab18">Government Contractors</a></li>
                <li><a href="#tab19" class="bold">Public Sector</a></li>
                <li><a href="#tab20">Education</a></li>
                <li><a href="#tab21">Government</a></li>
                <li><a href="#tab22">Health care</a></li>
                <li><a href="#tab23">Non-profit Organizations</a></li>
                <li><a href="#tab24" class="bold">Retail</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/industry.js"></script>
                </div>
                <div id="tab2" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/distribution.js"></script>
                </div>
                <div id="tab3" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/consumer_goods.js"></script>
                </div>
                <div id="tab4" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/foods_beverages.js"></script>
                </div>
                <div id="tab5" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/industrial_goods.js"></script>
                </div>
                <div id="tab6" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/financial services.js"></script>
                </div>
                <div id="tab7" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/manufacturing.js"></script>
                </div>
                <div id="tab8" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/automotive.js"></script>
                </div>
                <div id="tab9" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/chemical.js"></script>
                </div>
                <div id="tab10" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/consumer_packaged_goods.js"></script>
                </div>
                <div id="tab11" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/manufacturing_Food_Beverages.js"></script>
                </div>
                <div id="tab12" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/hightech_Electronics.js"></script>
                </div>
                <div id="tab13" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/industrial_equipment.js"></script>
                </div>
                <div id="tab14" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/lifesciences.js"></script>
                </div>
                <div id="tab15" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/metal_fabrication.js"></script>
                </div>
                <div id="tab16" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/professional.js"></script>
                </div>
                <div id="tab17" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/construction.js"></script>
                </div>
                <div id="tab18" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/govt_contractor.js"></script>
                </div>
                <div id="tab19" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/public_sector.js"></script>
                </div>
                <div id="tab20" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/education.js"></script>
                </div>
                <div id="tab21" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/government.js"></script>
                </div>
                <div id="tab22" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/health.js"></script>
                </div>
                <div id="tab23" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/profit.js"></script>
                </div>
                <div id="tab24" class="tab_content">
                    <script type="text/javascript" src="Industries_content_js/retail.js"></script>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>