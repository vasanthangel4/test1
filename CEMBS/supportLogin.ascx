<%@ Control Language="C#" AutoEventWireup="true" CodeFile="supportLogin.ascx.cs" Inherits="supportLogin" %>
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="SignIn" onclick="Button1_Click" />
                                        &nbsp;Login as
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Client</asp:ListItem>
                                                <asp:ListItem>Staff</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <a href="#">Forgot password?</a>
                                            <a href="#">SignUp</a>
                                        </td>
                                    </tr>
                                </table>
