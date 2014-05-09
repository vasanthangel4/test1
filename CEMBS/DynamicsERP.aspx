<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="DynamicsERP.aspx.cs" Inherits="DynamicsERP" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft dynamics ERP </title>
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/microsoftDynamicsNAV.jpg" alt="Microsoft Dynamics ERP CEM" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <div style="padding: 0 20px 0 20px; text-align: justify;">
                <h1>
                    Microsoft Dynamics ERP</h1>
                <p>
                    In today’s competitive technology world where business process extends far beyond
                    the boundaries of the organizations, one has to adopt the recent practices and solutions
                    to guarantee 100% business control and visibility at a very less operational cost
                    to management. CEM Business Solutions Provide a complete Microsoft enterprise resource
                    planning (ERP) solution that can assist your organization in driving key processes,
                    integrate complete functional departments from procurement to customer service,
                    and enable smart decision making capabilities at minimal cost.<br />
                    CEM’s Business Management Solution can help you realize your entire potentiality
                    and accelerate your business with</p>
                <ul class="ul_reasons">
                    <li>Reducing cost and increase resource efficiencies. </li>
                    <li>Gaining better control of the processes with faster decision making capabilities.
                    </li>
                    <li>Enhancing productivity, customer satisfaction and flexibility. </li>
                    <li>Managing operations from multiple office location and maximize your IT investments.
                    </li>
                    <li>Improving communication and collaboration between all the departments of your organization
                        and take your business to the next level. </li>
                </ul>
                <p>
                    Microsoft Dynamics ERP solutions delivered by CEM:
                </p>
                <ul type="disc">
                    <li>Microsoft Dynamics AX </li>
                    <li>Microsoft Dynamics NAV</li>
                    <li>Microsoft Dynamics GP</li>
                    <li>Microsoft Dynamics SL </li>
                </ul>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
