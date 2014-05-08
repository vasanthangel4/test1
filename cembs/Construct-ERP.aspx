<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPage.master" AutoEventWireup="true" Async="true"
    CodeFile="Construct-ERP.aspx.cs" Inherits="Construct_ERP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Construction Management Software | CEM AX Construct</title>
    <meta name="description" content="With increased competition adding intensity to the growing economy, Construction companies are planning to complete their ambitious projects at a shorter period. However, this complex business involves material, manpower and many third party services like partnering, financing etc., from various parts of the world. Adding to this are compliance requirement and quality norms from customers, government and unions set a new benchmark making the business even more complex. CEM Construct AX Product designed to meet the chalenges in constrction industry." />
    <meta name="keywords" content="construction erp, erp software for construction industry, microsoft dynamics modules, construction erp software" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <link href="Styles/tabmenu.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
            });
        });
        function name_blur(_this) {
            if (_this.value == '') {
                _this.value = 'Name *';
            }
            else {
                _this.value;
            }
        };
        function company_blur(_this) {
            if (_this.value == '') {
                _this.value = 'Company *';
            }
            else {
                _this.value;
            }
        };
        function mail_blur(_this) {
            if (_this.value == '') {
                _this.value = 'Work mail *';
            }
            else {
                _this.value;
            }
        };
        function phone_blur(_this) {
            if (_this.value == '') {
                _this.value = 'Work Phone *';
            }
            else {
                _this.value;
            }
        };
    </script>
    <style type="text/css">
        #wrapper .header .logo
        {
            z-index: 1000 !important;
        }
        .tab_content
        {
            width: 290px !important;
            float: left;
            font-size: 14px !important;
            text-align: left !important;
            padding: 10px !important;
        }
        p
        {
            text-align: left !important;
        }
        li
        {
            line-height: 19px !important;
        }
        h4
        {
            margin: 0;
            padding: 10px 0;
        }
        h2
        {
        }
        img
        {
            box-shadow: 0px !important;
        }
        .textbox
        {
            width: 200px !important;
            border: 0px solid #bdbdbd;
            background: #fff;
            color: #505050;
            margin: 1px 0 2px 0px;
            padding: 7px 10px;
            line-height: 18px;
            text-align: left;
            float:left;
        }
        .leftalign
        {
            text-align: left;
        }
        .clearboth
        {
            clear:both;
        }
        .leftalign span{float:left;}
        .button
        {
            background: url('Images/demo_btn.png') no-repeat;
            border: 0 none;
            cursor: pointer;
            height: 31px;
            width: 132px;
            margin: 0px 0;
        }
        .button:hover
        {
            background: url('Images/demo_btn_hover.png') no-repeat !important;
            border: 0 none;
            cursor: pointer;
            height: 31x;
            width: 132px;
            margin: 0px 0;
        }
        .clearfix
        {
            clear: both;
        }
    </style>
    <style type="text/css">
        img
        {
            border: none;
        }
        .style1
        {
            width: 100px;
        }
        .style2
        {
            width: 205px;
        }
        .request_form
        {
            margin: 0 auto;
            padding-left: 15px;
            border:0;
        }
    </style>
    <!-- google analytics -->
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <!-- end google analytics -->    
    <link href="Styles/OthersPages/MaskPopup.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/OtherPages/MaskPopupSetTimeout.js"></script>
    <style type="text/css">
        a.downloadlink
        {
            float: right;
            color: #7e9c1a;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="landing_ContentPlaceholder" runat="Server">
<div id="boxes">
        <!-- Start of Login Dialog -->
        <div id="dialog1" class="window" style="width:474px; padding-bottom:33px;">
            <div class="close" style="background:url(Images/closebutton.png) no-repeat; width: 40px; height: 40px; position: absolute; cursor: pointer; right: -15px; top: -9px;"></div>
            <table class="request_form" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <h1 style="font-size:18px;">
                            Fill in the form below and we'll contact you shortly</h1>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200" Height="30" ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                            ControlToValidate="NameTextBox" SetFocusOnError="True" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Company*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200" Height="30" ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Company Required"
                            ControlToValidate="CompanyTextBox" SetFocusOnError="True" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Work Email*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" Height="30" ValidationGroup="fill"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="maildiv">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Work Phone*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" Width="200" Height="30" ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Phone Required"
                            ControlToValidate="PhoneTextBox" SetFocusOnError="True" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Fill_Click" ValidationGroup="fill" />&nbsp;
                        <%--<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />--%>
                    </td>
                    <td>
                        &nbsp;<asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">&nbsp;
                        
                    </td>
                    <td class="style2">
                        &nbsp; * Kindly fill all the information.
                    </td>
                    <td>&nbsp;
                        
                    </td>
                </tr>
            </table>
        </div>
        <!-- End of Login Dialog -->
        <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
    </div>
    <div class="content_div">
        <div class="common_banners" style="margin: 0; padding: 0; height: 250px !important">
            <img src="Images/construction-banner-rest.jpg" style="height: 250px !important" alt="CEM Construct"
                width="980" height="250" />
        </div>
        <div>
            <div style="padding: 0 10px 0 10px; text-align: justify; float: left; width: 630px;">
                <div id="overview" class="tab_content" style="width: 290px !important; float: left;">
                    <h1 style="border-bottom: 1px dashed #DDDDDD; color: #0B76BA; font-size: 18px; font-weight: normal;
                        margin: 0; padding-bottom: 10px;">
                        CEM AX Construct</h1>
                    <p>
                        AX 2012 is Microsoft Dynamics’ most powerful, robust ERP platform to date. And CEM
                        AX Construct harnesses all this power with several custom add-ons tailored for the
                        Construction Industry. General contractors, sub-contractors and specialty contractors
                        all know the difficulty of managing several projects at a time. Materials arrive
                        late, schedule shift – but payrolls still have to be met. It’s always a fluid situation,
                        and it takes a software system with horsepower and experience to bring all the elements
                        of a contractor’s business into focus.</p>
                </div>
                <div id="Div1" class="tab_content float_left " style="width: 300px !important;">
                    <h2>
                        Benefits of CEM Construct:</h2>
                    <ul class="ul_reasons">
                        <li>User-friendly interface </li>
                        <li>Manage project efficiency </li>
                        <li>Complete control of project finances </li>
                        <li>Subcontractor tracking and management </li>
                        <li>Sophisticated procurement </li>
                        <li>Scalability of operations </li>
                        <li>Improved quality of work </li>
                        <li>Better equipment utilization </li>
                        <li>Reduced inventory levels </li>
                        <li>Estimated schedule vs. actual activity reports</li>
                    </ul>
                </div>
                <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                    CEM AX Construct tracks critical data from projects, warehousing and project-specific
                    procurement processes, then links this information with the company’s other operational
                    divisions. The result is bird’s eye view of where everything is at a given time,
                    so decisions can be made on an informed basis.</p>
                <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                    Another attractive feature of CEM AX Construct is the user-friendly interface. If
                    users are familiar with Windows, they will adapt to CEM AX Construct in no time.
                </p>
                <p class="clearfix" style="padding: 0px 0px 0px 10px; color: #0B76BA; font-weight: bold;">
                    CEM has added the following modules within Dynamics AX 2012 in order to provide
                    a comprehensive solution.</p>
                <div id="workforce" class="tab_content clearfix">
                    <h2>
                        Resource Management</h2>
                    <ul class="ul_reasons">
                        <li>Maintain trade agreements for labor supply with effective dates</li>
                        <li>Maintain project-specific timesheets for contract employees </li>
                        <li>Track the food &amp; accommodation of contract employees for prompt back charging</li>
                        <li>Keep a history of contract employees and maintain an option for purging the hired employee details
                        </li>
                        <li>Insure the use payment certification process for approving vendor invoices </li>
                    </ul>
                </div>
                <div id="advancedinventory" class="tab_content">
                    <h2>
                        Advanced Inventory Management</h2>
                    <ul class="ul_reasons">
                        <li>Maintain categorization of items </li>
                        <li>Make quick use of the Item Creation Wizard </li>
                        <li>Budget by various levels of item hierarchy </li>
                        <li>Manage returnable items issue and return to projects, vendors and clients </li>
                        <li>Define Surplus Declaration </li>
                        <li>Manage transit items </li>
                    </ul>
                </div>
            </div>
            <div style="float: left; width: 330px; min-height: 685px; margin: 10px 0px 0px 0px;
                background: url('Images/ConstructForm_bg.png') no-repeat top center;">
                <div style="color: #ffffff; text-align: center; text-align: center; width: 240px;
                    margin: 113px auto 0;">
                    <%--<h4>
                        Get a demo &amp;
                        <br />
                        Learn more about CEM AX Construct</h4>--%>
                    <div style="color: #000; text-align: center; margin: 5px 0 0 0;">
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block; ">
                            <asp:TextBox ID="NameTxt" CssClass="textbox" Text="Name *" runat="server" onfocus="this.value=''"
                                onBlur="name_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Display="Dynamic"
                                ForeColor="Red" ControlToValidate="NameTxt" InitialValue="Name *"></asp:RequiredFieldValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block; ">
                            <asp:TextBox ID="CompanyTxt" CssClass="textbox" Text="Company *" runat="server" onfocus="this.value=''"
                                onBlur="company_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Display="Dynamic"
                                ForeColor="Red" ControlToValidate="CompanyTxt" InitialValue="Company *"></asp:RequiredFieldValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block; ">
                            <asp:TextBox ID="MailTxt" CssClass="textbox" Text="Work mail *" runat="server" onfocus="this.value=''"
                                onBlur="mail_blur(this.value)"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" Display="Dynamic"
                                ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="MailTxt"></asp:RegularExpressionValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block; ">
                            <asp:TextBox ID="PhoneTxt" CssClass="textbox" Text="Work Phone *" runat="server" onfocus="this.value=''"
                                onBlur="phone_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Display="Dynamic"
                                ForeColor="Red" ControlToValidate="PhoneTxt" InitialValue="Work Phone *" ></asp:RequiredFieldValidator>
                        </div>
                        <div class="leftalign clearboth" style="display: inline-block; margin: 9px auto 0px; ">
                            <asp:Button ID="Button1" runat="server" Text="" CssClass="button" OnClick="submit_Click" /></div>
                    </div>
                </div>
                <div style="color: #ffffff; text-align: center; margin: 143px 0 0 0">
                    <div style="color: #000; text-align: center;">
                        <a href="Contactus.aspx">
                            <img src="Images/construct-map.png" alt="contact" width="304" height="246" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div style="padding: 0 10px 0 10px; text-align: justify; float: left; width: 960px;">
            <div id="staff" class="tab_content clearfix">
                <h2>
                    Employee Management
                </h2>
                <ul class="ul_reasons">
                    <li>Manage accommodations in internal and external camps</li>
                    <li>Manage your camp capacity, accommodation of diversified occupants and guests</li>
                    <li>Manage Trade agreement for caterers to facilitate the accurate cost booking</li>
                    <li>Create a convenient user experience for check in &amp; check out of the occupants</li>
                    <li>Facilitate efficient camp capacity planning</li>
                    <li>Manage the occupants food expenses</li>
                    <li>Track cost allocations to respective projects</li>
                </ul>
            </div>
            <div id="subcontracting" class="tab_content">
                <h2>
                    Sub Contract Management</h2>
                <ul class="ul_reasons">
                    <li>Manage subcontracts scope, work breakdown structure, scope breakup, payment milestone
                        &amp; variation orders </li>
                    <li>Track advances and retentions </li>
                    <li>Track and manage subcontract related documents such as Performance bond, Warrantees
                        etc.</li>
                    <li>Track invoices against scope and scope details</li>
                    <li>Track materials issues and food &amp; accommodation expenses related to subcontracts
                        for prompt back charging </li>
                </ul>
            </div>
            <div id="management" class="tab_content">
                <h2>
                    Tools Management</h2>
                <ul class="ul_reasons">
                    <li>Manage purchasing and hiring of scaffold resources</li>
                    <li>Manage Trade agreements for purchase, hire and discounts </li>
                    <li>Analyze the scaffold logistics from list of requested items to invoiced items</li>
                    <li>Create better utilization of internal materials</li>
                    <li>Identify scrap, lost management of materials </li>
                    <li>Enjoy flexible and controlled Receipt Management</li>
                    <li>Track vendor invoices &amp; have better control and reconciliation</li>
                </ul>
            </div>
            <div id="pmv" class="tab_content clearfix">
                <h2>
                    Equipment and Vehicle Management
                </h2>
                <ul class="ul_reasons">
                    <li>Manage Equipment Purchase &amp; Hiring (External and Internal hiring)</li>
                    <li>Keep track of trade agreements for both internal &amp; external hire </li>
                    <li>Integrate equipment, vehicles with the fixed assets module </li>
                    <li>Maintain &amp; track equipment by log sheets </li>
                    <li>Maintain an equipment transfer history </li>
                    <li>Keep a history of equipment hire renewal</li>
                    <li>Track fuel consumption </li>
                    <li>Manage mobilization/demobilization costs of equipment hire</li>
                    <li>Create regular alerts for equipment-related documents including registration, license,
                        Security pass, warranty period expiration, etc.</li>
                </ul>
            </div>
            <div id="advancedproject" class="tab_content">
                <h2>
                    Advanced Project <br />Management
                </h2>
                <ul class="ul_reasons">
                    <li>Manage project demographics by creating locations and project clusters</li>
                    <li>Complete Scope Management and Change Management for cost tracking and billing</li>
                    <li>Trace project segmentation by tracking the completion stages by control accounts
                    </li>
                    <li>Increase Quality Management with the use of product codes for manpower and equipment
                        usage </li>
                    <li>Provide secured access to project information and relevant transactions on a need-to-know
                        basis </li>
                    <li>Create extensive reporting such as budget vs. actual consumption by various project
                        dimensions</li>
                </ul>
            </div>
            <div id="rmc" class="tab_content">
                <h2>
                    Ready-mix concrete (RMC) <br />purchase</h2>
                <ul class="ul_reasons">
                    <li>Maintain optional items along with main concrete items</li>
                    <li>Maintain quality thresholds for partial truck load and pumping charges </li>
                    <li>Create summary and detailed reporting on concrete purchases for invoice certification</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
