<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-GP.aspx.cs" Inherits="Microsoft_Dynamics_GP" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="nav" Src="Services_erp_nav.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="gp" Src="Services_erp_gp.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="sl" Src="Services_erp_sl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics GP</title>
    <meta name="description" content=" Microsoft Dynamics GP is an innovative, flexible, end-to-end financial management solution having deep functionality and adaptability that extends to support the advanced needs and reach of insight across your entire organization. Dynamics GP offers you the unique combination of business management solution that connects and integrates all your industrial process from finance to customer service and information from basic reporting to sophisticated analyses into one streamlined platform. " />
    <meta name="keywords" content="microsoft dynamics gp, dynamics gp, gp software, ms dynamics gp, gp support, ms gp, gp partner, ms dynamic gp, gp upgrade, gp modules, gp licence, gp implementation, erp, microsoft dynamics, customer relationship management, enterprise resource planning" />
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
        <img src="Images/microsoftDynamicsGP.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">MS Dynamics GP</a></li>
                <li><a href="#top10" class="firstlevel">Top 10 reasons</a></li>
            </ul>
            <div class="tab_container">
                <div id="overview" class="">
                    <gp:services_erp ID="gp" runat="server" />
                </div>
                <div class="tab_content" id="top10">
                    <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                       Top 10 Reasons to Buy Microsoft Dynamics GP</h2>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       1. Meet your unique needs from the start with GP Implementation</h3>
                    <p>
                       Name your business process, and we can help you manage it. Microsoft Dynamics GP offers proven capabilities that automate and connect the full range of Financial Management, Supply Chain Management, Human Resource and Payroll Management, Manufacturing, and Project Management. Out of the box, you can adapt the functionality to meet the unique needs, backed by industry-specific expertise and support from a worldwide, local ecosystem of Microsoft Certified Partners and ISVs (Independent Software Vendors).</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      2. Microsoft Dynamics GP - gives people a preferred solution they'll want to use</h3>
                    <p>
                       Success starts when people actually take full advantage of your business systems. Designed to work like and with Microsoft® Office Word, Microsoft Office Excel®, and Microsoft Office Outlook®, Microsoft Dynamics GP helps reduce training time and costs. With GP implementation, people can focus on their responsibilities, rather than on chasing information and juggling applications, with RoleTailored home pages and graphical dashboards that deliver personalized access to information. And they'll keep critical tasks on track and ensure consistent processes with automated notifications and alerts, from these GP modules.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       3. Tailor your solution to work the way your business does—without complicated IT efforts with GP Implementation</h3>
                    <p>
                       No two businesses are alike—and industry specific needs vary widely. With Microsoft Dynamics GP, you can quickly add new capabilities using built-in personalization tools: Create specialized views and new windows, automate tasks specific to your business, and even build light applications. Using Web services and the Microsoft.NET Framework, you can integrate with many data sources and applications, even if they're built on non-Microsoft platforms. You'll also find custom development to be easier and more cost-effective with familiar Microsoft technologies and industry standards such as XML.</p>
                    <p>
                        "The dashboard reporting in Microsoft Dynamics GP 2010 will be very helpful for our management team. They rely on live and accurate management information at any particular time… One of the mantras we have here in management is… “If you don't know it, you can't manage it." — David Thompson, Corporate Services Director, Central YMCA London.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        4. The Dynamics GP Software - makes it easy to access critical information</h3>
                    <p>
                        Stay connected, speed planning, and fuel performance with role-based dashboards and KPIs that include gauges, charts, and graphs relevant to people's roles. Stay current—but keep it simple— with more than 220 out-of-the-box Office Excel reports that can be instantly refreshed. View and analyze data from a summary pulse down to a specific source record, with drill-back views into Microsoft Dynamics GP from Office Excel, Microsoft SharePoint® Foundation, Microsoft SharePoint Server, and Microsoft SQL Server® Reporting Services.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       5. Beyond basic reporting – the perfect ERP solution</h3>
                    <p>
                       Today's businesses simply expect real-time access to decision-driving information and reports. With Microsoft Dynamics GP, you can go well beyond basic reporting and use familiar tools and formats to make decisions that can take your business further, faster. With a tailor made Microsoft Dynamics GP, transform sales strategies with advanced analytics such as predictive modeling and shopping basket analysis. Stay current with refreshable Office Excel reports that include multiple data sources. Turn unwieldy volumes of data into relevant information that can be shared across your organization through SQL Server Analysis Services in just a glimpse.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      6. Enterprise Resource Planning extends insight across your entire organization</h3>
                    <p>
                        Open the flow of information to people—you won't need a full user license or need to log on to Microsoft Dynamics GP. With security-enhanced, portal-based access from virtually any location, employees can use their preferred applications, including Office Excel, Office Outlook, and mobile devices, to access and work with the Microsoft Dynamics GP information most relevant to their roles.</p>
                    <p>
                       "Our stores connect seamlessly to Microsoft Dynamics GP to manage our warehouse, wholesale, Web business, purchasing, payables, banking, and financial reporting. We haven't found anything this system can't handle." — Rex Bratton, Vice President of Finance, Peekay.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      7. GP Support - Connect your people and systems</h3>
                    <p>
                        Bring together employees, customers, and vendors to strengthen all aspects of business performance and relationships with the Dynamics GP Support. To start with, teams can quickly and accurately move tasks from first step through final approval with built-in workflows. Sales, service, and business management staff can collaborate through built-in integration with Microsoft Dynamics CRM. Without writing new code, you can centralize specific information—for example, details related to a customer, client, or vendor—previously housed in separate systems, simplifying tracking and helping people work across teams and departments. Plus, the latest innovations in Dynamics GP means that developers can choose from more than 350 Web services and use a simplified architecture to integrate with a world of applications and data sources.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                     8. Accelerate your return on investment easily with MS Dynamics GP</h3>
                    <p>
                        Apart from just reducing deployment time with tools that help accelerate installation time, you can also quickly set up core functionality, and efficiently migrate and update data from legacy systems using the MS Dynamics DP software. Industry installation templates help you adapt your system to meet specific needs, and flexible deployment options—including on-premise or partner hosted—makes it easier to optimize your IT budget and resources.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       9. Ensure scalability and performance as your business grows</h3>
                    <p>
                      Don't settle today for a "quick fix" or an alternative that won't meet your tomorrow’s needs. Microsoft Dynamics GP, combined with Microsoft SQL Server, can scale easily—from 1 to 1,000 users—without compromising on the system performance, as well as manage high-speed, high-volume transactions. And with flexible Business Ready Licensing, you can buy what you need today and quickly add capabilities and additional users as your business changes and grows.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       10. Count on innovation now and into the future with Dynamics GP</h3>
                    <p>
                        Microsoft Dynamics GP delivers a long-term return on investment through consistent product releases and rich integration with Microsoft technology innovations. You can run your business knowing that you're backed by a Microsoft commitment to a 10-year support life cycle for each major release, as well as a rich Business Ready Enhancement Plan that includes unlimited online training, access to self-service support, and more.</p>
                    <p>
                        "Together with Microsoft Dynamics GP 2010, we are building a better future, a more secure business, and a better way to keep our business running more efficiently." — Phil Hodges, IT Director, Clean Burn</p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
