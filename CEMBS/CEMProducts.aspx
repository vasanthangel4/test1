<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEMProducts.aspx.cs" Inherits="CEMProducts" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Products</title>
    <meta name="description" content="Customize Microsoft Dynamics Solutions with Certified (CfMD) Add-Ons." />
    <meta name="keywords" content="Microsoft Dynamics Solutions, dynamics solutions, dynamic solutions, dynamic business solutions, CEM AX Construct, CEM AX HCM, CEM AX Payroll, CEM AX Union Payroll, CEM AX Retail,Microsoft Dynamics Solutions, dynamics solutions, dynamic solutions, dynamic business solutions, CEM AX Construct, CEM AX HCM, CEM AX Payroll, CEM AX Union Payroll, CEM AX Retail" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/cemproducts.jpg" class="active" alt="products" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="Construction-Management-Software.aspx">CEM AX Construct</a></li>
                <li><a href="Human-Capital-Management.aspx">CEM AX HCM </a></li>
                <li><a href="Payroll-Software.aspx">CEM AX Payroll</a></li>
                <li><a href="Construction-Project-Management-Software.aspx">CEM AX ProjectPro</a></li>
                <li><a href="Microsoft-Dynamics-RMS.aspx">CEM AX Retail</a></li>
                <li><a href="CEM-AX-Union-Payroll.aspx">CEM AX Union Payroll</a></li>
                </ul>
            <div class="tab_container">
                <div class="tab_content paddingtopnone">
                <h1 style="color: #0b76ba; font-weight: normal; padding-top: 10px;font-size:2em;">
                   Customize Microsoft Dynamics Solutions with Certified (CfMD) Add-Ons.</h1>
                    <p>
                        Every organization faces unique challenges specific to its business and industry. Out-of-the-box solutions rarely meet all requirements. That’s why CEM invests in developing its own software add-ons, to custom-tailor the power of Microsoft Dynamics solutions to the unique requirements of each customer. </p>
                    <p>
                       Some add-ons solve very specific problems for individual customers. Others provide Industry Solutions, like CEM AX Construct for the construction industry. Still others act as modules to bolster functionally horizontally across all industries, such as CEM AX Payroll and CEM AX HCM.  If you don’t see the kind of add-on functionality here that you need, contact us. If we don’t have it, we’ll build it.</p>
                </div>
                <div class="tab_content" id="products_cem">
                    <h2>
                        CEM AX Construct</h2>
                    <p>
                       Project work typically poses the biggest challenge for Enterprise Resource Planning (ERP) systems. Each project can have a life of its own. And nowhere does project work become more complex than the construction industry. Materials arrive late and production schedules slip, but payrolls still need to be met, schedules change and clients kept informed. Adding to this are compliance requirementsa and quality norms from customers
                        ................ <a href="Construction-Management-Software.aspx">Read More</a></p>
                    <h2>
                        CEM AX HCM</h2>
                    <p>
                        The success of any organization depends on a strong commitment to its people. Proper
                        management of human assets offers a sustainable, competitive advantage for high
                        performance organizations. And while your Human Resources department provides the
                        processes for managing people, CEM AX HCM provides the overview .............. <a
                            href="Human-Capital-Management.aspx">Read More</a></p>
                    <h2>
                        CEM AX Payroll</h2>
                    <p>
                        CEM AX Payroll is a strategic tool for monitoring performance and deploying personnel
                        resources across your organization. CEM AX Payroll is reliable and seamlessly integrates
                        data across multiple positions, entities and geographic locations. With flexible
                        user-defined rules, businesses can adapt to changing workforce needs and demanding
                        ................ <a href="Payroll-Software.aspx">Read More</a></p>
                    <h2>CEM AX ProjectPro</h2>
<p>Successful construction management professionals have a reputation for delivering projects on time and on budget. Contractors who invest in the right financial, operational and construction management software execute projects more efficiently, deliver higher quality results to their customers, and at the same time increase their................ <a href="Construction-Project-Management-Software.aspx" title="ProjectPro">Read More</a></p
                    ><h2>
                        CEM AX Retail</h2>
                    <p>
                        The present day retail environment offers ever-expanding opportunity while also
                        posing unprecedented challenges. Retailers have more channels to reach their customers
                        globally, but they must also serve an empowered consumer with access to more information
                        and choice&mdash;forcing retailers leverage IT in an entirely different way to drive
                        visibility across the organization to react quickly; seize new opportunities; and
                        build customer .......<a href="Microsoft-Dynamics-RMS.aspx">Read More</a></p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
