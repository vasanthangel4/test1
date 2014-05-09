<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-SL.aspx.cs" Inherits="Microsoft_Dynamics_SL" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="nav" Src="Services_erp_nav.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="gp" Src="Services_erp_gp.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="sl" Src="Services_erp_sl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics SL</title>
    <meta name="description" content=" Microsoft Dynamics SL is a powerful project management tool designed to manage your complex project accounting. Dynamics SL simplifies your business workflow and delivers long-term value into your company’s existing platform. SL provides you the agility to adapt and connect with any independent software vendors (ISVs), other line-of-business applications or any other legacy systems. Microsoft Dynamics SL streamlines all your business processes and information to gain actual insight across your entire organization. Designed for project-driven organizations, Microsoft Dynamics SL provides greater control, enhanced profitability and more adaptable flexibility all of which transforms your business to an enduring client relationship" />
    <meta name="keywords" content="microsoft dynamics sl, dynamics sl, microsoft sl, ms dynamics sl, microsoft dynamic sl, microsoft dynamics sl support, sl support" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_dproducts').addClass('bluebg');

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
        <img src="Images/microsoftDynamicsSL.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">MS Dynamics SL</a></li>
                <li><a href="#top10" class="firstlevel">Top 10 reasons</a></li>
            </ul>
            <div class="tab_container">
                <div id="overview" class="tab_content">
                    <sl:services_erp ID="Services_erp1" runat="server" />
                </div>
                <div class="tab_content" id="top10">
                    <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                        Top 10 Reasons to Buy Microsoft Dynamics SL</h2>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        1. With SL support – it is easy to manage your business and projects—with greater flexibility</h3>
                    <p>
                      If you take a look around most businesses, you'll find that projects are everywhere. The real challenge is that most enterprise solutions aren't designed to manage them; and, conversely, most industry-specific solutions lack the necessary accounting tools. Microsoft Dynamics SL bridges this gap to deliver industry-leading core business functionality combined with robust accounting capabilities—and the flexibility to meet the distinctive requirements of your business.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        2. Get started quickly with a familiar, role-based solution offered by Microsoft Dynamics SL</h3>
                    <p>
                        Give people a solution they'll want to use, and help your business thrive. Designed to work like and with Microsoft® Office products, such as Microsoft Outlook®, Microsoft Excel®, or Microsoft Word, Microsoft Dynamics SL helps reduce training time and costs. People can get started right away using role-based menus, activity panes, and quick lists that make it easy to prioritize tasks. Enhanced search features incorporated in MS Dynamics SL lets you find what you need by simply typing few words, and provide a history of recently viewed reports and screens.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        3. Connect project accounting to Project Management using the SL support</h3>
                    <p>
                        Align your finances and processes by bringing together project accounting and project management—and maintain projects from either solution. Two-way data integration between Microsoft Dynamics SL and Microsoft Project Server gives you access to comprehensive project-based data, including resources, budgets, revenue, and allocations. Up-to-date information is mapped and kept current in both applications to help ensure accuracy and reduce duplicate data entry.
"Everything we do for a customer is now stored in a single system. By having one repository for all this information in Microsoft Dynamics SL, we will be much more strategic in our approach and maximize the profitability of each project." — Christine Weldon, Head of Finance, TWP Projects.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       4. Microsoft Dynamics SL - Gain real-time access to key reporting data</h3>
                    <p>
                        With Microsoft Dynamics SL, you can go beyond basic reporting with a host of features designed to place the information you need at your fingertips. With Dynamics SL, you get a predefined, role based view of data by using Quick Query to filter, customize, or drill back to the original transaction—and easily export to Microsoft Excel for further review. Transform your business strategies with quick access to advanced analytics for the project, distribution, and financial data, and make sure that data is current with refreshable analytic cubes. You can also convert unwieldy volumes of data into concise, relevant information to be shared across your organization with Microsoft SQL Server® Analysis Services.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                     5. Support project-based processes in a new way</h3>
                    <p>
                        Project-driven organizations must meet a range of requirements for each job, including tracking costs, providing status updates, and often submitting detailed billing data that is in compliance with complex regulatory and industry-specific requirements. Microsoft Dynamics SL is designed to support the intricacies of these project based requirements and processes—from financial reporting, job costing, time and expense, and purchasing goods and services, to managing subcontractors, supervising the workforce, and even winning new businesses.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       6. MS Dynamics SL – Tailor-made solution to meet your needs</h3>
                    <p>
                        The fact is that no two businesses are alike. Microsoft Dynamics SL offers out-of-the-box functionality to meet your unique business and industry-specific needs—complete with built-in customization tools that make it flexible and easy to adapt without extensive development work. You can also integrate multiple data sources and applications using web services and the Microsoft.NET Framework using the Microsoft Dynamics SL.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                   7. Empower remote employees with 24/7 web access offered by MS Dynamics SL</h3>
                    <p>
                      Keep people connected and help ensure that all your projects run smoothly with convenient, web-based access from any location, at any time. With the Business Portal for Microsoft Dynamics SL, your employees can complete virtually any project-related task—from setting up projects and assigning resources to creating budgets, approving project transactions, and more—all via the web.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       8. Microsoft Dynamics SL simplifies your access to compliance-related data</h3>
                    <p>
                        Make it easier to manage compliance-related business documentation online using Microsoft Dynamics SL. Quickly store and associate backup documents with a specific screen for future reference or to provide proof of receipt. You can also keep up with U.S. government contractor regulations by using the Government Contractor report to assist in Defense Contract Audit Agency (DCAA) inspections.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       9. Share information across your company</h3>
                    <p>
     Go digital and transform document management so that it's easy to share data. Using SL Support, you can gain a comprehensive view of orders, requests, customer information, and more on a single, consolidated screen. Quickly store and share key documents such as purchase orders, invoices, and shipping information using a Microsoft SharePoint® site—and eliminate paper piles and "silos" that hinder collaboration.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                     10. Connect with innovative applications and technologies</h3>
                    <p>
                       Take advantage of the latest technology innovations with a web services architecture that leads to better performance and efficient application integrations—both for your current systems and those you adopt in the future. With web services, you can align your sales, service, and back-office activities using Microsoft Dynamics CRM, a solution that works with Microsoft Dynamics SL. You can also take advantage of other Microsoft products, such as SQL Server, Windows, SharePoint, and Project Server. Your long-term investment is backed by Microsoft's commitment to on-going innovation with a 10-year support life cycle for each major product release, as well as a rich Business Ready Enhancement Plan that includes unlimited online training, self-service support, and more.</p>
                    <p>
                        You can also take advantage of other Microsoft products, such as SQL Server, Windows,
                        SharePoint, and Project Server. Your long term investment is backed by Microsoft's
                        commitment to on-going innovation with a 10-year support life cycle for each major
                        product release, as well as a rich Business Ready Enhancement Plan that includes
                        unlimited online training, self-service support, and more.</p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
