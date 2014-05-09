<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Construction-Management-Software.aspx.cs" Inherits="Construction_Management_Software" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Construction Management Software | CEM AX Construct</title>
    <meta name="description" content="With increased competition adding intensity to the growing economy, Construction companies are planning to complete their ambitious projects at a shorter period. However, this complex business involves material, manpower and many third party services like partnering, financing etc., from various parts of the world. Adding to this are compliance requirement and quality norms from customers, government and unions set a new benchmark making the business even more complex. CEM Construct AX Product designed to meet the chalenges in constrction industry." />
    <meta name="keywords" content="AX 2012 Subcontracting, construction erp software, construction software , construction services, construction management software, construction erp, microsoft dynamics for construction, erp software, erp system, construction management, construction industry software, construction project software, construction business software, intelligent building solutions, alternative building solutions, building system solutions, advanced building solutions, building management solutions, construction contract management, subcontract management,  contract management systems, subcontractor management, project planning software, project tracking, project scheduling software, project tracking system, project planner software, contractor software, contract labour management system, contract management process, contract management solution, service contract management" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_products').addClass('bluebg');
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/construct_banner.jpg" alt="CEM Construct" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="#overview">CEM AX Construct</a></li>
                <li><a href="#unionpayroll" class="firstlevel">Union Payroll </a></li>
                <li><a href="#advancedproject" class="firstlevel">Advanced project</a></li>
                <li><a href="#subcontract" class="firstlevel">Subcontract</a></li>
                <li><a href="#advancedinventory" class="firstlevel">Advanced inventory</a></li>
                <li><a href="#workforce" class="firstlevel">Workforce augmentation</a></li>
                <li><a href="#pmv" class="firstlevel">Plant Machinery and Vehicle </a></li>
                <li><a href="#staff" class="firstlevel">Staff accomodation </a></li>
                <li><a href="#rmc" class="firstlevel">Ready-mix concrete </a></li>
                <li><a href="#management" class="firstlevel">Tools management</a></li>
                <%--<li class="socialiframes" data-twttr-id="twttr-sandbox-0">
                    <iframe width="243" scrolling="no" height="350" frameborder="0" id="twitter-widget-0"
                        allowtransparency="true" class="twitter-timeline twitter-timeline-rendered" style="border: medium none;
                        max-width: 100%; min-width: 180px;" title="Twitter Timeline"></iframe>
                </li>--%>
            </ul>
            <div class="tab_container">
                <div style="padding:0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                    <h1>
                        CEM AX Construct</h1>
                        <p>
                          Project work typically poses the biggest challenge for Enterprise Resource Planning (ERP) systems. Each project can have a life of its own. And nowhere does project work become more complex than the construction industry. Materials arrive late and production schedules slip, but payrolls still need to be met, schedules change and clients kept informed. Adding to this are compliance requirements and quality norms from customers, government and unions that set a new benchmark in making the business even more complex.</p>
                        <p>
                             Luckily, CEM AX Construct has the power to bring all these loose ends and moving parts into focus – giving management the power to make informed decisions in real time.
                             <br>
                            Construct is designed to meet the needs of construction companies, sub contracting and general contracting companies. All activities from pre-construction to post construction stages can be captured and monitored in detail. You can spend more time managing and less time administering your projects.</p>
                        <p>
                           The AX platform is Microsoft’s most powerful, robust ERP system. Yet AX is very similar to the widely used and familiar MS Office interface.<br>
                            In order to provide a comprehensive solution, CEM has added the following modules within Microsoft Dynamics 2012 ERP:</p>
                        <ul class="ul_reasons">
            <%--                <li>Payroll, including Union Payroll</li>--%>
                            <li>Advanced Project Management</li>
                            <li>Subcontract Management</li>
                            <li>Advanced Inventory Management</li>
                            <li>Workforce Augmentation</li>
                            <li>PMV</li>
                            <li>Staff Accommodation</li>
                            <li>Concrete Purchase</li>
                            <li>Management Tools </li>
                        </ul>
                    </div>
                    <div class="tab_content" id="unionpayroll">
                        <h2>
                            Union Payroll</h2>
                        <ul class="ul_reasons">
                            <li>Integrates with projects and accounts payable</li>
                            <li>Union file summary and detail</li>
                            <li>Tracks union deductions for multiple labor classifications &amp; multiple unions</li>
                            <li>Powerful fringe benefit calculations</li>
                            <li>Integrates with time and attendance and time card</li>
                            <li>Tracks unlimited earnings and deduction codes</li>
                            <li>Configurable certified payroll report</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="advancedproject">
                        <h2>
                            Advanced Project Management</h2>
                        <ul class="ul_reasons">
                            <li>Manage project demographic by creating locations and project clusters</li>
                            <li>Complete Scope Management and Change Management for cost tracking and billing</li>
                            <li>Project segmentation by tracking the completion stages by control accounts</li>
                            <li>Quality management with the use of product codes for manpower and equipment usages</li>
                            <li>Secured access to project information and relevant transactions on a need-to-know basis</li>
                            <li>Extensive reporting such as budget vs. actual consumption by various project dimensions, Estimate at Complete etc.</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="subcontract">
                        <h2>
                            Sub Contract Management</h2>
                        <ul class="ul_reasons">
                            <li>Manage subcontract’s scope, work breakdown structure, scope breakup, payment milestone & variation orders</li>
                            <li>Track advances and retentions</li>
                            <li>Track and manage subcontract related documents such as Performance bond, Warrantees etc.</li>
                            <li>Track invoices against scope and scope details</li>
                            <li>Track material issues and food & accommodation expenses related to subcontracts for prompt back charging</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="advancedinventory">
                        <h2>
                            Advanced Inventory Management</h2>
                        <ul class="ul_reasons">
                            <li>Categorization of items</li>
                            <li>Item Creation Wizard</li>
                            <li>Budgeting by various levels of item hierarchy</li>
                            <li>Returnable item management – Issue and Return to Projects, Vendors and Clients</li>
                            <li>Surplus Declaration</li>
                            <li>Transit Items Management</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="workforce">
                        <h2>
                            Workforce Augmentation</h2>
                        <ul class="ul_reasons">
                            <li>Maintain trade agreements for labor supply with effective dates</li>
                            <li>Maintain project-wise timesheets for hired employees</li>
                            <li>Track the food & accommodation of hired employees for prompt back charging</li>
                            <li>History of hired employees and option for purging the hired employee details</li>
                            <li>Certify use payment certification process for approving vendor invoices</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="pmv">
                        <h2>
                            Plant Machinery and Vehicle (PMV) management</h2>
                        <ul class="ul_reasons">
                            <li>Manage Equipment Purchase & Hiring (External and Internal hiring)</li>
                            <li>Trade agreements for both internal & external hiring</li>
                            <li>Integration of PMV with fixed assets module</li>
                            <li>Maintain & track equipment log sheet</li>
                            <li>Equipment transfer history</li>
                            <li>Equipment hire renewal with history</li>
                            <li>Track fuel consumption</li>
                            <li>Manage mobilization/demobilization costs of equipment hire</li>
                            <li>Regular alerts for equipment related documents including registration, license, Security pass, warranty period expiration, etc.</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="staff">
                        <h2>
                            Staff accommodation</h2>
                        <ul class="ul_reasons">
                            <li>Resources stay management in internal and external camps</li>
                            <li>Manage your camp capacity, accommodation of diversified occupants and guests Manage Trade agreement for caterers to facilitate the accurate cost booking</li>
                            <li>Manage Trade agreement for caterers to facilitate the accurate cost booking</li>
                            <li>Convenient user experience for check in & check out of the occupants</li>
                            <li>Efficient camp capacity planning</li>
                            <li>Manage the occupant’s food expenses</li>
                            <li>Cost allocations to respective projects</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="rmc">
                        <h2>
                         Ready-mix concrete (RMC) purchase</h2>
                        <ul class="ul_reasons">
                            <li>Maintain optional items along with main concrete items</li>
                            <li>Maintain quality thresholds for partial truck load and pumping charges</li>
                            <li>Summarized and detailed reporting on concrete purchase for invoice certification</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="management">
                        <h2>
                            Tool management (Scaffolding)</h2>
                        <ul class="ul_reasons">
                            <li>Manage purchasing and hiring of scaffold</li>
                            <li>Manage Trade agreements for purchase, hire and discounts</li>
                            <li>Analyze the scaffold logistics from a list of requested items to invoiced items</li>
                            <li>Better utilization of internal materials</li>
                            <li>Scrap, Lost Management of materials</li>
                            <li>Flexible and controlled receipt management</li>
                            <li>Track vendor invoice & has better control and reconciliation</li>
                        </ul>
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
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
