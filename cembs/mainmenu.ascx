<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mainmenu.ascx.cs" Inherits="mainmenu" %>
<div id="smoothmenu1" class="ddsmoothmenu">
    <ul id="navigation" class="nav-main">
        <li><a href="#">Services</a>
            <ul class="nav-sub">
                <li><a href="#">MS Dynamics ERP</a>
                    <ul class="nav-sub">
                        <li><a href="AX_Index.aspx">MS Dynamics AX</a>
                            <ul class="nav-sub">
                                <li><a href="AX_Whatsnew.aspx">What's New : AX 2012</a></li>
                                <li><a href="AX_Services.aspx">Services</a></li>
                            </ul>
                        </li>
                        <li><a href="MS_Dynamics_ERP.aspx">MS Dynamics NAV</a></li>
                        <li><a href="MS_Dynamics_ERP_GP.aspx">MS Dynamics GP</a></li>
                        <li><a href="MS_Dynamics_ERP_SL.aspx">MS Dynamics SL</a></li>
                    </ul>
                </li>
                <li><a href="Services_CRM.aspx">MS Dynamics CRM</a></li>
                <li><a href="Staffing.aspx">MS Dynamics Staffing</a></li>
                <li><a href="Outsourcing.aspx">MS Dynamics Outsourcing</a></li>
                <li><a href="Services_sharepoint.aspx">MS SharePoint</a></li>
                <li><a href="Services_project.aspx">MS Enterprise Project Server</a></li>
            </ul>
        </li>
        <li><a href="#">Solutions</a>
            <ul class="nav-sub">
                <%--<li><a href="#">Project Pro</a></li>--%>
                <li><a href="AXPayroll_Index.aspx">CEM AX Payroll</a>
                    <ul class="nav-sub">
                        <li><a href="AXModules.aspx">Modules</a></li>
<li><a href="AXPayroll/Support/Index.aspx">Support</a></li>
                    </ul>
                </li>
                <li><a href="Construct_Index.aspx">CEM AX Construct</a>
                    <ul class="nav-sub">
                        <li><a href="Construct_Features.aspx">Modules</a></li>
                    </ul>
                </li>
                <%--<li><a href="http://www.cemjewellerysoftware.com" target="_blank">CEM Jewel</a></li>--%>
            </ul>
        </li>
        <li><a href="Industries.aspx">Industries</a>
            <ul class="nav-sub">
                <li><a href="Distribution.aspx">Distribution</a>
                    <ul class="nav-sub">
                        <li><a href="ConsumerGoods.aspx">Consumer goods</a></li>
                        <li><a href="Foods_Beverages.aspx">Foods and Beverages</a></li>
                        <li><a href="IndustrialGoods.aspx">Industrial goods</a></li>
                    </ul>
                </li>
                <li><a href="FinancialServices.aspx">Financial Services</a></li>
                <li><a href="Manufacturing.aspx">Manufacturing</a>
                    <ul class="nav-sub">
                        <li><a href="Automotive.aspx">Automotive</a></li>
                        <li><a href="Chemical.aspx">Chemical</a></li>
                        <li><a href="Consumer_packaged_goods.aspx">Consumer packaged goods</a></li>
                        <li><a href="Manufacturing_Foods_Beverages.aspx">Food and Beverage</a></li>
                        <li><a href="HighTech.aspx">High tech and electronics</a></li>
                        <li><a href="IndustrialEquipment.aspx">Industrial equipment</a></li>
                        <li><a href="LifeScience.aspx">Life sciences</a></li>
                        <li><a href="MetalFabrication.aspx">Metal fabrication</a></li>
                    </ul>
                </li>
                <li><a href="ProfessionalServices.aspx">Professional Services</a>
                    <ul class="nav-sub">
                        <li><a href="Construction.aspx">Construction</a></li>
                        <li><a href="GovernmentContractors.aspx">Government Contractors</a></li>
                    </ul>
                </li>
                <li><a href="PublicSector.aspx">Public Sector</a>
                    <ul class="nav-sub">
                        <li><a href="Education.aspx">Education</a></li>
                        <li><a href="Government.aspx">Government</a></li>
                        <li><a href="Healthcare.aspx">Health care</a></li>
                        <li><a href="Not-a-Profit.aspx" style="width: 190px;">non-profit organizations</a></li>
                    </ul>
                </li>
                <li><a href="Retail.aspx">Retail</a></li>
            </ul>
        </li>
        <%--<li><a href="UnderConstruction.aspx">Support</a>--%>
        <%--<ul class="nav-sub">
                <li><a href="UnderConstruction.aspx">User support</a></li>
                <li><a href="UnderConstruction.aspx">CEM Forum</a></li>
            </ul>--%>
        <%--</li>--%>
        <li class="menu_current"><a href="about.aspx">Company</a>
            <ul class="nav-sub">
                <li><a href="About.aspx">Who we are?</a></li>
                <li><a href="Awards.aspx">Awards</a></li>
                <li><a href="#">CEM Showcase</a>
                    <ul class="nav-sub">
                        <li><a href="Gallery.aspx">Gallery</a></li>
                        <li><a href="Case-Studies.aspx">Case-Studies &amp; Videos</a></li>
                    </ul>
                </li>
                <li><a href="PressReleases.aspx">Press Releases</a></li>
                <%--<li><a href="Blog/Index.aspx">CEM blog</a></li>--%>
                <%--<li><a href="UnderConstruction.aspx">Learning</a></li>--%>
            </ul>
        </li>
        <li><a href="Contactus.aspx">Contact us</a></li>
    </ul>
</div>