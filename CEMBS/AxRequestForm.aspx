﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AxRequestForm.aspx.cs" Inherits="AxRequestForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: #eeeeee">
    <form id="form1" runat="server">
    <div style="margin: 0 auto;">
        <br />
        <table width="700" class="request_form" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="3">
                    <h1>
                        Request AX 2012 Upgrade Form</h1>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Name:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                        ControlToValidate="NameTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Designation:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="DesignationTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="DesignationValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your designation" ControlToValidate="DesignationTextBox"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Company:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="CompanyValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Company name required" SetFocusOnError="True" ControlToValidate="CompanyTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Contact number:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Contact number required" SetFocusOnError="True" ControlToValidate="ContactTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                        Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                        ValidationExpression="\d{9,20}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Email address:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="MailTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                        SetFocusOnError="True" ControlToValidate="MailTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                        Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td valign="top" class="upgradeTable ltd">
                    Website:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="WebsiteTextBox" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td valign="top" class="upgradeTable ltd">
                    Message:
                </td>
                <td class="mtd">
                    <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Width="250px"
                        Rows="7" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="MessageValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Type your message" SetFocusOnError="True" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                </td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />&nbsp;
                    <asp:Button ID="reset" runat="server" Text="Reset" />
                </td>
                <td>
                    <asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable">
                    &nbsp;
                </td>
                <td>
                    &nbsp; Kindly fill all the information.
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
