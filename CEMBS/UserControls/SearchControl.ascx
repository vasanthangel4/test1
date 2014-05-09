<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchControl.ascx.cs" Inherits="UserControls_SearchControl" %>

<div class="search">
    <div class="search_div">
        <asp:TextBox ID="search_txt" class="search_txt" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="search_btn" class="search_btn" runat="server" OnClick="search_btn_Click"
            Style="border: none; cursor: pointer;" CausesValidation="False" />
    </div>
</div>
