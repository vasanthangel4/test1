<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="DynamicsProducts.aspx.cs" Inherits="DynamicsProducts" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft dynamics products </title>
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="Microsoft Dynamics ERP, Microsoft Dynamics ERP Solutions, Microsoft Dynamics Implementation, Enterprise Analytics Solutions, Enterprise Application Development Solutions, Enterprise Cloud Solutions" />
    <meta content="Microsoft dynamics products" name="description" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/microsoftDynamicsNAV.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="Microsoft-Dynamics-AX.aspx">Microsoft Dynamics AX</a></li>
                <li><a href="Microsoft-Dynamics-CRM.aspx">Microsoft Dynamics CRM</a></li>
                <li><a href="Microsoft-Dynamics-GP.aspx">Microsoft Dynamics GP</a></li>
                <li><a href="Microsoft-Dynamics-NAV.aspx">Microsoft Dynamics NAV</a></li>
                <li><a href="Microsoft-Dynamics-SL.aspx">Microsoft Dynamics SL</a></li>
               </ul>
            <div class="tab_container">
                    
                <div class="tab_content paddingtopnone">
                <h1 style="color: #0b76ba; font-weight: normal; padding-top: 10px;">
                         Microsoft Dynamics: A Complete Suite of ERP Solutions.</h1>
                    <p>
                     The Microsoft brand provides consumers with certain assurances they can’t get anywhere else. With a global reputation for sound, 
                     successful, well thought-out products, consumers know that Microsoft stands behind its products. 
                      And Microsoft’s considerable resources will be constantly improving and enhancing the entire customer experience. 
                      For these reasons, CEM continues to offer Microsoft Dynamics products exclusively.
                       From the tried and true platforms like SL, GP and NAV to the cutting edge AX, CEM continues to support the entire Microsoft Dynamics line of products. 
                     And CEM’s many Microsoft awards and distinctions speak to the symbiotic relationship between the two companies. </p>
                    <h2>
                      ERP Solutions, with Microsoft Windows End Users In Mind.</h2>
                    <p>
                        Probably the greatest challenge facing organizations that implement an ERP system is to acclimate their end users to the new interface. The more foreign the language symbols and commands – the longer it takes to get users up and running. That’s why all Microsoft Dynamics solutions are designed with the “untrained” user in mind. If the users are familiar with Windows, they will have little trouble mastering any of the Microsoft Dynamics solutions. This not only flattens the learning curve, it enables greater utilization of the software down the road. And correspondingly, greater organizational efficiency.</p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
