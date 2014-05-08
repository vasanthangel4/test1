<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-Nav.aspx.cs" Inherits="Microsoft_Dynamics_Nav" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="nav" Src="Services_erp_nav.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="gp" Src="Services_erp_gp.ascx" %>
<%@ Register TagName="services_erp" TagPrefix="sl" Src="Services_erp_sl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics Nav</title>
    <meta name="description" content="Microsoft Dynamics NAV is a comprehensive, easy-to-use ERP system for Mid-sized organization. Microsoft Dynamics NAV has always been the best solution empowering more than 30,000 companies, over one million users worldwide making them to increase productivity and streamline their business process by accelerating key functions within the organization." />
    <meta name="keywords" content="microsoft dynamics navision, microsoft erp navision, ms dynamics, ms dynamics nav, nav, navision, microsoft dynamics nav, dynamics nav, microsoft nav, ms dynamics nav, dynamic nav, ms nav, microsoft channel partner, microsoft dynamics nav support, nav support, nav partner, microsoft nav partner, erp, erp software, microsoft dynamics, microsoft dynamics nav implementation, microsoft dynamics nav installation, microsoft dynamics nav customization, microsoft dynamics nav upgrade, nav modules, nav implementation,Dynamics NAV, Construction add-on, Dynamics NAV construction vertical add-on,
Dynamics NAV construction vertical Dynamics, Dynamics NAV for construction,
Dynamics NAV Implementation Services, Dynamics NAV Partners in chennai, Dynamics NAV Support Services" />
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
        <img src="Images/microsoftDynamicsNAV.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">Microsoft Dynamics NAV</a></li>
                <li><a href="#top10" class="firstlevel">Top 10 reasons</a></li>
            </ul>
            <div class="tab_container">
                <div id="overview" class="tab_content">
                    <nav:services_erp ID="nav" runat="server" />
                </div>
                <div class="tab_content" id="top10">
                    <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                        Top 10 Reasons to Buy Microsoft Dynamics NAV</h2>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       1. It's More Than Just ERP</h3>
                    <p>
                       Microsoft has a complete vision for business applications, and it goes beyond what simple stand-alone ERP solution or accounting software can do. It starts with a unique combination of business intelligence, collaboration, and communication tools embedded across your core business processes. The result—empowered people who make decisions that help increase your margins, improve your cash flow, and ultimately drive your business growth.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      2. Helps Your People Work Better, Faster, and Smarter</h3>
                    <p>
                        Microsoft Dynamics NAV Role Tailored user experience surfaces the information and tasks relevant to specific job functions. By putting the resources you need most right at your fingertips—and ensuring that the solution works seamlessly with the Microsoft productivity tools you already know how to use—training time is replaced with an intuitive experience that helps people work better, faster, and smarter right from the start.</p>
                    <p>
                        "In our operation, the payback period for Microsoft Dynamics ERP with the Role Tailored interface was less than one year. The solution fits very closely to people's functions, which makes our work extremely efficient." – Jan Hessellund, Billund Airport</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      3. Looks Forward, Not Backward</h3>
                    <p>
                       In today's competitive landscape you need more than a backward-looking system of record to compete. Microsoft Dynamics NAV helps you become proactive and predictive with embedded business intelligence tools that help you not only solve problems but also prevent them from occurring in the first place. "As the CEO, I love Microsoft Dynamics solutions because they present a wealth of extremely useful information in simple ways and much earlier in the business cycle. We can look at our business in new ways, easily identifying opportunities for top-line growth and bottom-line savings." – C. Jeffery Wright, Urban Ministries Inc.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      4. Gets You Up and Running in Days, Not Weeks</h3>
                    <p>
                       RapidStart implementations tools help make the solution fast and simple to deploy. And because the solution is easy to learn and use, you can be up and running quickly with less disruption to your business. "The ability to have an ERP solution based in the cloud was critical for us, as it allowed us to deploy the software very quickly. And we were confident knowing that it was a proven product from Microsoft." – Paul Mooty, Faribault Woolen Mill</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        5. Works the Way You Do</h3>
                    <p>
                        A Microsoft Dynamics NAV solution supports your core business needs with comprehensive built-in capabilities that are easy to customize. And you can be confident that our global ecosystem of partners—backed by the strength of Microsoft—has built a broad range of solutions that address specific industry needs.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                      6. Transforms the Way You Work and Connect</h3>
                    <p>
                       Transform the way your people do business with a solution that works the way they want to use it—over the web, through a SharePoint portal, or using a traditional desktop computer. With a business solution from Microsoft, both office and remote employees can perform business processes and connect through the tools and channels they're used to—such as instant messaging, email, voice, and presence.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       7. Drives and Supports Your Business Growth</h3>
                    <p>
                        Microsoft Dynamics NAV support and propels your business goals and overall growth. It easily accommodates new processes and additional lines of business, and it scales to meet higher demands, without sacrificing performance or incurring major increases to your original technology investment—or your payroll.</p>
                    <p>
                        "Microsoft Dynamics ERP has played a critical role in our successful growth. With this solution, we can do business effectively with enterprises by offering resources and service levels that one would expect from a company much larger than ours. We quadrupled our business without adding people to the finance and IT departments." – Ron Wollner, Computer Data Source</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       8. Provides a Flexible Deployment Model</h3>
                    <p>
                        You can choose the deployment model that makes the most sense for your business, whether on-premises, in the cloud, or a combination of both. Plus, you'll have the elasticity to adjust as your needs change.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       9. Reduces Your Risk</h3>
                    <p>
                       Millions of users around the world already trust Microsoft to deliver innovative consumer and business solutions. In addition, our global partner network provides you with access to the local resources and expertise you need. And, when you purchase Microsoft Dynamics NAV, you can be assured of support for the version you buy for up to 10 years after its release.</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                       10. Propels Your Business Forward</h3>
                    <p>
                     With a business solution from Microsoft, your people will have the innovative, flexible tools they need to be proactive and productive—keeping you ahead of the competition. As a result, your business can move forward instead of standing still. 
                     <%--<a href="http://us.cembs.com/casestudies.aspx"
                            title="downloads">Please see presentation Reach us Globally Downloads </a>--%></p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
