<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="OurAwards.aspx.cs" Inherits="OurAwards" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="about" TagPrefix="aboutus" Src="~/AboutUserControls/about.ascx" %>
<%@ Register TagName="about" TagPrefix="customers" Src="~/AboutUserControls/customers.ascx" %>
<%@ Register TagName="about" TagPrefix="geo" Src="~/AboutUserControls/geo.ascx" %>
<%@ Register TagName="about" TagPrefix="values" Src="~/AboutUserControls/values.ascx" %>
<%@ Register TagName="about" TagPrefix="csr" Src="~/AboutUserControls/csr.ascx" %>
<%@ Register TagName="about" TagPrefix="awards" Src="~/AboutUserControls/awards.ascx" %>
<%@ Register TagName="about" TagPrefix="relation" Src="~/AboutUserControls/relation.ascx" %>
<%@ Register TagName="about" TagPrefix="cfmd" Src="~/AboutUserControls/cfmd.ascx" %>
<%@ Register TagName="about" TagPrefix="globalinstallations" Src="~/AboutUserControls/globalinstallations.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Awards | About CEM</title>
    <meta name="description" content=" Headquartered in Dubai, CEM Business solution is a global IT services Organization focusing on Microsoft Dynamics suite of ERP and CRM solutions. Our Offices at Chennai, INDIA, Mumbai, Dubai, UAE, Sharjah, UAE, Abu Dhabi, UAE, Kuwait, USA, UK " />
    <meta name="keywords" content="Dynamics Ax Partner In Uae, Dynamics Gp Partner In Uae, Microsoft Cem, Microsoft Dynamics Abu Dhabi, Microsoft Partner In Uae, Microsoft Dynamics Solutions Uae, Microsoft Dynamics Solutions Sharjah, Microsoft Dynamics Solutions Dubai, Microsoft Dynamics Sharjah, Microsoft Dynamics Partners In Uae, microsoft dynamics dubai, microsoft erp partners" />
    <meta name="robots" content="index, follow" />
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:nth-child(5)").addClass("active").show(); //Activate first tab
            $(".tab_content:#awards").show(); //Show first tab content

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
    <style type="text/css">
        #css
        {
            margin-bottom: 20px;
        }
        #css .topborder
        {
            border-top: 1px solid #000000;
            background: none repeat scroll 0 0 #534C4A;
            color: #ffffff;
            text-align: left;
            padding-left: 10px;
        }
        #css th
        {
            width: 280px;
        }
        #css tr
        {
            border-bottom: 1px solid #afafaf;
            border-left: 1px solid #afafaf;
            border-right: 1px solid #afafaf;
            display: block;
            padding: 10px;
        }
        #css td
        {
            width: 280px;
        }
        .style1
        {
            width: 134px;
        }
        #aboutcontainer h4
        {
            border-bottom: 1px dashed #DDDDDD;
            font-size: 12px;
            font-weight: bold;
            margin: 0;
            padding-bottom: 10px;
        }
        #aboutcontainer h4.noborder
        {
            border: none;
            padding-bottom: 0;
        }
        #aboutcontainer h2
        {
            font-weight: normal;
            line-height: 15px;
            margin: 0 0 15px;
        }
    </style>
    <link href="Styles/gallery_style.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/ulphotos.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/about_banner.jpg" alt="about cem" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <%--<li><a href="#about">About CEM</a></li>--%>
                <li><a href="#customers">Customers</a></li>
                <li><a href="#geo">Geographies</a></li>
                <%--<li><a href="#values">Our Values</a></li>--%>
                <li><a href="#csr">Corporate Social Responsibility</a></li>
                <li><a href="#awards">Awards</a></li>
                <%--<li><a href="#relation">Microsoft relationship</a></li>--%>
                <li><a href="#cfmd">CFMD</a></li>
                <li><a href="#global">Global Installations</a></li>
            </ul>
            <div class="tab_container" id="aboutcontainer">
                <div id="about" class="tab_content">
                    <aboutus:about ID="cem" runat="server" />
                </div>
                <div id="customers" class="tab_content">
                    <customers:about ID="cust" runat="server" />
                </div>
                <div id="geo" class="tab_content">
                    <geo:about ID="geography" runat="server" />
                </div>
                <%--<div id="values" class="tab_content">
                    <values:about ID="val" runat="server" />
                </div>--%>
                <div id="csr" class="tab_content">
                    <csr:about ID="cs" runat="server" />
                </div>
                <div id="awards" class="tab_content">
                    <awards:about ID="awardscem" runat="server" />
                </div>
                <%--<div id="relation" class="tab_content">
                    <relation:about ID="rel" runat="server" />
                </div>--%>
                <div id="cfmd" class="tab_content">
                    <cfmd:about ID="cfmdabt" runat="server" />
                </div>
                <div id="global" class="tab_content">
                    <globalinstallations:about ID="globalinstallations" runat="server" />
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>