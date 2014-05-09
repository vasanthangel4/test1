<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPosting.aspx.cs" Inherits="Careers_AdminPosting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 117px;
        }
        .styletable
        {
            width:600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="LoginInfo styletable" style="display: inline-block;">
            <fieldset class="register">
                <legend>Login</legend>
                <table style="width: 100%;" id="login_panel">
                    <tr>
                        <td colspan="3">
                            <h1>
                                Log In
                            </h1>
                            <p>
                                Please enter your username and password.</p>
                            <p>
                                <asp:Label ID="response" runat="server" ForeColor="#FF3300"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
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
                        <td class="style1">
                            Username
                        </td>
                        <td>
                            <asp:TextBox ID="username_txt" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="password_txt" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click" />
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
    </form>
</body>
</html>
