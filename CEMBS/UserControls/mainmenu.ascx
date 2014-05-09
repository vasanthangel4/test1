<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mainmenu.ascx.cs" Inherits="UserControls_mainmenu" %>
<!-- TOP NAV Starts here-->
<div class="navbar-link">
    <div class="navbar-linktext">
        Menu</div>
    <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle collapsed"
        type="button">
        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
        </span>
    </button>
</div>
<div class="top-nav navbar">
    <div class="nav-container">
        <div>
            <label class="responsive_menu" for="responsive_menu">
                <span>&nbsp;</span>
            </label>
            <input id="responsive_menu" type="checkbox">
            <ul class="menu">
                <li id="m_home"><a href="/">Home</a></li>
                <li id="m_about"><a href="About-CEM.aspx">About CEM</a>
                    <ul>
                        <li><a href="Customers.aspx">Customers </a></li>
                        <li><a href="Geo.aspx">Geographies</a></li>
                        <%--<li><a href="Values.aspx">Our values</a></li>--%>
                        <li><a href="CSR.aspx">Corporate Social Responsibility</a></li>
                        <li><a href="OurAwards.aspx">Awards</a></li>
                        <%--<li><a href="Relationship.aspx">Microsoft relationship</a></li>--%>
                        <li><a href="CFMD.aspx">CfMD</a></li>
                        <li><a href="Global.aspx">Global Installations</a></li>
                    </ul>
                </li>
                <li id="m_products" class="dropdown"><a href="CEMProducts.aspx">CEM Products</a>
                    <ul>
                        <li><a href="Construction-Management-Software.aspx">CEM AX Construct</a></li>
                        <li><a href="Human-Capital-Management.aspx">CEM AX HCM</a></li>
                        <li><a href="Payroll-Software.aspx">CEM AX Payroll</a></li>
                        <li><a href="Construction-Project-Management-Software.aspx">CEM AX ProjectPro</a></li>
                        <li><a href="Microsoft-Dynamics-RMS.aspx">CEM AX Retail</a></li>
                        <li><a href="CEM-AX-Union-Payroll.aspx">CEM AX Union Payroll</a></li>
                    </ul>
                </li>
                <li id="m_services" class="dropdown"><a href="CEMServices.aspx">CEM Services</a>
                    <%--<div class="columndrop">
                        <div class="col">
                            <ul>
                                <h5>
                                    &nbsp;</h5>
                                <li><a href="Implementation-Services.aspx">ERP &amp; CRM Implementation</a></li>
                                <!--<li><a href="Manpower-Staffing.aspx">Manpower augmentation</a></li>-->
                                <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                                <li><a href="ERP-and-CRM-Support.aspx">ERP &amp; CRM Support</a></li>
                                <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul>
                                <h5>
                                    &nbsp;</h5>
                                <li><a href="Project-Management.aspx">Project Management</a></li>
                                <li><a href="Outsourcing.aspx">Outsourcing</a></li>
                                <li><a href="Product-Selection.aspx">Product Selection</a></li>
                                <li><a href="Optimization.aspx">Optimization</a></li>
                                <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud Services</a></li>-->
                            </ul>
                        </div>
                    </div>--%>
                    <ul>
                        <li><a href="Implementation-Services.aspx">ERP &amp; CRM Implementation</a></li>
                      <%--  <li><a href="Manpower-Staffing.aspx">Manpower augmentation</a></li>--%>
                        <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                        <li><a href="ERP-and-CRM-Support.aspx">ERP &amp; CRM Support</a></li>
                        <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                      <%--  <li><a href="Project-Management.aspx">Project Management</a></li>--%>
                        <li><a href="Outsourcing.aspx">Outsourcing</a></li>
<%--                        <li><a href="Product-Selection.aspx">Product Selection</a></li>--%>
                        <li><a href="Optimization.aspx">Optimization</a></li>
                        <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud Services</a></li>-->
                    </ul>
                </li>
                <li id="m_dproducts" class="dropdown"><a href="DynamicsProducts.aspx">Dynamics Products</a>
                    <ul>
                        <li><a href="Microsoft-Dynamics-AX.aspx">Dynamics AX</a></li>
                        <li><a href="Microsoft-Dynamics-CRM.aspx">Dynamics CRM</a></li>
                        <li><a href="Microsoft-Dynamics-GP.aspx">Dynamics GP</a></li>
                        <li><a href="Microsoft-Dynamics-Nav.aspx">Dynamics NAV</a></li>
                        <li><a href="Microsoft-Dynamics-SL.aspx">Dynamics SL</a></li>
                    </ul>
                </li>
                <li id="m_industries" class="dropdown"><a href="Industries.aspx">Industries<!--ˇ--></a>
                    <ul>
                        <li><a href="Construction-Management.aspx">Construction</a></li>
                        <li><a href="Contract-Software.aspx">Contracting</a></li>
                        <li><a href="Project-Management-Software.aspx">Projects</a></li>
                        <li><a href="Retail-Management.aspx">Retail</a></li>
                        <li><a href="Oil-companies.aspx">Oil &amp; Gas</a></li>
                        <li><a href="Trading.aspx">Trading</a></li>
                        <li><a href="Logistics.aspx">Logistics / Distribution</a></li>
                        <li><a href="ProfessionalServices.aspx">Professional Services</a></li>
                        <li><a href="ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                        <li><a href="Group-Companies.aspx">Group Companies</a></li>
                    </ul>
                </li>
                <li id="m_blog"><a href="blog/">Blog</a></li>
                <li id="m_careers"><a href="Careers/">Careers</a></li>
                <li id="m_contact"><a href="Contactus.aspx">Contact Us</a></li>
            </ul>
        </div>
    </div>
</div>
