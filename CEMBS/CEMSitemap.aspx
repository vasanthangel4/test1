<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CEMSitemap.aspx.cs" Inherits="CEMSitemap" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Sitemap | CEM Business Solutions</title>
    <meta name="description" content="sitemap" />
    <meta name="keywords" content="sitemap" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container" style="padding: 20px 0px 20px 20px; width:780px;">
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" OnTreeNodeDataBound="TreeView1_TreeNodeDataBound"
                ImageSet="Simple" ShowLines="True">
                <HoverNodeStyle Font-Underline="False" ForeColor="#5555DD" />
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px"
                    NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                    VerticalPadding="0px" />
            </asp:TreeView>
        </div>
    <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>
