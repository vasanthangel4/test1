<%@ Page Title="" Language="C#" MasterPageFile="~/User-Experience-On-CEM-AX-HCM/User-Experience-On-CEM-AX-HCM.master"
    AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="User_Experience_On_CEM_AX_HCM_Index"
    Async="true" %>

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
                        <asp:Button ID="submit" runat="server" Style="border: none; display: block; height: 36px;
                            padding-left: 30px; background-image: url(../Images/submit.jpg); padding-right: 30px;
                            color: #fff; cursor: pointer; width: 126px;" Text="" OnClick="Fill_Click" ValidationGroup="fill_box" />&nbsp;
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
    <div style="float: left; background: url('left.jpg'); height: 1061px; width: 543px;">
        <div style="padding: 30px 20px 20px 30px; margin-top: 22px;">
            <p>
                The success of any high performance organization lies in the ability and strength
                of the people employed within. While the Human Resource department ensures people
                management policies are installed, modules such as CEM AX HCM ensure that these
                schemes are channelized and provide better strategies for the future.
            </p>
            <p>
                The CEM AX HCM was recently installed in one of the prominent client organizations
                in Kuwait. The module proved to be extremely useful in integrating services provided
                across various departments into one simple process.</p>
            <p>
                Having been built on AX, the most powerful and robust platform in the Microsoft
                Dynamics arsenal, CEM AX HCM offers comprehensive solutions to help plan multiple
                HR and Finance Operations. Also, in order to keep up with technological advancements
                in business views, the CEM AX HCM would soon be equipped with the version compatible
                to the recently launched R3.</p>
            <p>
                The CEM AX HCM installed at our client company, integrated payroll information into
                core banking systems thereby enabling the user to access core banking information
                like client reference number (mapped against each employee ID) and GDU ID. The system
                integrated standing orders from external banking system for any form of deduction
                against a particular employee with the payroll system thereby initiating the deduction
                automatically unless the user provided a standing order closure form.</p>
            <p>
                With the CEM AX HCM, the Human Resource department could calculate any specific
                deduction or allowance to any individual and calculate the net amount due to an
                employee either individually or with the net pay for the month. The system also
                allowed for the HRMS to calculate the exact cost to the company (CTC) incurred on
                behalf of a particular employee with various inputs like the bonus, insurance and
                such. The system also proved to be efficient in integrating with other platforms
                such as the Oracle in order to provide user comfort. With so many benefits lined
                up for the organisation and its HRM systems, the CEM AX HCM proved to be exponentially
                beneficial with regards to business acumen and growth.</p>
            <table cellpadding="0" cellspacing="0" style="margin-top: 24px;">
                <tr>
                    <td valign="top" align="left">
                        <ul class="ul_reasons" style="margin: 0; padding: 0; width: 249px;">
                            <li><a href="recruitment.htm" rel="clearbox[gallery=,,width=970,,height=700]">Recruitment
                                Management</a></li>
                            <li><a href="manpower.htm" rel="clearbox[gallery=,,width=1000,,height=800]">Manpower
                                Planning &amp; Budgeting</a></li>
                            <li><a href="career.htm" rel="clearbox[gallery=,,width=970,,height=600]">Career Planning
                                &amp; Development</a></li>
                            <li><a href="performance.htm" rel="clearbox[gallery=,,width=970,,height=600]">Performance
                                Management</a></li>
                            <li><a href="talent.htm" rel="clearbox[gallery=,,width=970,,height=600]">Talent Management
                            </a></li>
                        </ul>
                    </td>
                    <td valign="top">
                        <ul class="ul_reasons" style="margin: 0; padding: 0;">
                            <li><a href="succession.htm" rel="clearbox[gallery=,,width=970,,height=600]">Succession
                                Planning</a></li>
                            <li><a href="transfer.htm" rel="clearbox[gallery=,,width=970,,height=600]">Transfer
                                &amp; Promotion</a></li>
                            <li><a href="employee.htm" rel="clearbox[gallery=,,width=970,,height=600]">Employee
                                recognition</a></li>
                            <%--<li><a href="training.htm" rel="clearbox[gallery=hcm,,width=970,,height=600]">Training Management</a></li>--%>
                            <li><a href="../Payroll/">Payroll Management</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
            <div style="clear: both; display: block; padding-top: 15px; padding-left: 0px; background: url(axlogo.jpg) no-repeat right bottom;">
                Contact:<br />
                CEM Business Solutions Fz LLC<br />
                119, Building No. 10<br />
                Dubai Internet City<br />
                P.O. Box 502270<br />
                Dubai, U.A.E.<br />
                Tel : +971 4 3911683<br />
                Email : <a href="mailto:info@cembs.com">info@cembs.com</a><br />
                <a href="http://cembs.com">www.cembs.com</a>
            </div> <div style="clear: both; padding-bottom: 20px; padding-top: 15px;">Witness our  <a target="_blank" href="http://www.microsoft.com/es-es/dynamics/customer-success-stories-detail.aspx?casestudyid=710000003880">successful implementation here
</a>!
</div>
        </div>
    </div>
    <div style="float: right; background: url('right.jpg'); height: 1061px; width: 428px;
        position: relative;">
        <div style="height: 440px; padding-top: 30px; padding-right: 20px; padding-left: 20px;">
            <a style="margin-top: 0px; display: block;" target="blank" href="http://www.cembs.com/industry-summit-dubai">
                <img alt="register" src="register-link.jpg" /></a>
            <table class="request_form" cellspacing="0" align="left" cellpadding="0" style="display: none">
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
                        <asp:Button ID="subscribe_btn" runat="server" Style="border: none; display: block;
                            height: 36px; padding-left: 30px; background-image: url(../Images/submit.jpg);
                            padding-right: 30px; color: #fff; cursor: pointer; width: 126px;" Text="" CssClass="button"
                            OnClick="subscribe_btn_Click" ValidationGroup="fill" />* Required fields
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
    </div>
</asp:Content>
