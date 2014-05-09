<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Microsoft-Dynamics-AX-Services.aspx.cs" Inherits="Microsoft_Dynamics_AX_Services" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="ax" TagPrefix="axbanners" Src="ax2012_banner.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft dynamics Consulting | AX Upgrade | AX and ERP Constructions</title>
    <meta name="description" content=" Upgrade to AX 2012 and drive your business powerfully. Our services are engineered to assist you to drive your business powerfully. We have certified AX (2012) consultants with significant experience in implementing Dynamics AX over many years. " />
    <meta name="keywords" content="Microsoft dynamics ax upgrade, Dynamics AX implementation, Microsoft Dynamics Consulting " />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/uiTabsFirstItem.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/ax2012.jpg" class="active" alt="ax2012" />
    </div>--%>
    <%--</div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <%--</div>--%>
                <a href="Microsoft-Dynamics-AX.aspx" class="tablinks">MS Dynamics AX</a> <a href="Microsoft-Dynamics-AX-Whatsnew.aspx"
                    class="tablinks" style="padding-left: 60px; color:#000;  max-width: 138px;">What's new</a>
                <li class="active"><a href="#tab1" style="padding-left: 60px; max-width: 138px;">Services</a></li>
                <li><a href="#top" style="padding-left: 60px; max-width: 138px;">Top 10 reasons</a>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <h1>
                        Upgrade to AX 2012 and drive your business powerfully.</h1>
                    <br />
                    <b><a href="Contact_RequestForm.aspx?formname=AXUpgrade" rel="clearbox[height=550,,width=800,,scrolling=no]"
                        style="color: #7e9c2a">
                        <blink>Click here to Request AX 2012 Upgrade</blink>
                    </a></b>
                    <p>
                        CEM focus exclusively on Dynamics AX 2012 services. Our services are engineered
                        to assist you to drive your business powerfully. We have certified AX (2012) consultants
                        with significant experience in implementing Dynamics AX over many years. We have
                        successfully implemented Dynamics AX in various companies. We have a customer satisfaction
                        index of 97.5%, which is almost double the industry average.
                    </p>
                    <iframe src="AXupgrade_tab.aspx" style="width: 550px; border: 1px solid #eee; height: 280px;"
                        scrolling="no"></iframe>
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
                    <%--<table class="upgradeTable">
                    <tr>
                        <th>
                            Industry specific
                            <br />
                            capabilities
                        </th>
                        <td colspan="2">
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="upgradeTable_table_left">
                                <tr>
                                    <td>
                                        <b>Manufacturing</b><br />
                                        Lean, process and discrete manufacturing.
                                    </td>
                                </tr>
                            </table>
                            <table class="upgradeTable_table_left">
                                <tr>
                                    <td>
                                        <b>Distribution</b><br />
                                        Wholesale, warehouse management and distribution.
                                    </td>
                                </tr>
                            </table>
                            <table class="upgradeTable_table_left">
                                <tr>
                                    <td>
                                        <b>Retail</b><br />
                                        Merchandizing, point of sale and store management.
                                    </td>
                                </tr>
                            </table>
                            <table class="upgradeTable_table_left">
                                <tr>
                                    <td>
                                        <b>Services</b><br />
                                        Project and resources operation, talent and skills management.
                                    </td>
                                </tr>
                            </table>
                            <table class="upgradeTable_table_left">
                                <tr>
                                    <td>
                                        <b>Public Sector</b><br />
                                        Grants management, commitment and fund accounting.
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="upgradeTable_table">
                                <tr>
                                    <td>
                                        <b>Financial Management</b><br />
                                        <ul class="ul_reasons">
                                            <li>General ledger</li>
                                            <li>Accounts receivables and payables</li>
                                            <li>Bank management</li>
                                            <li>Budgetary control</li>
                                            <li>Share service support</li>
                                            <li>Compliance management</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="upgradeTable_table">
                                <tr>
                                    <td>
                                        <b>Human Capital Management</b><br />
                                        <ul class="ul_reasons">
                                            <li>Organizational and workforce management</li>
                                            <li>Recruitment and selection</li>
                                            <li>Development training and performance management</li>
                                            <li>Employee self service portal</li>
                                            <li>Expense management</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="upgradeTable_table">
                                <tr>
                                    <td>
                                        <b>Human Capital Management</b><br />
                                        <ul class="ul_reasons">
                                            <li>Organizational and workforce management</li>
                                            <li>Recruitment and selection</li>
                                            <li>Development training and performance management</li>
                                            <li>Employee self service portal</li>
                                            <li>Expense management</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="upgradeTable_table">
                                <tr>
                                    <td>
                                        <b>Human Capital Management</b><br />
                                        <ul class="ul_reasons">
                                            <li>Organizational and workforce management</li>
                                            <li>Recruitment and selection</li>
                                            <li>Development training and performance management</li>
                                            <li>Employee self service portal</li>
                                            <li>Expense management</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>--%>
                    <%--<table width="550" class="request_form" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            Name:
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="EmailValidator0" runat="server" Display="Dynamic"
                                ErrorMessage="Enter your mail id" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email Address:
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Enter your name" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Type your password" SetFocusOnError="True" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm Password:
                        </td>
                        <td>
                            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="ConfirmPasswordValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Confirm your password" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>--%>
                </div>
                <div id="top" class="tab_content">
                        <h2 style="color: #0b76ba; font-weight: normal; padding-top: 10px; border: 0;">
                            Top 10 Reasons to Buy Microsoft Dynamics AX 2012</h1>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            1. <strong>Achieve Fast Time to Value</strong></h2>
                        <p>
                            With prebuilt industry capabilities for manufacturing, distribution, services, retail,
                            and Public Sector, Microsoft Dynamics AX 2012 helps you meet your business requirements
                            by deploying your solution quickly and delivering results right away. Streamline
                            your organization end-to-end with rich ERP capabilities, including human capital
                            management, financials, and compliance management. Support specific business requirements
                            easily with packaged solutions from the worldwide Microsoft® Partner Network.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            2. <strong>Grow Your Global Solution</strong></h2>
                        <p>
                            Removing barriers to international growth is essential for business development.
                            Microsoft Dynamics AX 2012 enables you to expand your operations to new geographies
                            with builtin, country-specific localizations in a single solution to meet regulatory
                            requirements for 36 countries.1 Enable entities across your multisite, global organization
                            to share the same data, business rules, and processes in order to harmonize and
                            streamline business practices. Also support your business growth by easily adding
                            users and transactions, as well as configuring more complex business scenarios.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            3. <strong>Work Smart and Fast</strong></h2>
                        <p>
                            Microsoft Dynamics AX 2012 can help you improve productivity by providing RoleTailored
                            access to information, tasks, and business processes along with powerful business
                            intelligence. Gain deeper insight into critical business data across your organization
                            with relevant performance indicators, selfservice business intelligence, and reporting
                            in key business areas.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            4. <strong>Drive New Business</strong></h2>
                        <p>
                            Take advantage of new business opportunities by improving the insight into your
                            business, and having the ability to implement change more easily. Microsoft Dynamics
                            AX 2012 offers unlimited views on your business, giving you the visibility you need.
                            Enhanced modeling capabilities, such as the Organizational Model or workflow, then
                            helps you manage changes in the structure and business processes of your organization,
                            and fosters innovation with a central business process repository, including capabilities
                            for five major industries.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            5. <strong>Support Business Today and Tomorrow</strong></h2>
                        <p>
                            Choose a flexible deployment model that best supports your organization and can
                            easily be adjusted to meet your changing business demands: on-premises or in the
                            cloud. Easily complement your installation with cloud-based services and take advantage
                            of the flexible Microsoft Dynamics AX 2012 solution architecture that enables incremental
                            implementations, changes, or upgrades. Choose the governance model that best fits
                            your organization: centrally managed, decentrally managed, or a combination of both.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            6. <strong>Gain a Competitive Edge</strong></h2>
                        <p>
                            Differentiate your business from competition. The ability to rapidly adapt your
                            system to support your unique needs can give you a significant edge over your competitors.
                            The model-driven, layered architecture allows you to develop and maintain unique
                            business processes easily and enables a relatively easy upgrade to new releases.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            7. <strong>Get Everyone on Board</strong></h2>
                        <p>
                            Employees want to use a solution with a familiar and intuitive user experience that
                            makes their jobs easier, and is simple to use and learn. Microsoft Dynamics AX 2012
                            enables people to find, sort, visualize, and use information through an easy-to-use
                            user interface that looks and works like Microsoft Office. Work easily with everyday
                            tools by sharing data between Microsoft Dynamics AX 2012 and Microsoft Office 2010.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            8. <strong>Connect and Collaborate</strong></h2>
                        <p>
                            Easily connect employees, customers, suppliers, and partners through integrated
                            self-service collaboration capabilities. Microsoft Dynamics AX 2012 enables you
                            to streamline basic supply chain collaboration with self-service, Microsoft SharePoint®–
                            based vendor, customer, and employee portals, and end-to-end business process integration
                            through Sites Services.2 Simplify advanced supply chain collaboration with adaptable
                            web services and share information easily by using collaboration tools such as Microsoft
                            LyncTM and by creating SharePoint collaboration sites directly from within Microsoft
                            Dynamics AX 2012.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            9. <strong>Lower Your TCO</strong></h2>
                        <p>
                            In addition to improved productivity gains, lower your total cost of ownership (TCO)
                            through simplified life cycle management and quick installations. Use Microsoft
                            Dynamics ERP RapidStart Services to help ensure a quick and reliable setup and configuration
                            of your ERP solution. In alignment with the RoleTailored design of Microsoft Dynamics
                            AX 2012, the simplified Business Value Licensing model ensures that you buy the
                            exact number of licenses you need—no more, no less—with options to easily add more
                            licenses as your business grows.
                        </p>
                        <h4 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                            10. <strong>Leverage the Power of the Microsoft Platform</strong></h2>
                        <p>
                        It's our fundamental value proposition: The interaction of ERP, business and productivity
                        applications, communications solutions, and the underlying technology platform—that
                        works on-premises or in the cloud. We call it pervasive interoperability. With Microsoft
                        Dynamics AX 2102, you get a business solution from Microsoft that is backed by an
                        ongoing commitment to research, development, and innovation. Combined with a global
                        ecosystem of specialized partners, Microsoft Dynamics AX 2012 uses the power of
                        the Microsoft platform.
                    </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
    <%--</div>--%>
</asp:Content>
