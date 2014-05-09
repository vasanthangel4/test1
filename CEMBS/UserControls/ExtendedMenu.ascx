<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ExtendedMenu.ascx.cs" Inherits="UserControls_ExtendedMenu" %>
<%@ Register TagName="searchcontrol" TagPrefix="search" Src="~/UserControls/SearchControl.ascx" %>
<%@ Register TagPrefix="cem" TagName="sitemap" Src="~/UserControls/Sitemap.ascx" %>
<div class="extended_menu">
    <div class="float_left">
        <cem:sitemap ID="sitemap" runat="server" />
    </div>
    <search:searchcontrol ID="search" runat="server" />
</div>
