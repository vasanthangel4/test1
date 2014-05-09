<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" Async="true" AutoEventWireup="true"
    CodeFile="subscribe.aspx.cs" Inherits="subscribe" %>

    <%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Subscribe | CEM Business Solutions</title>
    <meta content="subscribe" name="description" />
    <style type="text/css">
        img
        {
            border: none;
        }
        .style1
        {
            width: 100px;
            font-size: 13px;
        }
        .style2
        {
            width: 205px;
            font-size: 12px;
        }
        .request_form
        {
            margin: 0 auto;
            padding:10px 25px;
            display:block;
            border: 0;
        }
        .request_form input[type="text"], .request_form input[type="email"], .request_form input[type="tel"], .request_form input[type="url"], .request_form textarea
        {
            box-shadow: inset 0 1px 2px #DDD, 0 1px 0 #FFF;
            -webkit-box-shadow: inset 0 1px 2px #DDD, 0 1px 0 #FFF;
            -moz-box-shadow: inset 0 1px 2px #DDD, 0 1px 0 #FFF;
            border: 1px solid #CCC;
            margin: 3px 0 3px 0;
            padding: 10px;
            border-radius: 0px;
        }
        .request_form .button
        {
            margin-top: 5px;
            padding: 7px 10px;
            display: inline;
            background: #1CA4D6;
            border: none;
            color: #fff;
            cursor: pointer;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container">
            <table class="request_form" cellspacing="0" align="left" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <h1 style="font-size: 18px;">
                            Subscribe Form</h1>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="300"
                            ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                            ControlToValidate="NameTextBox" SetFocusOnError="True" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Email*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="300" ValidationGroup="fill"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="maildiv">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"
                            ValidationGroup="fill"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Company
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="300"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Designation
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="DesignationTextBox" runat="server" CausesValidation="True" Width="300"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Phone
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" Width="300" ></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                        <asp:Button ID="subscribe_btn" runat="server" Text="Subscribe" CssClass="button"
                            ValidationGroup="fill" OnClick="subscribe_btn_Click" />&nbsp;
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
        <quicklinks:usercontrol_quicklinks id="quicklinks" runat="server" />
    </div>
</asp:Content>
