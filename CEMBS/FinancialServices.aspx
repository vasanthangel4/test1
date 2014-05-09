<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true" CodeFile="FinancialServices.aspx.cs" Inherits="FinancialServices" %>
<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
<title>Microsoft dynamics for financial services | CRM for the financial services Industry</title>
<meta name="description" content="With the right customer relationship management (CRM) solution, financial services firms will more effectively support their clients with more value-added services while streamlining business processes and lowering costs "/>
<meta name="keywords" content=" Microsoft dynamics for financial services, CRM for the financial services Industry"/>
<meta name="robots" content="index, follow"/>
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:nth-child(11)").addClass("active").show(); //Activate first tab
            $(".tab_content:#financial").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content
                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active content
                return false;
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/industries.jpg" alt="industries"/>
    </div>--%>
    <div class="content_div">
        <div class="container">
            <script src="Industries_content_js/sidebar_content.js" type="text/javascript"></script>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>

