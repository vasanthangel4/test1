<%@ Page Title="" Language="C#" 
    AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="AXPayroll_Support_Index" %>
<%@ Register TagPrefix="footer" TagName="cem_footer" Src="~/UserControls/footer.ascx" %>
<%@ Register TagName="extended" TagPrefix="menu" Src="~/UserControls/ExtendedMenu.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>CEM Business Solutions</title>
   <link href="../../Styles/v3/common-style.css" rel="stylesheet" type="text/css" />
   <link rel="icon" href="../../Images/titlelogo.png" type="image/png" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script type="text/javascript">
        function alertwindow(message) {
            //debugger
            alert(message);
            window.location = 'Index.aspx';
        }
    </script>
    <script src="../../clearbox.js" type="text/javascript"></script>
    <!-- ajax tabs -->
    <link href="../../Styles/tabmenu.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

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
    <!-- end ajax tabs -->
    <script src="../../Scripts/sliding_social.js" type="text/javascript"></script>
    <script src="../../Scripts/easyTooltip.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("a#facebook").easyTooltip({
                tooltipId: "easyTooltip_facebook",
                content: '<h2>Facebook</h2>'
            });
            $("a#twitter").easyTooltip({
                tooltipId: "easyTooltip_twitter",
                content: '<h2>Twitter</h2>'
            });
            $("a#flickr").easyTooltip({
                tooltipId: "easyTooltip_twitter",
                content: '<h2>Flickr</h2>'
            });
            $("a#google").easyTooltip({
                tooltipId: "easyTooltip_twitter",
                content: '<h2>GooglePlus</h2>'
            });
            $("a#slideshare").easyTooltip({
                tooltipId: "easyTooltip_twitter",
                content: '<h2>Slideshare</h2>'
            });
        });
    </script>    

    <style type="text/css">
        .div_content
        {
            padding: 10px 20px 10px 20px;
        }
        ol
        {
            padding: 0 0 0 15px;
        }
        .sharethis
        {
            
        }
        .stButton
        {
            margin: 0 5px 0px 5px !important;
        }
        .stButton .st-twitter-counter, .stButton .st-facebook-counter
        {
            height: 25px !important;
        }
        .stButton .stButton_gradient
        {
            height: 23px !important;
        }
        .stButton .stFb, .stButton .stTwbutton, .stButton .stMainServices
        {
            height: 25px !important;
        }
        ol, ul {
    list-style:number !important;
}
    </style>

    <link href="MaskPopup.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/MaskPopup.js" type="text/javascript"></script>
    <link href="../../Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
         <link rel="icon" href="../../Images/titlelogo.png" type="image/png" />
    <link href="../../autocomplete_src/demos.css" rel="stylesheet" type="text/css" />
    <link href="../../autocomplete_src/jquery.ui.autocomplete.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/v3/responsive.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/jquery.ui.accordion.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
       <link href="../../Styles/v3/home-style.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/mobile.css" rel="stylesheet" type="text/css" />
        <script src="Scripts/RestrictEmail.js" type="text/javascript"></script>
  
    <link href="../../Styles/cem_styles.css" rel="stylesheet" type="text/css" />
      <link href="../../Styles/services.css" rel="stylesheet" type="text/css" />


    <!-- end request form -->
    <style type="text/css">
        img
        {
            border: none;
        }
        .style1
        {
            width: 118px;
        }
        .style2
        {
            width: 261px;
        }
        .request_form
        {
            margin: 0 auto;
            padding-left: 15px;
        }
    </style>

    <style type="text/css">
        td
        {
            text-align: left;
        }
        .ltd
        {
            width: 150px;
            padding-right: 10px;
        }
        .mtd
        {
            width: 300px;
        }
        .rtd
        {
            width: 200px;
        }
        #wrapper table.request_form
        {
            padding-left: 0px;
            margin: 0px;
        }
        #wrapper table.request_form .upgradeTable
        {
            background: #fff;
        }
        #mytable ul
        {
            padding: 0;
            margin: 0;
        }
        #mytable ul li
        {
        }
        #mytable
        {
            border: 1px solid #dddddd;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        #mytable td
        {
            padding: 0px 5px 0 10px;
            vertical-align: top;
        }
        #mytable tr
        {
            padding: 0px 5px 0 5px;
        }
        #mytable th
        {
            background: #eeeeee;
            padding-left: 10px;
        }
        .faq
        {
            padding: 0px;
        }
        .faq li
        {
            border-bottom: 1px solid #EEEEEE;
            color: #000000;
            list-style: decimal inside none;
            padding: 15px 0 5px;
        }
        .faq li p
        {
            color: #696969;
            margin-left: 18px;
        }
        ol .blue
        {
            color: #0b76ba;
        }
        .size-980 .line {
    margin: 0 auto;
    max-width: 77.25em;
    padding: 0;
}
ol, ul {
    list-style: decimal outside none !important;
     line-height: 27px;
}

#mytable ol, ul {
    line-height: 19px;
    list-style: disc outside none !important;
}
    </style>
     
