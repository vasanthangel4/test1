<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sitemap.ascx.cs" Inherits="UserControls_Sitemap" %>
<script type="text/javascript">
    $(document).ready(function () {
        //var linkid = $('#extendedmenu_sitemap_SiteMapPath1').attr('href');
        $('.sitemapdiv a img').hide();
        //$('.container a img').hide();
    });
</script>
<div class="sitemapdiv">
    <div class="sitemap">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" ForeColor="#000">
            <CurrentNodeStyle ForeColor="#000" Font-Underline="false" />
            <NodeStyle ForeColor="#000" Font-Underline="False" />
        </asp:SiteMapPath>
    </div>
</div>
