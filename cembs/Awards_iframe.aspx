<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Awards_iframe.aspx.cs" Inherits="Awards" %>


<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <script src="clearbox.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/about_banner.jpg" alt="about cem" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <div style="padding: 0 20px 0 20px; text-align: justify;">
                <h1>
                    Awards</h1>
                <p>
                    Helping customers unleash their full potential by providing them transformational
                    business solutions is our goal at CEM.</p>
                <p>
                    The awards and recognition we continue to win are a testament to our success.</p>
                
            </div><iframe src="awards/awards.htm" scrolling="no" frameborder="no" background="none"
                    style="width: 800px; padding-top: 40px;"></iframe>
                    
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
