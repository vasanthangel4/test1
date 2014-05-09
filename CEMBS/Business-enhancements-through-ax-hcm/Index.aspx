<%@ Page Title="" Language="C#" MasterPageFile="~/Business-enhancements-through-ax-hcm/MasterPage.master"
    AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Business_enhancements_through_ax_hcm_Index"
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
                The major concern of any large-size organization would primarily be hindrance in
                organization workflow management. The case was similar with one of CEM’s clients.
                In order to cope up with the volatile service requirements of the business, they
                required timely and reliable information. Due to limitation in leveraging manual
                data, numerous disputes cropped up within the organization. To solve this challenge,
                the company was in a compulsion to explore the right solution for them.
            </p>
            <p>
                CEM carefully analysed the need of the hour and demonstrated how <strong>CEM AX HCM</strong>
                and <strong>CfMD</strong><strong> </strong>(Certification for Microsoft Dynamics)
                <strong>certified CEM AX Payroll</strong> will work to their advantage. They proved to 
                be immensely popular with the organization due to their user friendly interface.
            </p>
            <p>
                To quote the claim of the HR Director, &ldquo;The system implemented by CEM, proved
                to be an incomparable solution for workforce management, with comprehensive benefits
                like formation of a cohesive and dynamic budgeting system, dynamic reporting, flexibility
                and integration. Also, the payroll processes for regular employees were simplified&rdquo;.
            </p>
            <p>
                One of the pronounced outcomes after implementation of CEM AX HCM and CEM AX Payroll
                was the generous reduction in the time taken for executing day-to-day procedures
                of the concern. For instance, the average time taken for employee payroll processing
                diminished from about 5 days to 2 days and the payment time reduced from 3 days
                to 3 hours. The success of the organization resounded with this Microsoft Dynamics
                ERP implementation. Through proper tracking and analysis of management issues and
                an excellent payroll, the employee satisfaction level improved, leading to quality
                service and more customer wins!</p>
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
            </div>
            <div style="clear: both; padding-bottom: 20px; padding-top: 15px;">
                Witness our <a target="_blank" href="http://www.microsoft.com/es-es/dynamics/customer-success-stories-detail.aspx?casestudyid=710000003880">
                    successful implementation here </a>!
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
