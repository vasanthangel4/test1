<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Search_control.ascx.cs"
    Inherits="Search_control" %>

<div class="search">
    <%--<div class="float_left">
        <ul class="ex_links">
            <li><a href="Case-Studies.aspx">Downloads</a></li>
            <%--<li><a href="Blog/Index.aspx">Blog</a></li>--%>
            <%--<li><a href="#">FAQ</a></li>--%>
            <%--<li><a href="Careers/Index.aspx">Careers</a></li>
        </ul>
    </div>--%>
    <div class="search_div">
        <asp:TextBox ID="search_txt" class="search_txt" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="search_btn" class="search_btn" runat="server" OnClick="search_btn_Click"
            Style="border: none; cursor: pointer;" CausesValidation="False" />
    </div>
</div>
