<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalSearchSample.aspx.cs"
    Inherits="FinalSearchSample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CEM Internal Search</title>
    <link href="Styles/Layout.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/FinalSearchSample.css" rel="stylesheet" type="text/css" />
</head>
<body style="font-family:Arial;">
    <form id="form1" runat="server">
    <div id="search">
        <asp:ListView runat="server" ID="SearchList" DataSourceID="LinqDataSource1">
            <ItemTemplate>
                <asp:LinkButton ID="title" runat="server" Text='<%# Eval("page_title") %>' PostBackUrl='<%# Eval("page_url") %>' class="page_title"></asp:LinkButton><br />
                <asp:Label ID="content" runat="server" Text='<%# Eval("page_content") %>' Style="font-size: 13px;"></asp:Label><br />
                <asp:Label ID="link" runat="server" Text='<%# Eval("page_url") %>' style="color:Green; font-style:italic; font-size:12px;"></asp:Label><br />
                <hr />
                <br />
                <br />
            </ItemTemplate>
        </asp:ListView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="helperDataClassesDataContext" EntityTypeName="" 
            TableName="SearchEngines">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
