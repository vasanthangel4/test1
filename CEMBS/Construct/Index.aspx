<%@ Page Title="" Language="C#" MasterPageFile="~/Construct/Construct.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Construct_Index" Async="true" %>

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
        <div style="padding: 10px 20px 20px 30px; margin-top: 90px;">
            <p>
                Project work typically poses the biggest challenge for Enterprise Resource Planning
                (ERP) systems. Each project can have a life of its own. And nowhere does project
                work become more complex than the construction industry. Materials arrive late and
                production schedules slip, but payrolls still need to be met, schedules change and
                clients kept informed. Adding to this are compliance requirements and quality norms
                from customers, government and unions that set a new benchmarks in making the business
                even more complex.</p>
            <p>
                Luckily, CEM AX Construct has the power to bring all these loose ends and moving
                parts into focus &ndash; giving management the power to make informed decisions
                in real time.</p>
            <p>
                Construct is designed to meet the needs of construction companies, sub contracting
                and general contracting companies. All activities from pre-construction to post
                construction stages can be captured and monitored in detail. You can spend more
                time managing and less time administering your projects.</p>
            <p>
                The AX platform is Microsoft’s most powerful, robust ERP system. Yet AX is very
                similar to the widely used and familiar MS Office interface.</p>
            <p>
                In order to provide a comprehensive solution, CEM has added the following modules
                within Microsoft Dynamics 2012 ERP:</p>
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" align="left">
                        <ul class="ul_reasons" style="margin: 0; padding: 0; width: 249px;">
                            <li><a href="../brochures/CEM-AX-Union-Payroll.pdf" target="_blank" style="background:url('../Images/hnav-green.png') no-repeat;">Payroll,
                                including Union Payroll</a></li>
                            <li><a href="project.htm" rel="clearbox[gallery=,,width=980,,height=400]">Advanced
                                Project Management</a></li>
                            <li><a href="subcontract.htm" rel="clearbox[gallery=,,width=980,,height=400]">Subcontract
                                Management</a></li>
                            <li><a href="inventory.htm" rel="clearbox[gallery=,,width=980,,height=400]">Advanced
                                Inventory Management</a></li>
                            <li><a href="workforce.htm" rel="clearbox[gallery=,,width=980,,height=400]">Workforce
                                Augmentation</a></li>
                        </ul>
                    </td>
                    <td valign="top">
                        <ul class="ul_reasons" style="margin: 0; padding: 0;">
                            <li><a href="pmv.htm" rel="clearbox[gallery=,,width=980,,height=400]">PMV</a></li>
                            <li><a href="staff.htm" rel="clearbox[gallery=,,width=980,,height=400]">Staff Accommodation</a></li>
                            <li><a href="rmc.htm" rel="clearbox[gallery=,,width=980,,height=400]">Concrete
                                Purchase</a></li>
                            <%--<li><a href="training.htm" rel="clearbox[gallery=hcm,,width=800,,height=500]">Training Management</a></li>--%>
                            <li><a href="management.htm" rel="clearbox[gallery=,,width=980,,height=400]">Management
                                Tools</a></li>
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
        <div style="clear: both; padding-left: 14px; display: block; position: absolute;
            bottom: 50px;">
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
