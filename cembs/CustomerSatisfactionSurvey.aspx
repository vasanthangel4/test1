<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="CustomerSatisfactionSurvey.aspx.cs" Inherits="CustomerSatisfactionSurvey" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Customer Satisfaction Survey</title>
    <meta name="description" content=" Headquartered in Dubai, CEM Business solution is a global IT services Organization focusing on Microsoft Dynamics suite of ERP and CRM solutions. Our Offices at Chennai, INDIA, Mumbai, Dubai, UAE, Sharjah, UAE, Abu Dhabi, UAE, Kuwait, USA, UK " />
    <meta name="keywords" content="Microsoft dynamics suite, Microsoft Dynamics ERP and CRM Business software" />
    <meta name="robots" content="index, follow" />
    <script src="clearbox.js" type="text/javascript"></script>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container">
            <div style="padding: 0 20px 0 20px; text-align: justify;">
                <h1>
                    Customer Satisfaction Survey for the month of July 2013</h1>
                    
                <table>
                    <tr>
                        <td class="style1">
                             Exceeding Expectations 
                        </td>
                        <td>
                            <img src="Images/EE.jpg" alt="EE" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                             Above Average 
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                             Average Performance 
                        </td>
                        <td>
                            <img src="Images/AP.jpg" alt="AP" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                             Needs Improvement 
                        </td>
                        <td>
                            <img src="Images/NI.jpg" alt="NI" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                             Unsatisfactory 
                        </td>
                        <td>
                            <img src="Images/UI.jpg" alt="UW" width="120" height="18" />
                        </td>
                    </tr>
                </table>
                <br />
                <table id="css" width="600" border="0" cellspacing="0" cellpadding="0">
                    <tr class="topborder">
                        <th scope="col">
                            Customer Name
                        </th>
                        <th scope="col">
                            Rating by customer
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Al Habtoor Group LLC
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Al Nabooda Insurance Brokers LLC
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Avis UAE Rent A Car
                        </td>
                        <td>
                            <img src="Images/EE.jpg" alt="EE" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Bhatia Traders LLC
                        </td>
                        <td>
                            <img src="Images/EE.jpg" alt="EE" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Carrier Middle East LTD
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Control & Applications Emirates
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Jurrassic Technologies LLC
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            La Marquise International LLC
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mourjan Marinas DMCCO
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NCMS LTD
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Sharqiyah Desalination Co. SAOG
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Unique System FZE
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Venture Capital Bank
                        </td>
                        <td>
                            <img src="Images/EE.jpg" alt="EE" width="120" height="18" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Worldwide Oilfield Machine<br />
                            Me/Magnum Technology Center Ltd
                        </td>
                        <td>
                            <img src="Images/AA.jpg" alt="AA" width="120" height="18" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
