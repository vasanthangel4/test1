<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    Async="true" CodeFile="Download-CaseStudies.aspx.cs" Inherits="Download_CaseStudies" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft dynamics case studies India</title>
    <meta name="description" content="Case studies" />
    <meta name="keywords" content="downloads, case studies, presentation, videos" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/gallery_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        a.downloadlink
        {
            float:left;
        }
        #tab1 a.downloadlink
        {
            float: right;
            color: #7e9c1a;
        }
    </style>
    <link href="Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
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
            border: 0;
        }
    </style>
    <link href="Styles/OthersPages/MaskPopup.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/OtherPages/MaskPopup.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#tab1 a').click(function () {
                $('#layout_ContentPlaceholder_casestudy').val(this.id);
            });
        });
    </script>
    <%--<!-- using service for checking mail ids -->
    <script type="text/javascript">
        // function to check values matching in array
        Array.prototype.inArray = function (value) {
            // Returns true if the passed value is found in the
            // array. Returns false if it is not.
            var i;
            for (i = 0; i < this.length; i++) {
                if (this[i] == value) {
                    return true;
                }
            }
            return false;
        };
        $(document).ready(function () {

            //$("#holdernameResult").hide();
            //var names = $('.names');
            //$('#layout_ContentPlaceholder_submit').attr("disabled", "disabled");
            //create array getnames
            var getmailids = [];
            var getlastnames = [];
            var splittedfirstnames = [];

            //create variable ddl from dropdownlist
            var ddlmailids = document.getElementById('layout_ContentPlaceholder_domainlist');
            for (i = 0; i < ddlmailids.options.length; i++) {
                getmailids[i] = ddlmailids.options[i].value;
            }

            //onchange event of textbox
            $(".mailtext").keyup(function () {
                debugger
                var holdernametext = $('.mailtext').val();
                var firstname = holdernametext.split('@')[0];
                var lastname = holdernametext.split('@')[1];

                //var holdernametextbox = document.getElementById('PagesContent_holdername');
                if (getmailids.inArray(lastname)) {
                    $('#layout_ContentPlaceholder_submit').attr("disabled", "disabled");
                    //$(".mailtext").attr('readonly', true);
                    //alert("Your value is found in the Array");                    
                }
                else {
                    $('#layout_ContentPlaceholder_submit').removeAttr("disabled");                    
                    //$(".mailtext").attr('readonly', true);
                    //alert("Your value is not found in the Array"); 
                }
            });
        });
    </script>
    <!-- end mail ids -->--%>
    <!-- using service for checking mail ids -->
    <script type="text/javascript" src="Scripts/OtherPages/RestrictEmail.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab           
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab               
            });
        });
    </script>
    <!-- end mail ids -->
    <%--<script type="text/javascript">
        function getUrlVars() {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        }
        $(document).ready(function () {
            var querystring = getUrlVars();
            //Default Action
            $(".tab_content").hide(); //Hide all content
            if (querystring == "casestudies") {
                $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab
                $(".tab_content:#tab1").show(); //Show first tab content
            }
            else if (querystring == "presentation") {
                $("ul.tabs li:nth-child(2)").addClass("active").show(); //Activate first tab
                $(".tab_content:#tab2").show(); //Show first tab content
            }
            else {
                $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab
                $(".tab_content:#tab1").show(); //Show first tab content
            }
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
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/showcase.jpg" alt="showcase"/>
    </div>--%>
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
    <h1 style="border: none; display: none;">
        Downloads - CaseStudies</h1>
    <div id="boxes">
        <!-- Start of Login Dialog -->
        <div id="dialog1" class="window">
            <table class="request_form" cellspacing="0" cellpadding="0">
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
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30"></asp:TextBox>
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
                <%--<tr>
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
                        <%--<asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                            Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                            ValidationExpression="\d{9,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style1">
                        Email address*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" Height="30"></asp:TextBox><br />
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
                <%--<tr>
                    <td class="style1">
                        Website
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="WebsiteTextBox" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;
                        
                    </td>
                </tr>--%>
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
                        <%--<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" />--%>
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
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="Download-CaseStudies.aspx">Case-Studies</a></li>
                <li><a href="Download-Presentations.aspx">Presentations</a></li>
                <li><a href="Download-Brochures.aspx">Brochures</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <input id="casestudy" type="hidden" runat="server" />
                    <%--<a href="downloads/case_studies/Abela_CaseStudy.pdf" target="_blank" class="downloadlink">--%>
                    <a href="#dialog1" id="Abela" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Abela</h2>
                    <p>
                        “Our business has substantially grown over time and it has become increasingly difficult
                        to manage and administer with our current predominantly manual systems. We wanted
                        the new systems to improve the accuracy and speed of the information generated by
                        different departments and ensure its consistency and standardization across the
                        board.” says Mr. Abed Hannawi (CEO) at ABELA & Co.
                    </p>
                    <a href="#dialog1" id="AbiFlow" class="downloadlink" name="modal">Download</a>
                    <h2>
                        ABI Flow</h2>
                    <p>
                        “Our out-dated business management software was not able to provide the accuracy
                        and efficiency which we expected. Inventory management was a big problem for us.
                        We were not able to do proper production planning over a period of time”.</p>
                    <a href="#dialog1" id="BhatiaTraders" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Bhatia Traders</h2>
                    <p>
                        “Sales growth year on year in the UAE due to the economic slowdown is not a reliable
                        indicator, but since deploying Microsoft Dynamics GP, net profit has increased from
                        3.5 per cent to 4.5 per cent.” Dr. R. Durgadoss, Finance Director, Bhatia Traders</p>
                    <a href="#dialog1" id="GraniteConstruction" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Granite Construction Company</h2>
                    <p>
                        Granite Construction Company is one of the known organizations in the Construction
                        field of Oil &amp; Gas, Power &amp; Water, Industrial and Commercial Sectors. The
                        company was founded in 1973, with an entrepreneurial leadership and vision, to establish
                        a leading construction company, a goal which is being achieved due to Technical
                        Expertise, Strategic Planning skills and Stringent Quality Management / HSE policies
                        over 35 years of experience.</p>
                    <a href="#dialog1" id="MourjanMarinas" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Mourjan Marinas</h2>
                    <p>
                        “The software solution used by Mourjan Marinas IGY in the past was not geared to
                        help us manage the company’s diverse operation. This was mostly due to the software
                        not catering to our type of business, and we had to revert to a lot of manual work-arounds.
                        As a result, time required to enter data and produce reports increased. We were
                        spending a substantial amount of time collating data and compiling manual reports.
                        In addition, the previous software solution ran on unstable database software that
                        required constant vigilance from the IT department, which sometimes put our business
                        transactions on hold for hours at a time.” explains Prajosh Karunakaran - Regional
                        Finance Director.</p>
                    <a href="#dialog1" id="SPTMiddleEast" class="downloadlink" name="modal">Download</a>
                    <h2>
                        SPT Middle East LLC</h2>
                    <p>
                        Established in 1994, SPT’s journey so far has witnessed winning the confidence of
                        both suppliers & customers. Today, the company takes pride in being associated with
                        some of world’s most renowned manufacturers and equally prominent customers who
                        are leaders in their respective fields.SPT’s core strengths are a reflection of
                        the efforts invested by a professional management system ensuring that the pursuit
                        of excellence is guided by the vision for market leadership.</p>
                    <a href="#dialog1" id="SupraIndustrial" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Supra Industrial Co.Ltd</h2>
                    <p>
                        Supra Industrial Co .Ltd. is a part of Jumbo Group . Supra Industrial Co.Ltd. (SICO)
                        is an ISO 9001 certified manufacturing company based in Jebel Ali Industrial Area
                        in Dubai. SICO is in the business of manufacturing wide range of freezers-- hard-tops,
                        glass-tops, curved glass, and verticals - for two decades and has earned an excellent
                        reputation as a supplier of high quality products. SICO also supplies gas cooking
                        ranges and air conditioners, as well as special purpose freezers like table tops.
                        The primary business of the company is to manufacture for other OEMs.</p>
                    <a href="#dialog1" id="EuroCoffee" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Euro Coffee LLC</h2>
                    <p>
                        Established in 1900, established through more than 100 years of experience in the
                        coffee business, is at your service every day. The guarantee of our brand comes
                        from the dedicated work of people and the innovative use of technology. For us,
                        quality isn't controlled' but 'developed', through a strict system of procedures
                        overseeing the selection of the beans, proper roasting, assembling the right blend
                        and putting our product in packages that are meant to last. Each and every production
                        phase is checked by specialized operators, using state-of-the-art technologies.</p>
                    <a href="#dialog1" id="Arab" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Arabtec Envirogreen Facility Management Services</h2>
                    <p>
                        The emergence of ArabtecEnvirogreenFacility Management Services LLC follows thenatural
                        progression of Arabtec’s 37 yearsparticipation in the growth and success ofboth
                        the Middle East Construction andMaintenance sectors. The Partnership of theArabtec
                        Holding PJSC, Envirogreen Ltd ofIreland and Emirates Falcon Electromechanical Company
                        businessesprovides a truly unique facilities managementcompany unrivalled within
                        the Middle East FMmarket.</p>
                    <a href="#dialog1" id="APL" class="downloadlink" name="modal">Download</a>
                    <h2>
                        APL Management JLT</h2>
                    <p>
                        APL Management APL Management is a group of three companies, Aerovista, Noble Design
                        Solutions, APL management. The business of Aerovista is to offer expert wet lease
                        and charter solutions as well as related ancillary services to clients in fast-growing,
                        emerging markets. Noble Design Solutions LLC is a multi-faceted interior design
                        company mainly focusing on interior design, architectural, supply of decorative
                        materials for commercial, private, hotels and high rise projects.</p>
                    <a href="#dialog1" id="worldwide-oilfield" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Worldwide Oilfield Machine M.E</h2>
                    <p>
                        Worldwide Oilfield Machine (WOM) is a globally recognized multinational company
                        that was established in 1980 with its headquarters based in Houston, Texas with
                        over 2,500 employees, WOM group of companies is strategically located worldwide
                        with manufacturing facilities, engineering centers, sales offices, and assembly/
                        testing workshop in Houston-Texas, Pune-India, Dubai-UAE and Singapore.</p>
                    <a href="#dialog1" id="swan" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Swan enterprises pvt ltd</h2>
                    <p>
                        Swan Enterprises was established in 1969 in Bombay, with the purpose of carrying
                        out import substitution activity for refineries, petrochemicals and fertilizers.
                        In the span of 5 years a lot of items were developed like trays, hexmesh, orifice
                        plates, thermowells etc. Swan is specialized in providing emergency service during
                        plant trunarounds shutdowns without compromising in quality.</p>
                    <a href="#dialog1" id="radio-holland" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Radio Holland</h2>
                    <p>
                        Radio Holland is the leading Quality Provider of Navigation / Communication Electronics
                        and Services to the Maritime, Oil & Gas and Land Communications Industries with
                        25 years of operations. Radio Holland Middle East is a part of Radio Holland Group,
                        a specialized company in the supply, installation, integration and service of maritime
                        electronics.</p>
                    <a href="#dialog1" id="cats" class="downloadlink" name="modal">Download</a>
                    <h2>
                        Control &amp; Applications Technology Solutions LLC (CATS)</h2>
                    <p>
                        Control & Applications Technology Solutions LLC (CATS) is a specialized supplier,
                        installation and maintenance company. It delivers solutions and services to its
                        clients in different industries such as metals and mining, oil and gas, as well
                        as the power and water industries in the Middle East. Implementing Microsoft Dynamics
                        AX 2012 has given the company comprehensive visibility over its projects, resulting
                        in better execution and more efficient financial control.</p>
                    <a href="#dialog1" id="siged" class="downloadlink" name="modal">Download</a>
                    <h2>
                        SiGED Emirates</h2>
                    <p>
                        As a leading mechanical engineering contractor, SiGED Emirates specializes in the
                        design, manufacture, installation and maintenance of steel structures and industrial
                        piping in the oil and gas sector. It needed an ERP solution that would provide a
                        comprehensive overview of each project, particularly relating to procurement and
                        resource management. Implementing Microsoft Dynamics AX 2012 allowed the firm to
                        meet its business requirements and more.</p>
                </div>
                <%--<div id="tab2" class="tab_content">
                    <div class="video_div">
                        <div class="video_thumb">
                            <img src="Images/video_customersmeet2010.jpg" alt="customersmeet" />
                        </div>
                        <div class="text_link">
                            <h2>
                                Customers Meet 2010</h2>
                            <a href="#dialog1" class="downloadlink" name="modal">Watch Video</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="video_thumb">
                            <img src="Images/video_windows7_sharepoint.jpg" alt="sharepoing" />
                        </div>
                        <div class="text_link">
                            <h2>
                                Event: Windows 7 &amp; Sharepoint 2010
                            </h2>
                            <a href="#dialog1" class="downloadlink" name="modal">Watch Video</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="video_thumb">
                            <img src="Images/video_seminar_crm.jpg" alt="seminar crm" />
                        </div>
                        <div class="text_link">
                            <h2>
                                Seminar on Microsoft Dynamics CRM
                            </h2>
                            <a href="#dialog1" class="downloadlink" name="modal">Watch Video</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="video_thumb">
                            <img src="Images/video_recessionGrowth.jpg" alt="recession growth" />
                        </div>
                        <div class="text_link">
                            <h2>
                                Event: Growth during recession can be a challenge</h2>
                            <a href="#dialog1" class="downloadlink" name="modal">Watch Video</a>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
