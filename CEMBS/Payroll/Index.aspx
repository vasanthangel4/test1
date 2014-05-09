<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll/Payroll.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Payroll_Index" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="boxes">
        <!-- Start of Login Dialog -->
        <div id="dialog1" class="window" style="width: 474px; padding-bottom: 33px;">
            <div class="close" style="background: url(../Images/closebutton.png) no-repeat; width: 40px;
                height: 40px; position: absolute; cursor: pointer; right: -15px; top: -9px;">
            </div>
            <table class="request_form" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <h1 style="font-size: 18px;">
                            Fill in the form below and we'll contact you shortly</h1>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="fill_NameTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill_box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                            ControlToValidate="fill_NameTextBox" SetFocusOnError="True" ForeColor="Red" ValidationGroup="fill_box"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Company*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="fill_CompanyTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill_box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="fill_CompanyTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill_box"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Work Email*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="fill_MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" Height="30" ValidationGroup="fill_box"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="Div1">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" Display="Dynamic"
                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="fill_MailTextBox"
                            ForeColor="Red" ValidationGroup="fill_box"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fill_MailTextBox"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="Red" ValidationGroup="fill_box"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Work Phone*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="fill_PhoneTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill_box"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="fill_PhoneTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill_box"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                        <asp:Button ID="submit" runat="server" Style="border: none; display: block;
                            height: 36px; padding-left: 30px; background-image: url(../Images/submit.jpg);
                            padding-right: 30px; color: #fff; cursor: pointer; width: 126px;" Text="" CssClass="button" OnClick="Fill_Click"
                            ValidationGroup="fill_box" />&nbsp;
                        <%--<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />--%>
                    </td>
                    <td>
                        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#729106"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td class="style2">
                        &nbsp; * Kindly fill all the information.
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <!-- End of Login Dialog -->
        <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
    </div>
    <div style="float: left; background: url('left.jpg'); height: 748px; width: 542px;">
        <div style="padding: 10px 20px 20px 30px; margin-top: 90px;">
            <p>
                CEM AX Payroll is a strategic tool for monitoring performance and deploying personnel
                resources across your organization. CEM AX Payroll is reliable and seamlessly integrates
                data across multiple positions, entities and geographic locations in AX2012.</p>
            <p>
                With flexible user-defined rules, businesses can adapt to changing workforce needs
                and demanding requirements. CEM AX Payroll simplifies payroll processing and reconciliations.
                It can help businesses streamline their processes, reduce costs, gain insight into
                personnel costs and improve payroll accuracy.</p>
            <%--<p>
                Take the administrative complexities out of your day and your department. Focus
                on tomorrow with CEM AX payroll.</p>--%>
                <a href="HTMLPage.htm" rel="clearbox[width=680,,height=390]" style="display: block; margin: 18px 0px ;" target="_blank" border="0"><img src="youtube-payroll.jpg" border="0" /></a>
                <table cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" align="left">
                        <ul class="ul_reasons" style="margin: 0; padding: 0; width: 249px;">
                            <li><a href="union.htm" rel="clearbox[gallery=,,width=980,,height=550]">Union Payroll</a></li>
                <li><a href="time.htm" rel="clearbox[gallery=,,width=980,,height=550]">Time Management</a></li>
                <li><a href="absence.htm" rel="clearbox[gallery=,,width=980,,height=550]">Absence
                    Management</a></li>
                <li><a href="social.htm" rel="clearbox[gallery=,,width=980,,height=550]">Social Security
                    Management</a></li>
                <li><a href="claims.htm" rel="clearbox[gallery=,,width=980,,height=550]">Claims Management</a></li>
                <li><a href="insurance.htm" rel="clearbox[gallery=,,width=980,,height=550]">Insurance
                    Management</a></li>
                        </ul>
                    </td>
                    <td valign="top">
                        <ul class="ul_reasons" style="margin: 0; padding: 0;">
                            <li><a href="loan.htm" rel="clearbox[gallery=,,width=980,,height=550]">Loan Management</a></li>
                <li><a href="employee.htm" rel="clearbox[gallery=,,width=980,,height=550]">Employee
                    Relation Management</a></li>
                <li><a href="payroll.htm" rel="clearbox[gallery=,,width=980,,height=900]">Payroll
                    Processing</a></li>
                <li><a href="training.htm" rel="clearbox[gallery=,,width=980,,height=550]">Training
                    Management</a></li>
                <li><a href="enterprise.htm" rel="clearbox[gallery=,,width=980,,height=550]">Enterprise
                    Self-service Portal</a></li>
                <li><a href="role.htm" rel="clearbox[gallery=,,width=980,,height=550]">Role Specific
                    Dashboard Reports</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
            
        </div>
    </div>
    <div style="float: right; background: url('right.jpg'); height: 748px; width: 429px;
        position: relative;">
        <div style="height: 440px; padding-top: 30px; padding-right: 20px; padding-left: 30px;
            margin-top: 110px;">
            <table class="request_form" cellspacing="0" align="left" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <%--<h1 style="font-size: 18px;">
                            Subscribe Form</h1>--%>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        First Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="FirstNameTextBox" runat="server" CausesValidation="True" Width="200"
                            ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="FirstNameTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Last Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="LastNameTextBox" runat="server" CausesValidation="True" Width="200"
                            ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="LastNameFieldValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="LastNameTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Company*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="CompanyTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Phone*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" Width="200"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="PhoneTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Email*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" ValidationGroup="fill"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="maildiv">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" valign="top">
                        Message
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Width="200"
                            Rows="4" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MessageValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                        <asp:Button ID="subscribe_btn" runat="server" Text="" Style="border: none; display: block;height: 36px;padding-left: 30px; background-image:url(../Images/submit.jpg);
                            padding-right: 30px; color: #fff; cursor: pointer; width: 126px;" OnClick="subscribe_btn_Click"
                            ValidationGroup="fill" />* Required fields
                        <%--<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />--%>
                    </td>
                    <td>
                        &nbsp;<asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td class="style2">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div style="clear: both; padding-left: 14px; display: block; position: absolute;
            bottom: 40px;">
            Contact:<br />
            <strong>Michael Vana</strong><br />
            Marketing Director<br />
            CEM Business Solutions<br />
            (201) 391-5345<br />
            <a href="mailto:michael.vana@cembs.com">michael.vana@cembs.com</a><br />
            <a href="http://cembs.com">www.cembs.com</a>
        </div>
    </div>
</asp:Content>