</head>
<body class="size-980"  runat="server">
<div class="wrap">

 <form id="form1" runat="server" >
  <header>
           <div class="navbar-link">
    <div class="navbar-linktext">
        Menu</div>
    <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle collapsed"
        type="button">
        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
        </span>
    </button>
</div>
<header>
    <div class="line">
    <!-- Logo Section -->
    <div class="logo-section">
    <div class="cem_logo">
        <a href="/"><img src="http://www.cembs.com/images/v3/logo.png" width="193" height="62" alt="CEM Business Solutions, ERP Consultant, MS Dynamics"/></a>
    </div>
    <div class="logo_rsec">
        <%--<a href="http://us.cembs.com"><img src="http://www.cembs.com/images/uslink.jpg" id="unitedstates" width="178" height="62" alt="United States" border="0" style="margin-right: 30px;" /></a>--%>
        <img src="http://www.cembs.com/images/v3/microsoft_gold_partner.jpg" id="gold" width="185" height="64" alt="Gold partner" style="margin-right: 10px;" />
        <img src="http://www.cembs.com/images/v3/cfmd_logo.png" id="CFMD" width="123" height="64" alt="CFMD"/>
    </div>
    </div>
<div class="top-nav navbar">
    <div class="nav-container">
        <div>
            <label class="responsive_menu" for="responsive_menu">
                <span>&nbsp;</span>
            </label>
            <input id="responsive_menu" type="checkbox">
            <ul class="menu">
                <li id="m_home"><a href="/">Home</a></li>
                <li id="m_about"><a href="http://www.cembs.com/About-CEM.aspx">About CEM</a>
                    <ul>
                        <li><a href="http://www.cembs.com/Customers.aspx">Customers </a></li>
                        <li><a href="http://www.cembs.com/Geo.aspx">Geographies</a></li>
                        <%--<li><a href="Values.aspx">Our values</a></li>--%>
                        <li><a href="http://www.cembs.com/CSR.aspx">Corporate Social Responsibility</a></li>
                        <li><a href="http://www.cembs.com/OurAwards.aspx">Awards</a></li>
                        <%--<li><a href="http://www.cembs.com/Relationship.aspx">Microsoft relationship</a></li>--%>
                        <li><a href="http://www.cembs.com/CFMD.aspx">CfMD</a></li>
                        <li><a href="http://www.cembs.com/Global.aspx">Global Installations</a></li>
                    </ul>
                </li>
                <li id="m_products" class="dropdown"><a href="http://www.cembs.com/CEMProducts.aspx">CEM Products</a>
                    <ul>
                        <li><a href="http://www.cembs.com/Construction-Management-Software.aspx">CEM AX Construct</a></li>
                        <li><a href="http://www.cembs.com/Human-Capital-Management.aspx">CEM AX HCM</a></li>
                        <li><a href="http://www.cembs.com/Payroll-Software.aspx">CEM AX Payroll</a></li>
                        <li><a href="http://www.cembs.com/Construction-Project-Management-Software.aspx">CEM AX ProjectPro</a></li>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-RMS.aspx">CEM AX Retail</a></li>
                        <li><a href="http://www.cembs.com/CEM-AX-Union-Payroll.aspx">CEM AX Union Payroll</a></li>
                    </ul>
                </li>
                <li id="m_services" class="dropdown"><a href="http://www.cembs.com/CEMServices.aspx">CEM Services</a>
                    <%--<div class="columndrop">
                        <div class="col">
                            <ul>
                                <h5>
                                    &nbsp;</h5>
                                <li><a href="Implementation-Services.aspx">ERP &amp; CRM Implementation</a></li>
                                <!--<li><a href="Manpower-Staffing.aspx">Manpower augmentation</a></li>-->
                                <li><a href="http://www.cembs.com/Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                                <li><a href="http://www.cembs.com/ERP-and-CRM-Support.aspx">ERP &amp; CRM Support</a></li>
                                <li><a href="http://www.cembs.com/CRM-ERP-Migration-Services.aspx">Migration</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul>
                                <h5>
                                    &nbsp;</h5>
                                <li><a href="http://www.cembs.com/Project-Management.aspx">Project Management</a></li>
                                <li><a href="http://www.cembs.com/Outsourcing.aspx">Outsourcing</a></li>
                                <li><a href="http://www.cembs.com/Product-Selection.aspx">Product Selection</a></li>
                                <li><a href="http://www.cembs.com/Optimization.aspx">Optimization</a></li>
                                <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud Services</a></li>-->
                            </ul>
                        </div>
                    </div>--%>
                    <ul>
                        <li><a href="http://www.cembs.com/Implementation-Services.aspx">ERP &amp; CRM Implementation</a></li>
                      <%--  <li><a href="http://www.cembs.com/Manpower-Staffing.aspx">Manpower augmentation</a></li>--%>
                        <li><a href="http://www.cembs.com/Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                        <li><a href="http://www.cembs.com/ERP-and-CRM-Support.aspx">ERP &amp; CRM Support</a></li>
                        <li><a href="http://www.cembs.com/CRM-ERP-Migration-Services.aspx">Migration</a></li>
                      <%--  <li><a href="http://www.cembs.com/Project-Management.aspx">Project Management</a></li>--%>
                        <li><a href="http://www.cembs.com/Outsourcing.aspx">Outsourcing</a></li>
