<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-CRM.aspx.cs" Inherits="Microsoft_Dynamics_CRM" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="services" TagPrefix="CRMServices" Src="~/ServicesCRM.ascx" %>
<%@ Register TagName="services" TagPrefix="sharepoint" Src="~/SharePoint.ascx" %>
<%@ Register TagName="services" TagPrefix="projectserver" Src="ProjectServer.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft Dynamics CRM</title>
    <meta name="description" content=" Microsoft Dynamics CRM is a fast, flexible and familiar business software that gives worldwide organizations the applications and tools they need to improve marketing, sales, and customer service efficiency and effectiveness" />
    <meta name="keywords" content="crm, crm software, microsoft crm, microsoft dynamics crm, crm system, crms, dynamics crm, social crm,crm online, crm systems,crm definition, crm dynamics, crm tools, crm 2011, customer relationship management software, best crm, microsoft dynamic crm, microsoft dynamics crm online, crm consulting, crm outlook,crm solution, crm implementation,crm project management, crm 2012,crm consultants, crm support, construction crm, crm migration, crm installation, crm for manufacturing, corporate crm, crm optimization, crm selection, crm upgrade,crm software selection, crm staffing, dynamics crm migration, crm video, crm seminar" />
    <meta name="robots" content="index, follow" />
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
        <img src="Images/microsoftDynamicsCRM.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">MS Dynamics CRM</a></li>
                <li><a href="#crmseminar" class="firstlevel">CRM seminar video</a></li>
                <li><a href="#top10" class="firstlevel">Top 10 reasons</a></li>
            </ul>
            <div class="tab_container">
                <div id="overview" class="tab_content">
                    <CRMServices:services ID="crmservices" runat="server" />
                </div>
                <div id="crmseminar" class="tab_content">
                    <h2 style="color: #0b76ba; font-weight: normal; padding-bottom: 10px; margin-bottom: 10px;
                        padding-top: 10px;">
                        CRM Seminar Video</h2>
                    <iframe width="420" height="315" src="//www.youtube.com/embed/LUuruZF1vjI" frameborder="0"
                        allowfullscreen></iframe>
                    <p>
                       The seminar demonstrates several insights on CRM Definition Selection Usage, Advantages, Business Intelligence, Migration, Optimization, Upgrade and Support.</p>
                </div>
                <div class="tab_content" id="top10">
                    <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                        Top 10 Reasons to Buy Microsoft Dynamics CRM</h2>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        1. CRM integration with the Microsoft Office system and Office Outlook</h3>
                    <p>
                        Microsoft Dynamics 2012 transforms Outlook into a single interface to access all
                        CRM processes and manage emails. It allows employees to easily pull information
                        from Microsoft Dynamics CRM into Office system applications such as Microsoft Office
                        Excel spread sheet software and Microsoft Office Word processing software</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        2. Dynamics CRM provides easy access to interface</h3>
                    <p>
                        A prescriptive, results oriented interface guides users through tasks including
                        lead qualification, service cases and sales opportunities by following pre-defined
                        steps and best practices. Dynamics CRM provides teams with easy access to important
                        data and works with Microsoft applications that users already know to help create
                        early user acceptance and helps taking next steps without changing screens</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        3. Fully Utilize Customer Information with CRM Upgrade</h3>
                    <p>
                        CRM Upgrade provides instant access to complete customer information (including
                        preferences, relationships, purchase history, and more), enabling your company to
                        respond quickly to changing customer preferences, needs and emerging opportunities</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        4. Microsoft CRM deployment at your ease</h3>
                    <p>
                        Microsoft Dynamics CRM is available as a cloud service or installed on-premise as
                        per your needs</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        5. CRM Software selection offers greater visibility</h3>
                    <p>
                        When you select Microsoft Dynamics CRM, it delivers real-time business intelligence
                        through CRM dashboards &amp; charts. These include sales forecasts, buying patterns,
                        sales history &amp; more for clear visibility of key performance metrics, across
                        all key areas to support timely, informed decision making</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        6. Get instant mobile support with an effective CRM Solution</h3>
                    <p>
                        CRM solution helps enable field workers to get instant access to customer data from
                        most popular portable devices including mobile phones with Web browsers and laptops</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        7. Integrates with many Applications &amp; Data Sources</h3>
                    <p>
                        Dynamics CRM connects processes and centralizes data in a single user interface
                        by integrating with other services including: accounting database, email marketing,
                        websites, customer portals, survey tools, web analytics and many more</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        8. Corporate CRM’s quick adaptability</h3>
                    <p>
                        Dynamics Corporate CRM is quickly tailored to manage all your relationships &amp;
                        processes without the need to develop custom applications. This can include asset
                        management, event management, projects and virtually any other relationship</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        9. Easy CRM Migration is possible</h3>
                    <p>
                        It takes less time to migrate existing contact data to Microsoft dynamics CRM</p>
                    <h3 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                        10. CRM optimization provides Effective Data Management</h3>
                    <p>
                        Reduce the time wasted digging through old data with Microsoft’s latest version
                        of CRM. This software intelligently cleanses your data, eliminating duplications,
                        decreasing your cost per engagement</p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
