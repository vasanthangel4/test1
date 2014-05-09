<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <link href="Styles/OthersPages/Search.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div id="search">
            <asp:Label ID="results" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:ListView runat="server" ID="SearchList">
                <ItemTemplate>
                    <asp:LinkButton ID="title" runat="server" Text='<%# Eval("page_title") %>' PostBackUrl='<%# Eval("page_url") %>'
                        CssClass="page_title"></asp:LinkButton><br />
                    <asp:Label ID="content" CssClass="page_content" runat="server" Text='<%# Eval("page_content") %>'></asp:Label><br />
                    <asp:Label ID="link" CssClass="page_url" runat="server" Text='<%# Eval("page_url") %>'></asp:Label><br />
                    <hr />
                </ItemTemplate>
                <EmptyDataTemplate>
                    No records found matching your search
                </EmptyDataTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
