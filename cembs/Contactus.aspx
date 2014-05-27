<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    Async="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<%@ Register TagName="location_contact" TagPrefix="location" Src="location_tabs.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Business Solutions</title>
    <meta name="description" content="CEM Business Solutions , Microsoft dynamic software’s in Chennai, Mumbai, India, Dubai, Kuwait, Sharjah, USA, Singapore, UK" />
    <meta name="keywords" content="cem tel, cem telephone, Du Offices In Sharjah, cem contact number, cem phone number, cem address, cem USA address, cem Dubai address, Dynamics Ax Partner Address In Uae, Dynamics Gp Address Partner In Uae, Microsoft Dynamics address in Abu Dhabi, Microsoft Partner contact details, Microsoft Dynamics Solution provider contact numbers, Microsoft Dynamics Solutions contact details in Sharjah, Microsoft Dynamics Solutions Dubai phone numbers, microsoft erp partners contact information" />
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="Scripts/uiTabsFirstItem.js"></script>
      <!-- end request form -->
    <!-- using service for checking mail ids -->
    <script type="text/javascript" src="Scripts/OtherPages/ContactusRestrictEmail.js"></script>
    <!-- end mail ids -->
    <link href="Styles/contact.css" rel="stylesheet" type="text/css" />
    <!-- location tabs -->
    <link href="Styles/tabmenu_horizontal.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/locationtabs.css" rel="stylesheet" type="text/css" />
    <!-- end location tabs -->
    <script type="text/javascript">      
      $(document).ready(function () {
            $('#m_contact').addClass('bluebg');
        });
    </script>
    <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->



    <!-- tool tip -->
    <!-- end tooltip -->
    <!-- request form -->
    <link href="Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 103px;
        }
        .style2
        {
            width: 261px;
        }
        p
        {
            margin: 5px 0 8px 0;
            line-height: 1.5em;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/contact_CEM.jpg" alt="Contact CEM Business Solutions" />
    </div>--%>
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
    <div class="content_div">
        <div class="container">
            <ul class="tabs contacttabs">
                <%--</div>--%>
                <li><a href="#quote">Request a free quote</a></li>
                <li><a href="#ourlocations">Global Locations</a></li>
            </ul>
            <div class="tab_container">
                <div id="quote" class="tab_content">
                    <div style="margin: 0 auto;">
                        <table class="request_form" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="3">
                                    <h1 style="font-size: 16px;">
                                        Contact us</h1>
                                    <p style="font-size: 14px; color: #0B76BA;">
                                        Please leave us your most valued contact details… Your interest in contacting us
                                        might
                                        <br />
                                        be a great chance to <span class="bold" style="color: #0B76BA;">Win a Brand New Windows
                                            8 Surface*</span>, every month on a lot basis…</p>
                                    <p style="font-size: 14px;">
                                        <label>
                                            Name*</label>
                                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True"></asp:TextBox><asp:RequiredFieldValidator
                                            ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="*" ControlToValidate="NameTextBox"
                                            SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <label>
                                            Designation*</label>
                                        <asp:TextBox ID="DesignationTextBox" runat="server" CausesValidation="True"></asp:TextBox><asp:RequiredFieldValidator
                                            ID="DesignationValidator" runat="server" Display="Dynamic" ErrorMessage="*" ControlToValidate="DesignationTextBox"
                                            SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <label>
                                            Company*</label>
                                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CompanyValidator" runat="server" Display="Dynamic"
                                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="CompanyTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                                        <label>
                                            Country*</label>
                                        <asp:TextBox ID="countrytextbox" runat="server" CausesValidation="True"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="countrytextbox" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <label>
                                            Contact*</label>
                                        <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="ContactTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <label>
                                            Email address*</label>
                                        <asp:TextBox ID="MailTextBox" runat="server" class="mailtext" CausesValidation="True"></asp:TextBox>
                                        <span style="color: #ff0000; display: none;" id="maildiv">Only official mailid</span>
                                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;
                                  <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server"
                                            ControlToValidate="MailTextBox" Display="Dynamic" ErrorMessage="Enter a valid mail ID"
                                            SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                            ForeColor="Red"></asp:RegularExpressionValidator>
                                        <br />
                                        <label>
                                            Website</label>
                                        <asp:TextBox ID="WebsiteTextBox" runat="server"></asp:TextBox>
                                        <br />
                                        <label>
                                            Message*</label>
                                        <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Rows="7"
                                            TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="MessageValidator" runat="server" Display="Dynamic"
                                            ErrorMessage="*" SetFocusOnError="True" ControlToValidate="MessageTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <label>&nbsp;</label>
                                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />&nbsp;
                                        <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />
                                        <br />
                                        <asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="ourlocations" class="tab_content">
                    <div class="map">
                        <div class="map_image">
                            <div class="india">
                                <div style="position: absolute">
                                    <a title="" href="#" id="india">
<asp:Image ID="Image2" runat="server" CssClass="noborder" ImageUrl="Images/india.png" />
                                    </a>
                                </div>
                            </div>
                            <div class="uae">
                                <div style="position: absolute">
                                    <a title="" href="#" id="uae">
                     <asp:Image ID="Image4" runat="server" CssClass="noborder" ImageUrl="Images/uae.png" />
                                    </a>
                                </div>

                            </div>
                            <div class="us">
                                <div style="position: absolute">
                                    <a title="" href="#" id="us">
                                        <asp:Image ID="Image3" runat="server" CssClass="noborder" ImageUrl="Images/usa.png" />
                                    </a>
                                </div>
                            </div>
                            <div class="singapore">
                                <div style="position: absolute">
                                    <a title="" href="#" id="singapore">
                                        <asp:Image ID="Image1" runat="server" CssClass="noborder" ImageUrl="Images/illinois.png" />
                                    </a>
                                </div>
                            </div>
                            <div class="uk">
                                <div style="position: absolute">
                                    <a title="" href="#" id="uk">
                                        <asp:Image ID="Image5" runat="server" CssClass="noborder" ImageUrl="Images/uk.png" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<img src="Images/contact_map.jpg" class="map" alt="Contact us map" />--%>
                    <location:location_contact ID="locations" runat="server" />
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
