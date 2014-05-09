<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-AX.aspx.cs" Inherits="Microsoft_Dynamics_AX" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics AX</title>
    <meta name="description" content="CEM business solutions offers Microsoft Dynamics AX Implementation, Microsoft Dynamics AX Upgrade, Microsoft Dynamics AX for Construction, Microsoft Dynamics CRM and Microsoft Dynamics ERP Implementation services" />
    <meta name="keywords" content="Dynamics Ax Customer Portal,Microsoft Dynamics AX,Microsoft Dynamics AX ERP,Microsoft Dynamics AX Implementation,erp, ax, axapta, microsoft dynamics ax, microsoft dynamics ax 2012, microsoft dynamics erp, ax 2012, microsoft dynamic, axepta, microsoft dynamic ax, ms ax, microsoft dynamics ax erp, microsoft dynamics ax for retail, microsoft dynamics ax axapta, microsoft dynamics ax implementation, ax implementation, ms dynamics ax modules, axapta modules, microsoft dynamics ax customization" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_dproducts').addClass('bluebg');
            //Default Action
            //$(".tab_content").hide(); //Hide all content
            //$("ul.tabs li.activetab").addClass("active").show(); //Activate first tab
            //$(".tab_content:#tab1").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                //$(".tab_content").hide(); //Hide all tab content
                //var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                //$(activeTab).fadeIn(); //Fade in the active content
                //return false;
            });
        });
    </script>
    <style type="text/css">
        table td
        {
            padding: 0 15px 0 0;
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/ax2012.jpg" class="active" alt="ax2012" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="activetab"><a href="#overview">Microsoft Dynamics AX</a> </li>
                <li><a href="#new" class="firstlevel">What's new</a></li>
                <li><a href="#services" class="firstlevel">Services</a></li>
                <li><a href="#Financial" class="secondlevel">Financial </a></li>
                <li><a href="#Procurement" class="secondlevel">Procurement &amp; Supply Chain</a></li>
                <li><a href="#Sales" class="secondlevel">Sales Orders</a></li>
                <li><a href="#Inventory" class="secondlevel">Inventory - Warehousing</a></li>
                <li><a href="#Production" class="secondlevel">Production -Manufacturing</a></li>
                <li><a href="#Expense" class="secondlevel">Expense </a></li>
                <li><a href="#HR" class="secondlevel">HR and Payroll</a></li>
                <li><a href="#Project" class="secondlevel">Project </a></li>
                <li><a href="#top" class="firstlevel" style="padding-left: 40px; max-width: 138px;">
                    Top 10 reasons</a> </li>
            </ul>
            <div class="tab_container">
                <div style="padding: 0 10px 0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                        <h1 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                          Why Microsoft Dynamics AX?</h1>
                        <p>
                           Designed for mid-sized and larger companies, Microsoft Dynamics AX is a 
                           complete ERP solution, that streamlines the financial, customer relations and supply chain processes.
                            As Microsoft’s newest and most powerful ERP platform, AX allows users to connect with global subsidiaries and customers,
                             empowering organizations to reach their full potential. AX simplifies multiple site operations by 
                             standardizing processes and providing dashboard visibility across the entire enterprise. 
                           </p>
                        <p>
                            <strong>Why Microsoft Dynamics AX from CEM?</strong></p>
                        <p>
                            CEM has embraced the AX platform, and has already developed several
                             <a href="CEM-Products"
                                title="CEM Products">add-ons</a> that dramatically enhance AX’s already considerable capabilities.
                                 For example, CEM AX ProjectPro provides analysis for both top management as well as planners. 
                                 ProjectPro can be integrated with existing modules, such as fixed assets, inventory, project accounting,
                                 budget validation among others to provide a clear status of multiple on-going projects at any point in time.
                                  Several of CEM’s AX add-ons are Certified for Microsoft Dynamics (CfMD), the highest standard for partner-developed software. To see the CEM AX add-on software available for your kind of organization visit
                                 <a href="Industries" title="Industries">Industries. </a>
                        </p>
                    </div>
                    <div class="tab_content" id="new">
                        <h2 style="color: #0b76ba;">
                           What’s New with AX 2012</h2>
                        <p>
                            Microsoft Dynamics AX 2012 provides a new approach to upgrades that significantly 
                            reduces an organization’s downtime during the upgrade process. 
                            Shorter downtime affects operations less and lowers the total cost of the upgrade. 
                            </p>
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <h3>
                                          Role Tailored User Interface</h3>
                                        <p>
The enhanced RoleTailored user interface spans the Microsoft Dynamics AX Windows client and Enterprise Portal and helps to drive productivity and business insight through its familiar user experience and connection with business processes. Microsoft Word and Excel®, familiar and powerful tools that workers already know and use, work bi-directionally with Microsoft Dynamics AX 2012 to enhance worker productivity, and a more flexible help system provides added support when needed.</p>
                                    </td>
                                    <td>
                                        <h3>
                                           Built-In Industry Capabilities</h3>
                                        <p>
                                           Microsoft Dynamics AX 2012 is purpose-built for organizations involved in Manufacturing, Public Sector, Professional Services, Distribution and Retail, delivering industry-specific capabilities out-of-the-box. New in this AX 2012 release is support for public sector organizations. Microsoft Dynamics AX 2012 uniquely combines industry-specific capabilities in one solution and makes them available to all customers, benefiting organizations that require capabilities.</p>
                                        <p>
                                            &nbsp;</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>
                                            Microsoft Dynamics AX 2012 <strong>Core ERP Suite Capabilities</strong></h3>
                                        <p>
                                           Microsoft Dynamics AX implementation raises the bar for delivering powerful ERP capabilities and supporting operational efficiency in many key functional areas. Microsoft Dynamics AX 2012 includes new capabilities such as supplier relationship management, case management, and the Audit Work Bench, as well as important enhancements in the following domains: finance, sales and marketing, procurement, project accounting, human capital management, supply chain management, inventory management, and global risk and compliance.</p>
                                    </td>
                                    <td>
                                        <h3>
                                           Microsoft Dynamics AX 2012 Framework</h3>
                                        <p>
                                           AX 2012 enhancements include a graphical workflow editor and cloud-based services that help reduce IT complexity and front-end capital requirements. Application Integration Framework enhancements and new programming concepts help IT professionals write less code. Role-based security accelerates the implementation of internal controls. And a host of new and improved Enterprise Portal features deliver the benefits of Microsoft Dynamics AX 2012 through the Internet and a web browser.</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>
                                            Business Intelligence and Reporting</h3>
                                        <p>
                                           Microsoft Dynamics AX 2012 Business Intelligence and Reporting include more than 800 Microsoft SQL Server® Reporting Services reports, 11 SQL Server Analytics Server data cubes, and enhancements to the framework.</p>
                                    </td>
                                    <td>
                                        <h3>
                                           Application Foundation</h3>
                                        <p>
                                           Master data, reference data, and global engines are the foundation of the AX 2012 application. The enhancements in these three areas simplify the definition of master and reference data and the use of global engines across the multi-entity enterprise.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="services" class="tab_content">
                        <h2>
                            Upgrade to AX 2012 and drive your business into the future.</h2>
                        <br />
                        <b><a href="Contact_RequestForm.aspx?formname=AXUpgrade" rel="clearbox[height=550,,width=800,,scrolling=no]"
                            style="color: #7e9c2a">
                            <blink>Click here to Request AX 2012 Upgrade </blink>
                        </a></b>
                        <p>
                           CEM knows AX 2012. The experience gained from implementing over 80 AX installations around the world, means your CEM team knows what they are doing. Couple that expertise with a customer satisfaction rating of 97.5% - and you can rest assured that CEM will do the job right!
                        </p>
                        <br />
                        <div class="ax_links">
                            <a href="../downloads/MicrosoftDynamicsAX2012_Manufacturing_factsheet.pdf" target="_blank">
                                <img src="images/ax_manufacturing_organizations.jpg" alt="manufacturing organizations" /></a>
                            <a href="../downloads/Dynamics_AX_Public_Sector_fact_sheet_LR.pdf" target="_blank">
                                <img src="images/ax_public_sector.jpg" alt="public sector" /></a> <a href="../downloads/Microsoft_Dynamics_AX_2012_Services_factsheet.pdf"
                                    target="_blank">
                                    <img src="images/ax_services.jpg" alt="ax services" /></a> <a href="../downloads/MicrosoftDynamicsAX_Two-Tier_Mar-2010.xps"
                                        target="_blank">
                                        <img src="images/ax_two_tier.jpg" alt="ax two tier" /></a> <a href="../downloads/Dynamics_AX2009_FS_Overview.pdf"
                                            target="_blank">
                                            <img src="images/ax_retail.jpg" alt="retail" /></a>
                        </div>
                    </div>
                    <div id="Financial" class="tab_content">
                        <h2>
                           Microsoft Dynamics AX ERP’s Financial Management</h2>
                        <ul class="ul_reasons">
                            <li>General Ledger and Chart of Accounts Setup </li>
                            <li>Financial Dimension with Dimensional hierarchy </li>
                            <li>Bank Management and Setup </li>
                            <li>Bank Reconciliation</li>
                            <li>Accounts Payables</li>
                            <li>Vendor Check Runs and Electronic Payments </li>
                            <li>Accounts Receivables </li>
                            <li>Budgeting with Revisions and Approvals </li>
                            <li>Journal Approvals and workflow </li>
                        </ul>
                    </div>
                    <div id="Procurement" class="tab_content">
                        <h2>
                            Procurement &amp; Supply Chain Management
                        </h2>
                        <ul class="ul_reasons">
                            <li>Vendor Management </li>
                            <li>Purchasing </li>
                            <li>Purchase Requisitions </li>
                            <li>Vendor RFQ and Quotes </li>
                            <li>Workflow for Purchase Approvals </li>
                            <li>Automated Purchase Orders </li>
                            <li>MRP and Master Planning </li>
                            <li>Vendor Managed Inventory </li>
                            <li>Automated Vendor notifications for Drop ship </li>
                            <li>Automated 3 way matching of PO, Invoice and Goods Receipt Note/ Vendor Packing Slip</li>
                            <li>Vendor Statistics and Performance Management </li>
                        </ul>
                    </div>
                    <div id="Sales" class="tab_content">
                        <h2>
                            Sales Orders &amp; Customer Service</h2>
                        <ul class="ul_reasons">
                            <li>Customer Management </li>
                            <li>Credit Limits and Customer Profile Management </li>
                            <li>Sales Order Management with notes for customer service </li>
                            <li>Order fulfilment </li>
                            <li>Customer Rebate Management </li>
                            <li>Sales Commissions Setup and Automated Calculation </li>
                            <li>Multiple deliveries per order</li>
                        </ul>
                    </div>
                    <div id="Inventory" class="tab_content">
                        <h2>
                            Inventory Management and Warehousing</h2>
                        <ul class="ul_reasons">
                            <li>Item Master configuration with Attributes and SKUs </li>
                            <li>Item Dimensions including Lot Number, Batch, Serial Number and Location Control
                            </li>
                            <li>Bill of Materials (BOMs) &amp; Formulas </li>
                            <li>Bar-Coding Support in Microsoft Dynamics AX </li>
                            <li>Min, Max and Requirements Management </li>
                            <li>UNSPSC and other commodity classifications </li>
                            <li>Inventory Costing including LIFO, FIFO, Standard Costing, Weighted Average Costing
                                and FEFO </li>
                            <li>Bin, Location, Aisle and Pallet Management </li>
                            <li>Directed Pick and Directed Put-away </li>
                            <li>Yard Management &amp; Cross-docking </li>
                        </ul>
                    </div>
                    <div id="Production" class="tab_content">
                        <h2>
                            Production and Manufacturing</h2>
                        <ul class="ul_reasons">
                            <li>Production</li>
                            <li>Routes and Operations Configuration</li>
                            <li>Work Centres and Route Planning</li>
                            <li>Job Costing</li>
                            <li>Production Planning</li>
                            <li>Shop Floor Control</li>
                        </ul>
                    </div>
                    <div id="Expense" class="tab_content">
                        <h2>
                            Expense Management</h2>
                        <ul class="ul_reasons">
                            <li>Business Policies and Expense rules</li>
                            <li>Workflow for multi-level expense approvals</li>
                            <li>Employee web portal for expense entry</li>
                            <li>Ability to attach and view expense receipts</li>
                            <li>Integration with General Ledger and Accounts Payable</li>
                        </ul>
                    </div>
                    <div id="HR" class="tab_content">
                        <h2>
                            HR Management and Payroll</h2>
                        <ul class="ul_reasons">
                            <li>Balanced Scorecard </li>
                            <li>Business Process Management</li>
                            <li>Human Resource Management</li>
                            <li>Payroll</li>
                        </ul>
                    </div>
                    <div id="Project" class="tab_content">
                        <h2>
                            Project Management and Project Accounting
                        </h2>
                        <ul class="ul_reasons">
                            <li>Project Budgeting</li>
                            <li>Tracking of Project Costs such as Labour, Vendor Purchases</li>
                            <li>Expense Tracking for Projects</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="top">
                        <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                            Top 10 Reasons to Buy Microsoft Dynamics AX 2012</h2>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            1. Achieve Fast Time to Value with one-of-a-kind Microsoft Dynamics AX 2012</h3>
                        <p>
                            	With prebuilt industry capabilities for manufacturing, distribution, professional services, retail, and Public Sector, Microsoft Dynamics AX helps you to meet your business requirements by deploying your solution quickly and delivering results right away. Highly unique, these AX modules streamline your organization end-to-end with rich ERP capabilities, including Human Capital Management, Financials, and Compliance Management. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	2. Catch hold of Axapta Modules and grow your Global Solution</h3>
                        <p>
                            	Removing barriers to international growth is essential for business development. Microsoft Dynamics AX 2012 enables you to expand your operations to new geographies with built in, country-specific localizations in a single solution to meet regulatory requirements for 36 countries. This AX enables entities across your multisite, global organization to share the same data, business rules, and processes in order to harmonize and streamline business practices. Also support your business growth by easily adding users and transactions, as well as configuring more complex business scenarios with Microsoft Dynamics AX implementation. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	3. Microsoft Dynamics AX Customization helps you work smart and fast</h3>
                        <p>
                           	Microsoft Dynamics AX 2012 can help you improve productivity by providing RoleTailored access to information, tasks, and business processes along with powerful business intelligence. Gain deeper insight into critical business data across your organization with relevant performance indicators, self-service business intelligence, and reporting in key business areas. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	4. Drive New Business with Microsoft Dynamics AX 2012</h3>
                        <p>
                            	Take advantage of new business opportunities by improving the insight into your business, and having the ability to implement change more easily. Microsoft Dynamics AX 2012 offers unlimited views of your business, giving you the visibility you most need. Enhanced modeling capabilities, such as the Organizational Model or workflow, helps you manage changes in the structure and business processes of your organization, and fosters innovation with a central business process repository, including capabilities for five major industries.</p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                          	5. AX Implementation - Support Business Today and Tomorrow</h3>
                        <p>
                          	Choose a flexible deployment model that best supports your organization and can easily be adjusted to meet your changing business demands: on-premises or in the cloud. Easily complement your installation with cloud-based services and take advantage of the flexible Microsoft Dynamics AX 2012 solution architecture that enables incremental implementations, changes, or upgrades. You can also choose the governance model that best fits your organization from Microsoft Dynamics AX: centrally managed, decentrally managed, or a combination of both. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	6. Gain a Competitive Edge</h3>
                        <p>
                           	Differentiate your business from the competition with the right Microsoft dynamics AX. The ability to rapidly adapt your system to support your unique needs can give you a significant edge over your competitors. The model-driven, layered architecture of Microsoft Dynamics AX Modules allow you to develop and maintain unique business processes easily and enables a relatively easy upgrade to new releases. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            	7. Get Everyone on Board with AX Implementation</h3>
                        <p>
                            	Employees would always want to use a solution with a familiar and intuitive user experience, which is simple to use and learn, ultimately making their jobs easier. Microsoft Dynamics AX 2012 enables people to find, sort, visualize, and use information through an easy-to-use user interface that looks and works like Microsoft Office. You can now work easily with everyday tools by sharing data between Microsoft Dynamics AX 2012 and Microsoft Office 2010. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	8. Microsoft Dynamics AX 2012 - Connect and Collaborate</h3>
                        <p>
                           	Easily connect employees, customers, suppliers, and partners through integrated self-service collaboration capabilities using Microsoft Dynamics AX 2012. With Microsoft Dynamics AX 2012 you can easily streamline basic supply chain collaboration with self-service, Microsoft SharePoint®–based vendor, customer, and employee portals, and end-to-end business process integration through Sites Services. It also lets you simplify advanced supply chain collaboration with adaptable web services, share information easily by using collaboration tools such as Microsoft LyncTM, and by creating SharePoint collaboration sites directly from Microsoft Dynamics AX 2012. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	9. Lower Your TCO with an effective ERP</h3>
                        <p>
                            	In addition to improved productivity gains, lower your total cost of ownership (TCO) through simplified life cycle management and quick installations. Use Microsoft Dynamics ERP RapidStart Services to help ensure a quick and reliable setup and configuration of your ERP solution. In alignment with the Role Tailored design of Microsoft Dynamics AX 2012, the simplified Business Value Licensing model ensures that you buy the exact number of licenses you need—no more, no less—with options to easily add more licenses as your business grows. </p>
                        <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                           	10. Leverage the Power of the Microsoft Platform</h3>
                        <p>
                          	With Microsoft Dynamics AX 2102, you get a business solution from Microsoft that is backed by an on-going commitment to research, development, and innovation. Combined with a global ecosystem of specialized partners, Microsoft Dynamics AX 2012 uses the power of the Microsoft platform.</p>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
