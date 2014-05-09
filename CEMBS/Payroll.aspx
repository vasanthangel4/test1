<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPage.master" AutoEventWireup="true"
    Async="true" CodeFile="Payroll.aspx.cs" Inherits="Payroll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Payroll | CEM Business Solutions</title>
    <meta name="description" content="With increased competition adding intensity to the growing economy, Construction companies are planning to complete their ambitious projects at a shorter period. However, this complex business involves material, manpower and many third party services like partnering, financing etc., from various parts of the world. Adding to this are compliance requirement and quality norms from customers, government and unions set a new benchmark making the business even more complex. CEM Construct AX Product designed to meet the chalenges in constrction industry." />
    <meta name="keywords" content="payroll, cem ax payroll, ax payroll" />
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
            /*width: 290px !important;*/
            float: left;
            font-size: 14px !important;
            padding: 10px !important;
        }
        p
        {
            font-size: 14px;
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
            float: left;
        }
        .leftalign
        {
            text-align: left;
        }
        .clearboth
        {
            clear: both;
        }
        .leftalign span
        {
            float: left;
        }
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
            border: 0;
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
        <div id="dialog1" class="window" style="width: 474px; padding-bottom: 33px;">
            <div class="close" style="background: url(Images/closebutton.png) no-repeat; width: 40px;
                height: 40px; position: absolute; cursor: pointer; right: -15px; top: -9px;">
            </div>
            <table class="request_form" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <h1 style="font-size: 18px;">
                            Fill in the form below and we'll contact you shortly</h1>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill"></asp:TextBox>
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
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                            ErrorMessage="Company Required" ControlToValidate="CompanyTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
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
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"
                            ValidationGroup="fill"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Work Phone*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" Width="200"
                            Height="30" ValidationGroup="fill"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                            ErrorMessage="Phone Required" ControlToValidate="PhoneTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
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
        <div class="common_banners" style="margin: 0; padding: 0; height: 492px !important">
            <img src="Images/payroll-banner-us.jpg" style="height: 492px !important" alt="CEM Construct"
                width="980" height="492" />
        </div>
        <div>
            <div style="padding: 0 10px 0 10px; text-align: justify; float: left; width: 630px;">
                <div id="overview" class="tab_content" style="width: 290px !important; float: left;">
                    <h1 style="border-bottom: 1px dashed #DDDDDD; color: #0B76BA; font-size: 18px; font-weight: normal;
                        margin: 0; padding-bottom: 10px;">
                        CEM AX Payroll</h1>
                </div>
                <%--<div id="Div1" class="tab_content float_left " style="width: 300px !important;">
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
                </div>--%>
                <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                    It is the responsibility of each and every organization to manage and motivate their
                    employees by providing them better wages and compensation as per the industry standards.
                    Indeed, administrating salary including calculation of tax deductions, the retirement
                    benefits and disbursements of salaries are considered to be the backbone of employees&rsquo;
                    operational and satisfaction focus.
                </p>
                <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                    However, managing the payroll process is a bit complicated and challenging. It requires
                    extensive skill-sets and knowledge in several areas including human resource, finance
                    and other related departments. Although organizations do not derive competitive
                    advantage from payroll activities, the function is still critical in carrying out
                    business operations. Lack of Payroll management significantly reduces employee morale
                    and productivity. It is therefore most important that the salaries are paid on time,
                    without the involvement of excessive resources in the process. Establishing a well-run
                    payroll function is not an easy task. Listed are few key challenges faced by payroll
                    management:</p>
                <ul class="ul_reasons" style="font-size:14px; margin-left:10px;">
                    <li>Not enough details are reflected in the pay slip</li>
                    <li>Excessive overtime and excessive payroll staff</li>
                    <li>Repetitive trivial activities like timekeeping, Journal Entry Preparation and distributing
                        pay slips</li>
                    <li>No database of payroll history for the previous years</li>
                    <li>Payroll Software revisions or report revisions are slow and turnover of MIS/IT is
                        also high</li>
                    <li>Manual Payroll is not reflected in the payroll system</li>
                    <li>Last pay computation of resigned employees and their 13th month pay is not computed
                        automatically</li>
                    <li>No report that accounts for changes/variances in the current payroll versus the
                        past period's payroll to make it easy for the company to verify and check the payroll
                        registers</li>
                    <li>No automated facility to handle varying pay rules, multi-company, payroll in foreign
                        currency and payroll for fixed tax non-employees like consultants</li>
                    <li>Non-online, single site timekeeping system </li>
                </ul>
            </div>
            <div style="float: left; width: 330px; min-height: 685px; margin: 10px 0px 0px 0px;
                background: url('Images/PayrollForm_bg.png') no-repeat top center;">
                <div style="color: #ffffff; text-align: center; text-align: center; width: 240px;
                    margin: 113px auto 0;">
                    <%--<h4>
                        Get a demo &amp;
                        <br />
                        Learn more about CEM AX Construct</h4>--%>
                    <div style="color: #000; text-align: center; margin: 5px 0 0 0;">
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block;">
                            <asp:TextBox ID="NameTxt" CssClass="textbox" Text="Name *" runat="server" onfocus="this.value=''"
                                onBlur="name_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                Display="Dynamic" ForeColor="Red" ControlToValidate="NameTxt" InitialValue="Name *"></asp:RequiredFieldValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block;">
                            <asp:TextBox ID="CompanyTxt" CssClass="textbox" Text="Company *" runat="server" onfocus="this.value=''"
                                onBlur="company_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                Display="Dynamic" ForeColor="Red" ControlToValidate="CompanyTxt" InitialValue="Company *"></asp:RequiredFieldValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block;">
                            <asp:TextBox ID="MailTxt" CssClass="textbox" Text="Work mail *" runat="server" onfocus="this.value=''"
                                onBlur="mail_blur(this.value)"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*"
                                Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="MailTxt"></asp:RegularExpressionValidator></div>
                        <div class="leftalign clearboth" style="margin: 0px auto; display: inline-block;">
                            <asp:TextBox ID="PhoneTxt" CssClass="textbox" Text="Work Phone *" runat="server"
                                onfocus="this.value=''" onBlur="phone_blur(this.value)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                                Display="Dynamic" ForeColor="Red" ControlToValidate="PhoneTxt" InitialValue="Work Phone *"></asp:RequiredFieldValidator>
                        </div>
                        <div class="leftalign clearboth" style="display: inline-block; margin: 9px auto 0px;">
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
            <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                The payroll management becomes easier with your CEM&rsquo;s AX Payroll. The integrated
                payroll module is the tailor made for organizations to manage the payroll in-house
                and provides you a complete control and visibility for your payroll process. The
                module facilitates users to run weekly, quarterly, or annual reports directly, and
                in addition, you can manage employees leave, claims, loans and funds. See the list
                below for more functions of the Payroll module.
            </p>
            <p style="padding: 0px 0px 0px 10px;" class="clearfix">
                CEM AX payroll is a trusted partner of payroll professionals&rsquo;. The mission
                of CEM AX payroll is to improve payroll service delivery through smarter process
                and more efficient technology. There is an increasing demand for the organization
                and employees for more sophisticated payroll information and services. Add to that
                the growing legislation challenges and it&rsquo;s surprising that so many organizations
                are concerned about the cost of delivering their services. In such a case, technology
                based payroll can be created to work the way your organization needs following the
                &ldquo;Best Practice&rdquo; standards. Flexible, yet a powerful module, CEM AX Payroll
                not only helps in streamlining the process, but also accomplishes payroll process
                in less time, gains insight detail into Personnel cost, avoids human error and improves
                the accuracy. In short, it improves the organizational productivity by eliminating
                the complexity and time consuming tasks associated with payroll and enable businesses
                to focus on their core activities.</p>
            <%--<div class="tab_content clearfix" id="time">
                <h2 style="clear: both">
                    Time Management</h2>
                <ul class="ul_reasons">
                    <li>Captures the shift details, individual employees shift cycle and attendance with
                        overtime details</li>
                    <li>Can create “n” number of shifts with multiple timings</li>
                    <li>Creates individual or in bulk employee calendar which capture the shift cycle for
                        a date range</li>
                    <li>An enhancement to flex hours, for instance, flexibility to define the Ramadan Period,
                        where on the ending date of Ramadan can be done on a post-dated activity</li>
                    <li>Captures holidays effectively for overtime calculations</li>
                    <li>Allows multi way attendance calculation with options for loss of pay</li>
                </ul>
            </div>
            <div class="tab_content" id="absence">
                <h2>
                    Absence Management</h2>
                <ul class="ul_reasons">
                    <li>Efficient attendance calculation</li>
                    <li>Allows defining any type of absence codes with basing parameters</li>
                    <li>Captures the accrual policy, to define and use it during the absence request and
                        payroll processing</li>
                    <li>Provides option to capture the actual leave dates</li>
                    <li>Allows initiating a leave settlement payroll based on the leave type and its parameter
                        setup</li>
                    <li>Allows defining of custom validations</li>
                </ul>
            </div>
            <div class="tab_content" id="social">
                <h2>
                    Social Security Management</h2>
                <ul class="ul_reasons">
                    <li>Captures details of employees for whom both employer and employee contribute an
                        amount</li>
                    <li>Easy definition of employer contribution and employee contribution, wherein employee
                        contribution can be specified to be directed to the payroll as a deduction part</li>
                </ul>
            </div>
            <div id="claims" class="tab_content clearfix">
                <h2>
                    Claims Management</h2>
                <ul class="ul_reasons">
                    <li>Support reimbursement processes for the employees</li>
                    <li>Allows defining any number of claims</li>
                    <li>Allows making the payment through payroll to the employee or to any third party</li>
                    <li>Uses employee benefit details for claims validation</li>
                </ul>
            </div>
            <div id="insurance" class="tab_content">
                <h2>
                    Insurance Management</h2>
                <ul class="ul_reasons">
                    <li>Facilitates advance payment and deduction in installments</li>
                    <li>Allows multiple classs of lean &amp; advances and employee&rsquo;s eligibility through
                        the employee benefit screen</li>
                    <li>Allows request for the loans and advances with easy installments</li>
                    <li>Flexible about giving exemption from deduction for a specific month and employee
                        based on the need</li>
                    <li>Payment and the repayment are seamlessly integrated with the financial module</li>
                    <li>Allows repayment of the advance payment in bulk at the discrete decision of the
                        employee</li>
                </ul>
            </div>
            <div id="loan" class="tab_content">
                <h2>
                    Loan Management</h2>
                <ul class="ul_reasons">
                    <ul class="ul_reasons">
                        <li>Loan class will allow user to create various loan classs in the organization and
                            Loan Application will be raised by the employee to the management as a request for
                            a loan</li>
                        <li>All requested Loan Applications will be shown in the screen; user can approve or
                            reject a particular loan application. Separate loan payment against an approved
                            loan application is recorded on this screen</li>
                        <li>If an employee repays the loan amount to the company that will be recorded and posted
                            on loan repayment screen and all the list of loan requests are available in the
                            loan request module</li>
                        <li>Loan process from start to end with EMI start and end date is automated here. It
                            is also possible to track the loan installment details, EMI-wise using the date</li>
                    </ul>
                </ul>
            </div>
            <div id="employee" class="tab_content clearfix">
                <h2>
                    Employee Relation Management</h2>
                <ul class="ul_reasons">
                    <li>Employees can request for promotion, location transfer and resignation</li>
                    <li>Workflow is available for promotion, transfer &amp; resignation request approval,
                        employee grievance to the higher authority and to intimate the employee recognition
                        to the HR department</li>
                    <li>Exit interview can be conducted for the resigned candidates and employee feedback
                        can be noted against their resignation</li>
                    <li>Employee notice period can be tracked while resigning</li>
                    <li>Employee transfer days/year can be controlled</li>
                    <li>Employees can select an option whether to serve the notice period or to pay the
                        notice period amount to the company</li>
                    <li>The grievance request can be routed to different departments and action taken against
                        can be noted. Warning letters can be provided to the employees against whom grievance
                        was proved</li>
                    <li>Recognized employees can be awarded with leaves</li>
                    <li>Recognition certification can be provided to the employees</li>
                    <li>Recognition leaves will integrate with employee leave entitlement</li>
                    <li>Functionality provided for employee grievance management and recognizing employees</li>
                </ul>
            </div>
            <div id="payroll" class="tab_content">
                <h2>
                    Payroll Processing</h2>
                <ul class="ul_reasons">
                    <li>Process the payroll in order to provide salary payment to the employees</li>
                    <li>Define the payroll process period &amp; range. It also captures the relevant financial
                        period of the AX finance module to which it needs to be posted</li>
                    <li>Define any number of pay elements, which is categorized for ease of calculation
                        and posting</li>
                    <li>Define &ldquo;n&rdquo; number of payrolls and multiple subdivisions for an organization</li>
                    <li>Allows calculation of element values in a different way for the same payroll based
                        on the class (regular, leave settlement, final settlement) of payroll</li>
                    <li>Allows rounding off the result at the employee level or at each employee and element
                        level, based on the need</li>
                    <li>Allows capturing of ad-hoc element values for specified employees for a specified
                        period</li>
                    <li>System automatically fetches relevant records from loans &amp; advances, claims,
                        fund, absence management and time management during the payroll processing</li>
                    <li>Allows process of regular payroll, leave settlement and final settlement under the
                        same payroll based on the need. The regular payroll can be run in bulk, whereas
                        the leave settlement and the final settlement can be processed for individuals</li>
                    <li>Allows holding of payroll payment for any specific employee based on the need</li>
                    <li>Seamless integration for the payroll posting and the payroll payment posting to
                        the General Ledger from the payroll module</li>
                </ul>
            </div>
            <div id="training" class="tab_content">
                <h2>
                    Training Management</h2>
                <ul class="ul_reasons">
                    <li>Define and track skills assigned to job descriptions</li>
                    <li>Manage job descriptions and corresponding training requirements assigned to each
                        employee</li>
                    <li>Define training requirements for each skill</li>
                    <li>Automatic notification of expiring certifications</li>
                    <li>Track and manage specific training course requirements (descriptions, level…)</li>
                    <li>Monitor employee-training history with current job/skill requirements</li>
                    <li>Review and Termination tracking</li>
                    <li>Employee training &amp; tracking software automates scheduling, record keeping,
                        and correspondence to ensure employees receive the prompt training they need</li>
                </ul>
            </div>
            <div id="enterprise" class="tab_content clearfix">
                <h2>
                    Enterprise Self-service Portal</h2>
                <ul class="ul_reasons">
                    <li>Taxes and Deductions - View deductions for taxes, 401K, insurance and more</li>
                    <li>Vacation, Holiday and Sick Pay - View days taken, quantity accrued, total per year,
                        time left to take and start and end date</li>
                    <li>Emergency Contacts - Add or edit emergency contacts</li>
                    <li>Personal Information - View personal information such as contact information, birth
                        date, marital status and hire date plus employee review information and more. Update
                        functions allow employees to change phone, email, address, city, state and postal
                        code</li>
                    <li>Modification Alerts - Set up alerts to notify HR or Payroll when a record has been
                        modified</li>
                    <li>Dependent and Beneficiary Information - View, edit, add or remove beneficiary and
                        dependent information</li>
                    <li>Training and Certification - View skills and job descriptions, as well as testing,
                        training and special certifications including expiration dates</li>
                </ul>
            </div>
            <div id="role" class="tab_content">
                <h2>
                    Role Specific Dashboard Reports</h2>
                <ul class="ul_reasons">
                    <li>Attract and retain talent. Recruit and preserve talent with powerful tools to streamline
                        the recruiting process, and help maximize employee potential through training and
                        development programs.</li>
                    <li>Increase organizational insight. Maintain your organization, job, and position hierarchies,
                        and have the flexibility to make changes based on business needs. View line organizational
                        charts for functions and reporting relationships, and manage matrix- and project-based
                        assignments</li>
                    <li>Store and access your employee information in one place. Give your human resource
                        team efficient access to the employee and job-related information they need to manage
                        employees and teams across your organization. Easily track the history of employees,
                        positions and organizational units by effective date</li>
                    <li>Personalize Role centers to speed productivity. Provide quick access to common tasks,
                        reporting data, and key performance indicators (KPIs) from the convenience of a
                        home page</li>
                    <li>Provide convenient, online access to Employee Portal. Give employees online access
                        to a host of information, such as training, personal data, and performance. You
                        can also manage&nbsp;recruitment, track applicants, and much more</li>
                </ul>
            </div>--%>
            <div id="enterprise" class="tab_content">
                <h2>
                    Enterprise Self-service Portal</h2>
                <ul class="ul_reasons">
                    <li>Taxes and Deductions - View deductions for taxes, 401K, insurance and more</li>
                    <li>Vacation, Holiday and Sick Pay - View days taken, quantity accrued, total per year,
                        time left to take and start and end date</li>
                    <li>Emergency Contacts - Add or edit emergency contacts</li>
                    <li>Personal Information - View personal information such as contact information, birth
                        date, marital status and hire date plus employee review information and more. Update
                        functions allow employees to change phone, email, address, city, state and postal
                        code</li>
                    <li>Modification Alerts - Set up alerts to notify HR or Payroll when a record has been
                        modified</li>
                    <li>Dependent and Beneficiary Information - View, edit, add or remove beneficiary and
                        dependent information</li>
                    <li>Training and Certification - View skills and job descriptions, as well as testing,
                        training and special certifications including expiration dates</li>
                </ul>
            </div>
            <div id="employee" class="tab_content">
                <h2>
                    Employee Relation Management</h2>
                <ul class="ul_reasons">
                    <li>Employees can request for promotion, location transfer and resignation</li>
                    <li>Workflow is available for promotion, transfer &amp; resignation request approval,
                        employee grievance to the higher authority and to intimate the employee recognition
                        to the HR department</li>
                    <li>Exit interview can be conducted for the resigned candidates and employee feedback
                        can be noted against their resignation</li>
                    <li>Employee notice period can be tracked while resigning</li>
                    <li>Employee transfer days/year can be controlled</li>
                    <li>Employees can select an option whether to serve the notice period or to pay the
                        notice period amount to the company</li>
                    <li>The grievance request can be routed to different departments and action taken against
                        can be noted. Warning letters can be provided to the employees against whom grievance
                        was proved</li>
                    <li>Recognized employees can be awarded with leaves</li>
                    <li>Recognition certification can be provided to the employees</li>
                    <li>Recognition leaves will integrate with employee leave entitlement</li>
                    <li>Functionality provided for employee grievance management and recognizing employees</li>
                </ul>
            </div>
            <div id="payroll" class="tab_content">
                <h2>
                    Payroll Processing</h2>
                <ul class="ul_reasons">
                    <li>Process the payroll in order to provide salary payment to the employees</li>
                    <li>Define the payroll process period &amp; range. It also captures the relevant financial
                        period of the AX finance module to which it needs to be posted</li>
                    <li>Define any number of pay elements, which is categorized for ease of calculation
                        and posting</li>
                    <li>Define &ldquo;n&rdquo; number of payrolls and multiple subdivisions for an organization</li>
                    <li>Allows calculation of element values in a different way for the same payroll based
                        on the class (regular, leave settlement, final settlement) of payroll</li>
                    <li>Allows rounding off the result at the employee level or at each employee and element
                        level, based on the need</li>
                    <li>Allows capturing of ad-hoc element values for specified employees for a specified
                        period</li>
                    <li>System automatically fetches relevant records from loans &amp; advances, claims,
                        fund, absence management and time management during the payroll processing</li>
                    <li>Allows process of regular payroll, leave settlement and final settlement under the
                        same payroll based on the need. The regular payroll can be run in bulk, whereas
                        the leave settlement and the final settlement can be processed for individuals</li>
                    <li>Allows holding of payroll payment for any specific employee based on the need</li>
                    <li>Seamless integration for the payroll posting and the payroll payment posting to
                        the General Ledger from the payroll module</li>
                </ul>
            </div>
            <div id="role" class="tab_content">
                <h2>
                    Role Specific Dashboard Reports</h2>
                <ul class="ul_reasons">
                    <li>Attract and retain talent. Recruit and preserve talent with powerful tools to streamline
                        the recruiting process, and help maximize employee potential through training and
                        development programs.</li>
                    <li>Increase organizational insight. Maintain your organization, job, and position hierarchies,
                        and have the flexibility to make changes based on business needs. View line organizational
                        charts for functions and reporting relationships, and manage matrix- and project-based
                        assignments</li>
                    <li>Store and access your employee information in one place. Give your human resource
                        team efficient access to the employee and job-related information they need to manage
                        employees and teams across your organization. Easily track the history of employees,
                        positions and organizational units by effective date</li>
                    <li>Personalize Role centers to speed productivity. Provide quick access to common tasks,
                        reporting data, and key performance indicators (KPIs) from the convenience of a
                        home page</li>
                    <li>Provide convenient, online access to Employee Portal. Give employees online access
                        to a host of information, such as training, personal data, and performance. You
                        can also manage&nbsp;recruitment, track applicants, and much more</li>
                </ul>
            </div>
            <div id="loan" class="tab_content">
                <h2>
                    Loan Management</h2>
                <ul class="ul_reasons">
                    <ul class="ul_reasons">
                        <li>Loan class will allow user to create various loan classs in the organization and
                            Loan Application will be raised by the employee to the management as a request for
                            a loan</li>
                        <li>All requested Loan Applications will be shown in the screen; user can approve or
                            reject a particular loan application. Separate loan payment against an approved
                            loan application is recorded on this screen</li>
                        <li>If an employee repays the loan amount to the company that will be recorded and posted
                            on loan repayment screen and all the list of loan requests are available in the
                            loan request module</li>
                        <li>Loan process from start to end with EMI start and end date is automated here. It
                            is also possible to track the loan installment details, EMI-wise using the date</li>
                    </ul>
                </ul>
            </div>
            <div id="training" class="tab_content">
                <h2>
                    Training Management</h2>
                <ul class="ul_reasons">
                    <li>Define and track skills assigned to job descriptions</li>
                    <li>Manage job descriptions and corresponding training requirements assigned to each
                        employee</li>
                    <li>Define training requirements for each skill</li>
                    <li>Automatic notification of expiring certifications</li>
                    <li>Track and manage specific training course requirements (descriptions, level…)</li>
                    <li>Monitor employee-training history with current job/skill requirements</li>
                    <li>Review and Termination tracking</li>
                    <li>Employee training &amp; tracking software automates scheduling, record keeping,
                        and correspondence to ensure employees receive the prompt training they need</li>
                </ul>
            </div>
            <div id="time" class="tab_content">
                <h2 style="clear: both">
                    Time Management</h2>
                <ul class="ul_reasons">
                    <li>Captures the shift details, individual employees shift cycle and attendance with
                        overtime details</li>
                    <li>Can create &ldquo;n&rdquo; number of shifts with multiple timings</li>
                    <li>Creates individual or in bulk employee calendar which capture the shift cycle for
                        a date range</li>
                    <li>An enhancement to flex hours, for instance, flexibility to define the Ramadan Period,
                        where on the ending date of Ramadan can be done on a post-dated activity</li>
                    <li>Captures holidays effectively for overtime calculations</li>
                    <li>Allows multi way attendance calculation with options for loss of pay</li>
                </ul>
            </div>
            <div id="absence" class="tab_content">
                <h2>
                    Absence Management</h2>
                <ul class="ul_reasons">
                    <li>Efficient attendance calculation</li>
                    <li>Allows defining any type of absence codes with basing parameters</li>
                    <li>Captures the accrual policy, to define and use it during the absence request and
                        payroll processing</li>
                    <li>Provides option to capture the actual leave dates</li>
                    <li>Allows initiating a leave settlement payroll based on the leave type and its parameter
                        setup</li>
                    <li>Allows defining of custom validations</li>
                </ul>
            </div>
            <div id="social" class="tab_content">
                <h2>
                    Social Security Management</h2>
                <ul class="ul_reasons">
                    <li>Captures details of employees for whom both employer and employee contribute an
                        amount</li>
                    <li>Easy definition of employer contribution and employee contribution, wherein employee
                        contribution can be specified to be directed to the payroll as a deduction part</li>
                </ul>
            </div>
            <div id="claims" class="tab_content">
                <h2>
                    Claims Management</h2>
                <ul class="ul_reasons">
                    <li>Support reimbursement processes for the employees</li>
                    <li>Allows defining any number of claims</li>
                    <li>Allows making the payment through payroll to the employee or to any third party</li>
                    <li>Uses employee benefit details for claims validation</li>
                </ul>
            </div>
            <div id="insurance" class="tab_content">
                <h2>
                    Insurance Management</h2>
                <ul class="ul_reasons">
                    <li>Facilitates advance payment and deduction in installments</li>
                    <li>Allows multiple classs of lean &amp; advances and employee&rsquo;s eligibility through
                        the employee benefit screen</li>
                    <li>Allows request for the loans and advances with easy installments</li>
                    <li>Flexible about giving exemption from deduction for a specific month and employee
                        based on the need</li>
                    <li>Payment and the repayment are seamlessly integrated with the financial module</li>
                    <li>Allows repayment of the advance payment in bulk at the discrete decision of the
                        employee</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
