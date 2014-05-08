<%@ Page Title="" Language="C#" MasterPageFile="~/HCM/HCM.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="HCM_Index" Async="true" %>

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
                            padding-right: 30px; color: #fff; cursor: pointer; width: 126px;" Text="" OnClick="Fill_Click" ValidationGroup="fill_box" />&nbsp;
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
        <div style="padding: 30px 20px 20px 30px; margin-top: 60px;">
            <p>
                The success of any organization depends on a strong commitment to its people. Proper
                management of human assets offers a sustainable, competitive advantage for high
                performance organizations. And while your Human Resources department provides the
                processes for managing people, CEM AX HCM provides the overview needed to map out
                strategies and plan the future.</p>
            <p>
                CEM AX HCM is built on AX2012, the most powerful, robust platform in the Microsoft Dynamics
                arsenal. With it, you can plan, recruit, manage, retain and qualify performances
                through a fully automated HR process. Now, you can draw data from seemingly disparate
                parts of your organization, and bring into focus the current state of your human
                resources, so you can plot the future with confidence.</p>
            <p>
                CEM AX HCM seamlessly integrates data from across multiple positions, entities 
               and geographic locations. Just click on the video below for a quick 4-minute introduction and demo. </p>
                            <a href="HTMLPage.htm" rel="clearbox[width=680,,height=390]" style="display: block; margin-top: 18px;margin-bottom: 18px;" target="_blank" border="0"><img src="youtube-hcm.jpg" border="0" /></a>
                <table cellpadding="0" cellspacing="0">
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

            <%--<iframe width="380" height="160"  style="display: block; margin-top: 18px;width:285px; height:100px;" src="https://www.youtube.com/embed/y4SliGO4e5I?list=PLdmEYgLsa8gq56TUfAnZLdrAUFXN2F7ZK" frameborder="0" allowfullscreen></iframe>--%>
            
            
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
                        <asp:Button ID="subscribe_btn" runat="server" Style="border: none; display: block;
                            height: 36px; padding-left: 30px; background-image: url(../Images/submit.jpg);
                            padding-right: 30px; color: #fff; cursor: pointer; width: 126px;" Text="" CssClass="button" OnClick="subscribe_btn_Click"
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