<%--                        <li><a href="http://www.cembs.com/Product-Selection.aspx">Product Selection</a></li>--%>
                        <li><a href="http://www.cembs.com/Optimization.aspx">Optimization</a></li>
                        <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud Services</a></li>-->
                    </ul>
                </li>
                <li id="m_dproducts" class="dropdown"><a href="http://www.cembs.com/DynamicsProducts.aspx">Dynamics Products</a>
                    <ul>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-AX.aspx">Dynamics AX</a></li>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-CRM.aspx">Dynamics CRM</a></li>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-GP.aspx">Dynamics GP</a></li>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-Nav.aspx">Dynamics NAV</a></li>
                        <li><a href="http://www.cembs.com/Microsoft-Dynamics-SL.aspx">Dynamics SL</a></li>
                    </ul>
                </li>
                <li id="m_industries" class="dropdown"><a href="http://www.cembs.com/Industries.aspx">Industries<!--ˇ--></a>
                    <ul>
                        <li><a href="http://www.cembs.com/Construction-Management.aspx">Construction</a></li>
                        <li><a href="http://www.cembs.com/Contract-Software.aspx">Contracting</a></li>
                        <li><a href="http://www.cembs.com/Project-Management-Software.aspx">Projects</a></li>
                        <li><a href="http://www.cembs.com/Retail-Management.aspx">Retail</a></li>
                        <li><a href="http://www.cembs.com/Oil-companies.aspx">Oil &amp; Gas</a></li>
                        <li><a href="http://www.cembs.com/Trading.aspx">Trading</a></li>
                        <li><a href="http://www.cembs.com/Logistics.aspx">Logistics / Distribution</a></li>
                        <li><a href="http://www.cembs.com/ProfessionalServices.aspx">Professional Services</a></li>
                        <li><a href="http://www.cembs.com/ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                        <li><a href="http://www.cembs.com/Group-Companies.aspx">Group Companies</a></li>
                    </ul>
                </li>
                <li id="m_blog"><a href="http://www.cembs.com/blog/">Blog</a></li>
                <li id="m_careers"><a href="http://www.cembs.com/Careers/">Careers</a></li>
                <li id="m_contact"><a href="http://www.cembs.com/Contactus.aspx">Contact Us</a></li>
            </ul>
        </div>
    </div>
</div>
           
                <menu:extended ID="extended" runat="server" />
             </div>
    <!-- Banner Section --> 
