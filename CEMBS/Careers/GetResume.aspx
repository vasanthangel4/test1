<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetResume.aspx.cs" Inherits="Careers_GetResume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background:#f8f8f8; font-family:Segoe UI; font-size:13px;">
    <form id="form1" runat="server">
    <div>
        <p style="font-family:Segoe UI Light; font-size:24px; text-shadow:0px 1px 1px #505050;">Profiles of Candidate</p>
        <table>
            <tr>
                <td>
                    Name :
                    <asp:TextBox ID="NameText" runat="server"></asp:TextBox> &nbsp;
                </td>
                <td>
                    Email : <asp:TextBox ID="EmailText" runat="server"></asp:TextBox> &nbsp;
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1"
            ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID" Visible="False">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Candidate Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" 
                    SortExpression="Email" >
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="ContactNumber" HeaderText="Phone Number" SortExpression="ContactNumber" />
                <asp:TemplateField HeaderText="AppliedDate" SortExpression="AppliedDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AppliedDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="date" runat="server" Text='<%# Bind("AppliedDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Profile" SortExpression="ProfileURL">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProfileURL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <a href='<%# Eval("ProfileURL") %>' id="downloadlink" target="_blank" runat="server">Download Profile</a>
                    </ItemTemplate>
                    <ItemStyle ForeColor="#993300" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="helperDataClassesDataContext"
            EntityTypeName="" TableName="Profiles">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
