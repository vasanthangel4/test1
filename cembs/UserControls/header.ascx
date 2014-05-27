<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="UserControls_header" %>
<%@ Register TagName="mainmenu" TagPrefix="menu" Src="mainmenu.ascx" %>


<header>
    <div class="line">
    <!-- Logo Section -->
    <div class="logo-section">
    <div class="cem_logo">
        <a href="/"><img src="http://www.cembs.com/images/v3/logo.png" width="193" height="62" alt="CEM Business Solutions, ERP Consultant, MS Dynamics"/></a>
    </div>
    <div class="logo_rsec">
        <%--<a href="http://us.cembs.com"><img src="images/uslink.jpg" id="unitedstates" width="178" height="62" alt="United States" border="0" style="margin-right: 30px;" /></a>--%>
           <img src="http://www.cembs.com/images/v3/cfmd_logo.png" id="CFMD" width="185"
         height="64" alt="CFMD"/>
        <img src="http://www.cembs.com/images/v3/microsoft_gold_partner.jpg" id="gold" width="185" 
        height="64" alt="Gold partner" style="margin-right: 10px;" />
     
    </div>
    </div>
    <menu:mainmenu ID="menu" runat="server" />    
    </div>
    <!-- Banner Section --> 
</header>