</header>
            <!-- Banner Section -->        
        </header>


<div  id="wrapper">

   
  <%--<asp:Label ID="sessionlabel" runat="server" Text=""></asp:Label>--%>
    <a href="" runat="server" id="sessionlabel"></a>
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
    <div class="content_div">
    <div id="boxes">
        <!-- Start of Login Dialog -->
        <div id="dialog1" class="window">
            <table width="570" class="request_form" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <h1>
                            Submit your details</h1>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                            ControlToValidate="NameTextBox" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <%--<tr>
                <td class="style1">
                    Designation*
                </td>
                <td class="style2">
                    <asp:TextBox ID="DesignationTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="DesignationValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your designation" ControlToValidate="DesignationTextBox"
                        SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>--%>
                <tr>
                    <td class="style1">
                        Company*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="CompanyValidator" runat="server" Display="Dynamic"
                            ErrorMessage="Company name required" SetFocusOnError="True" ControlToValidate="CompanyTextBox"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Contact number*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                            ErrorMessage="Contact number required" SetFocusOnError="True" ControlToValidate="ContactTextBox"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                            Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                            ValidationExpression="\d{9,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Email address*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200px"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="maildiv">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Website
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="WebsiteTextBox" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <%--<tr>
                <td valign="top" class="style1">
                    Message*
                </td>
                <td class="style2">
                    <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Width="250px"
                        Rows="7" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="MessageValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Type your message" SetFocusOnError="True" ControlToValidate="MessageTextBox"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>--%>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />&nbsp;
                        <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />
                    </td>
                    <td>
                        &nbsp;<asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td class="style2">
                        &nbsp; * Kindly fill all the information.
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <!-- End of Login Dialog -->
        <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
    </div>
    <div class="container" style="width: 970px">
        <div class="div_content">
            <h1>
            Contact Support Steps
            </h1>
            <p>
             It is important for an end-user to include their Value Added Reseller (VAR) on support related issues. This will ensure that VAR is aware of both your situation and our products with the fixes we provide. This will enable them to provide you better support in the future. Additionally they can assist you with the steps below to speed up the resolving time in case of any issue.<br />
           To speed up the support process, please follow the steps below.</p>
            <ol>
                <li>Contact your Microsoft Dynamics AX Value Added Reseller (VAR).</li>
                <li>Check the Product Documentation & Previous issue logs to confirm that proper procedures were followed.</li>
            </ol>
            <ol start="2" type="1">
                <ol start="1" type="1">
                    <ol start="1" type="1">
                        <li>Installation documentation – contains details on general installation procedures</li>
                        <li>User documentation – contains many set-up, workflow and form element details</li>
                    </ol>
                </ol>
            </ol>
            <ol start="3" type="1">
                <li>Try to rule out any other third party customizations or Microsoft Dynamics AX itself</li>
            </ol>
            <ol start="3" type="1">
                <ol start="1" type="1">
                    <ol start="1" type="1">
                        <li>Disable the CEM Product – remove the license file of partner features set from Microsoft Dynamics AX and use only standard AX windows and reports</li>
                        <li>Run some tests</li>
                    </ol>
                </ol>
            </ol>
            <ol start="4" type="1">
                <li>Reproduce and document the issue capturing the following information:</li>
            </ol>
            <ol start="4" type="1">
                <ol start="1" type="1">
                    <ol start="1" type="1">
                        <li>Procedural steps</li>
                        <li>Screen shots</li>
                        <li>SQL logs</li>
                    </ol>
                </ol>
            </ol>
            <ol start="5" type="1">
                <li>Send the captured information along with the following additional information in an email to 
                  &nbsp;<a class="blue" href="mailto:payrollsupport@cembs.com">payrollsupport@cembs.com</a></li>
            </ol>
            <ol start="5" type="1">
                <ol start="1" type="1">
                    <ol start="1" type="1">
                        <li>Name of the VAR</li>
                        <li>End user name</li>
                        <li>Name(s) of CEM Business Solutions’ products and/or customization(s)</li>
                        <li>Build number(s) of CEM’s products</li>
                        <li>	Version and service pack of Microsoft Dynamics AX from &nbsp;<em>Help &gt;&gt; About Microsoft Dynamics AX…</em></li>
                    </ol>
                </ol>
            </ol>
            &gt;&gt; You can also call us at 
   <span style="color: #0b76ba;">+971 4 3911683</span> &amp; <span style="color: #0b76ba;">
               +971 6 5734700</span>.
            <br />
            <br />
            <h1>
                Service Level Agreement</h1>
            <table border="0" cellspacing="0" cellpadding="0" width="940" id="mytable">
                <tr>
                    <th width="30" valign="top">
                        <p align="center">
                            <strong>Severity</strong></p>
                    </th>
                    <th width="206" valign="top">
                        <p align="center">
                            <strong>Customer’s situation</strong></p>
                    </th>
                    <th width="180" valign="top">
                        <p align="center">
                            <strong>Expected CEM Response</strong></p>
                    </th>
                    <th width="180" valign="top">
                        <p align="center">
                            <strong>Expected Customer Response</strong></p>
                    </th>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="30" valign="top">
                        1
                    </td>
                    <td width="206" valign="top">
                        <ul class="ul_reasons" style="list-style-type:none">
                            <li style="list-style-type:none">Critical business impact: </li>
                            <li style="list-style-type:none">Customer has complete loss of core (mission critical) business process and cannot continue operations</li>
