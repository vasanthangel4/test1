<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="AXRegistration.aspx.cs" Inherits="AXRegistration" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <script type="text/javascript">
        function alertwindow(message) {
            //debugger
            alert(message);
        }
    </script>
    <style type="text/css">
        .div_content
        {
            padding: 10px 20px 10px 20px;
        }
        #wrapper .extended_menu
        {
            display: none;
        }
    </style>
    <style type="text/css">
        td
        {
            text-align: left;
        }
        .ltd
        {
            width: 150px;
            padding-right: 10px;
        }
        .mtd
        {
            width: 300px;
        }
        .rtd
        {
            width: 200px;
        }
        #wrapper table.request_form
        {
            padding-left: 0px;
            margin: 0px;
        }
        #wrapper table.request_form .upgradeTable
        {
            background: #fff;
        }
        .style1
        {
            width: 73px;
        }
        .style2
        {
            width: 325px;
        }
    </style>
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners" style="height: 300px;">
        <img src="Images/axregistration.jpg" style="width: 980px; height: 300px;" alt="about cem" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <div class="div_content">
                <h2 style="font-weight: normal; color: #ff0000">
                    Microsoft Dynamics ERP AX2012</h1>
                <p>
                    <span style="color: #ff0000">Microsoft Dynamics ERP AX2012</span> with its CEM Construct modules
                    is the best fit and automates end to end functionalities for general contractors,
                    heavy/highway contractors, and speciality subcontractors including the electrical,
                    mechanical, and HVAC trades. The modules include
                </p>
                <table>
                    <tr>
                        <td>
                            <ul class="ul_reasons">
                                <li><strong>Sub-contracting </strong></li>
                                <li><strong>Advanced project management</strong></li>
                                <li><strong>Cost control &amp; Job Costing</strong></li>
                                <li><strong>Sales (Contracts)</strong></li>
                                <li><strong>WBS &amp;</strong> <strong>Forecasting</strong></li>
                            </ul>
                        </td>
                        <td>
                            <ul class="ul_reasons">
                                <li><strong>Manpower Planning/Budgeting</strong></li>
                                <li><strong>Finance</strong><strong> </strong></li>
                                <li><strong>Purchase</strong><strong> </strong></li>
                                <li><strong>Inventory</strong><strong> </strong></li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <p>
                    The software seamlessly integrates with barcode, MS Project, Office, and SharePoint.
                    This can also be extended to your mobile device. You can streamline your data flow
                    by entering job budgets, scope and change orders directly into AX 2012 or import
                    from various estimating products using CEM's import tools. The software provides
                    one page dashboard views for committed, budgeted and actual costs.
                </p>
                <p style="color: #ff0000">
                    Please join us for a <span style="color: #000000"><strong>FREE DEMO</strong></span>
                    on Microsoft Dynamics ERP AX 2012.</p>
                <table>
                    <tr>
                        <td class="style1" valign="top">
                            Location:
                        </td>
                        <td>
                            <span style="color: #ff0000">Microsoft Office - Conference Center<br />
                                1290, Ave of the Americas,
                                <br />
                                6th floor Corporation, New York, NY 10104 </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Date:
                        </td>
                        <td>
                            <span style="color: #ff0000">13th June 2013 (Thursday)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Time:
                        </td>
                        <td>
                            <span style="color: #ff0000">8.30 AM ET onwards, followed by Lunch</span>
                        </td>
                    </tr>
                </table>
                <div style="margin: 0 auto;">
                    <br />
                    <table width="760" class="request_form" border="0" cellspacing="0" 
                        cellpadding="0">
                        <tr>
                            <td colspan="3">
                                <h2 style="font-weight: normal; color: #ff0000">
                                    Please register here</h1>
                                <br />
                                * Kindly fill in all the fields
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Name:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                                    ForeColor="Red" ControlToValidate="NameTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Designation:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="DesignationTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="DesignationValidator" runat="server" Display="Dynamic"
                                    ForeColor="Red" ErrorMessage="Enter your designation" ControlToValidate="DesignationTextBox"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Company:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="CompanyValidator" runat="server" Display="Dynamic"
                                    ForeColor="Red" ErrorMessage="Company name required" SetFocusOnError="True" ControlToValidate="CompanyTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Contact number:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                                <span style="color:#777777;">eg: XXX-XXX-XXXX</span>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                                    ForeColor="Red" ErrorMessage="Contact number required" SetFocusOnError="True"
                                    ControlToValidate="ContactTextBox"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="ContactIntegerValidator" ForeColor="Red" runat="server"
                                    ControlToValidate="ContactTextBox" Display="Dynamic" ErrorMessage="Enter valid phone number"
                                    SetFocusOnError="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Email address:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="MailTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                                    ForeColor="Red" SetFocusOnError="True" ControlToValidate="MailTextBox"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="MailExpressionValidator" ForeColor="Red" runat="server"
                                    ControlToValidate="MailTextBox" Display="Dynamic" ErrorMessage="Please enter valid mail ID or no spaces after mail id"
                                    SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                                Website:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="WebsiteTextBox" runat="server" CausesValidation="false" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="upgradeTable ltd">
                                Message:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Width="250px"
                                    Rows="7" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable ltd">
                            </td>
                            <td class="style2">
                                <asp:Button ID="submit" Style="width: 80px; height: 35px; font-size: 13px;" runat="server"
                                    Text="Submit" OnClick="submit_Click" />&nbsp;
                                <asp:Button ID="reset" Style="width: 80px; height: 35px; font-size: 13px;" runat="server"
                                    Text="Reset" OnClick="reset_Click" />
                            </td>
                            <td>
                                <asp:Label ID="resultLabel" runat="server" ForeColor="#729106" Style="position: absolute;
                                    width: 300px; left: 480px; top: 28px;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="upgradeTable">&nbsp;
                                
                            </td>
                            <td class="style2">
                                <%--&nbsp; Kindly fill all the information.--%>
                            </td>
                            <td>&nbsp;
                                
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