<li style="list-style-type:none">Needs immediate attention</li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul >
                            <li>CEM Resources at customer site as soon as possible.</li>
                            <li>Rapid Escalation within CEM to support team </li>
                            <li>Notification to Senior Executives at CEM</li>
                            <li>1st call response in 4 hours or less </li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>Notification to Senior executives at customer site</li>
                            <li>Allocation of appropriate resources to sustain continuous effort on a 24x7 basis</li>
                            <li>Rapid access and response from change control authority</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="66" valign="top">
                        2
                    </td>
                    <td width="206" valign="top">
                        <ul style="list-style-type:none">
                            <li style="list-style-type:none">Moderate business impact: </li>
                            <li style="list-style-type:none">Customer’s business has moderate loss or degradation of services but work can reasonably continue in an impaired manner.</li>
                            <li style="list-style-type:none">Needs attention within 4 hours</li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>1st call response in 8 Business hours or less</li>
                            <li>Effort during business hours only</li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>Allocation of appropriate resources to sustain business hours continuous effort</li>
                            <li>Access and response from change control authority within 8 business hours</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="66" valign="top">
                        3
                    </td>
                    <td width="206" valign="top">
                        <ul>
                            <li style="list-style-type:none">Minimum business impact: </li>
                            <li style="list-style-type:none">Customer’s business is substantially functioning with minor or no impediments of services</li>
                            <li style="list-style-type:none">Needs attention within 8 hours</li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>1st call response in 16 Business hours or less</li>
                            <li>Effort during business hours only</li>
                        </ul>
                        <p>
                            &nbsp;
                        </p>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>Accurate contact information on case owner</li>
                            <li>Responsive within 24 hours.</li>
                        </ul>
                    </td>
                </tr>
            </table>
            <%--<h1>
                Frequently Asked Questions</h1>
            <ol class="faq">
                <li>How to set up Payroll number sequence?
                    <p>
                        <strong>Solution: -</strong> Navigate to the following path:<span class="blue"> Payroll
                            -> Setup -> Parameters -> Payroll parameters -> Number sequence</span><br />
                        Select the number sequence code for the corresponding reference.</p>
                </li>
                <li>How to configure Payroll loan workflow?
                    <p>
                        <strong>Solution: -</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Setup -> Payroll workflows</span>
                        <br />
                        Click <strong>New</strong> and Select the type of workflow to create and click <strong>
                            create workflow </strong>and then configure it and select save and close.</p>
                </li>
                <li>Why leave encashment components are not listed in general journal lines after posting
                    payroll?
                    <p>
                        <strong>Solution: -</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Setup -> Employee -> Payroll posting profiles</span><br />
                        Add the leave encashment component against the salary process ID and select the
                        main account and offset account for the leave encashment.</p>
                </li>
                <li>Why loan amount is not deducted in the salary process?
                    <p>
                        <strong>Solution: -</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Setup -> Component -> Component master</span>
                        <br />
                        Check whether the process eligibility for loan deduction component is mapped to
                        the salary process.<br />
                        (Or)<br />
                        Navigate to the following path: <span class="blue">Payroll -> Setup -> Employee -> Employee
                            group</span><br />
                        Check the minimum salary to be paid for the employee&rsquo;s employee group. If
                        the net salary is less than minimum salary to be paid, then the loan amount will
                        not be deducted during the payroll process and the deduction amount will be updated
                        as other deduction for the next month. This can be viewed in <strong>other earning and
                            deduction</strong> window.</p>
                </li>
                <li>While applying for a leave system shows an error message &ldquo;Employee is not
                    mapped for this calendar&rdquo;?
                    <p>
                        <strong>Solution:</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Common -> Employee calendar mapping</span><br />
                        Check the employee is added for that period in calendar.</p>
                </li>
                <li>Why the leave ID look up is empty while applying leave request for the employee?
                    <p>
                        <strong>Solution:</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Common -> Employees -> Employees -> On the Action pane Click Leave tab -> Entitlement.</span><br />
                        Add all the leave types which are eligible for the employee. Now the lookup shows
                        the leave ID.
                    </p>
                </li>
                <li>Is it possible to disable some claim types?
                    <p>
                        <strong>Solution:</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Setup -> Claims -> Claim type.</span><br />
                        Select the inactive checkbox against the claim type which you want to disable.</p>
                </li>
                <li>Why system shows an error message&rdquo; Error: while setting server report parameters.&rdquo;
                    while opening a report?
                    <p>
                        <strong>Solution:</strong> Navigate to the following path: <span class="blue">System
                            administration -> Setup -> Business intelligence -> Reporting Services -> Report
                            servers.</span><br />
                        Check whether the <strong>Report Manager URL</strong> is given correctly.</p>
                </li>
                <li>Where the payroll components are mapped for the employee?
                    <p>
                        <strong>Solution:</strong> Navigate to the following path: <span class="blue">Payroll
                            -> Common -> Employees -> Employees -> On the Action pane Click Edit -> Select Components
                            fast tab.</span><br />
                        In this window, you can see all the mapped payroll components for the employee.</p>
                </li>
                <li>Why Social Security fund processing is not done for all the employees?
                    <p>
                        <strong>Solution:</strong> Social security fund will be processed only to the resident
                        employees.</p>
                </li>
                <li>Why system shows an error message &ldquo;Please map components for this position&rdquo;
                    while opening the components fast tab in employee form?
                    <p>
                        <strong>Solution: </strong>Navigate to the following path: <span class="blue">Payroll
                            -> Common -> Employees -> Employees -> On the Action pane Click Edit -> On the Action
                            pane Click Add assignment.</span><br />
                        Add position to the employee and then open the components fast tab.
                    </p>
                </li>
            </ol>--%>
            <%--<p>
                <h2 style="margin: 0 0 0 0">
                    Contact Information:</h1>
                <br />
                For all support queries, please write to us at <a href="mailto:payrollsupport@cembs.com">
                    payrollsupport@cembs.com</a>.
                <br />
                For escalations, you may contact:
                <br />
                <a href="mailto:Sridharan@cembs.com">Sridharan@cembs.com</a><br />
                <a href="mailto:Vipul@cembs.com">Vipul@cembs.com</a><br />
                <a href="mailto:abhiram@cembs.com">abhiram@cembs.com</a></p>--%>
            <br />
            <br />
            <p class="MsoNormal">
              We assure our customers that, as Microsoft introduces new features, our solution will be upgraded and you can install the latest version of solution and enjoy new features.
            </p>
            <a href="" class="downloadlink" style="cursor: pointer; color: #0b76ba;" name="modal"
                id="doc" runat="server">Please click here to download FAQ document.</a>
        </div>
        <div style="width: 900px !important; clear: both !important; margin: 10px 20px;">
            <span class='st_facebook_hcount' displaytext='Facebook'></span><span class='st_twitter_hcount'
                displaytext='Tweet'></span><span class='st_linkedin_hcount' displaytext='LinkedIn'>
            </span><span class='st_googleplus_hcount' displaytext='Google +'></span><span class='st_email_hcount'
                displaytext='Email'></span>
        </div>
    </div>
    </div>
 

    </div>    
       </form>    </div>
   </body>
      </html>

