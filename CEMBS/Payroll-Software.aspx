<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true"
    CodeFile="Payroll-Software.aspx.cs" Inherits="Payroll_Software" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>AX Payroll | Microsoft Payroll software India | Payroll Services</title>
    <meta name="description" content=" CEM AX payroll is designed to meet all the payroll related requirements of your organization and allows you to manage your payroll process across multiple positions in multiple entities across the globe. " />
    <meta name="keywords" content="Ax Payroll, Ax Payroll Upgrading, Microsoft Dynamics AX Payroll, Microsoft Payroll, Microsoft Payroll Software, Payroll Service India, Payroll Software Microsoft, Payrollsoftwareindia, Ax payroll, Ax payroll Upgrading, Microsoft dynamics AX payroll, Microsoft payroll, ax payroll, microsoft payroll software, payroll software microsoft, microsoft payroll software, payroll, payroll process in india, payroll services, payroll services india, payroll software india,payroll software, payroll management software, online payroll software, payroll software programs, payroll tax software, web based payroll software, payroll business solutions, hr payroll solution, microsoft dynamics hr, software hr, hr management software, time attendance system, time and attendance software, time management system" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/MS_Dyn_ERP.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_products').addClass('bluebg');
            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/axpayroll.jpg" style="width: 980px; height: 192px;" alt="axpayroll" />
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li class="active"><a href="#overview">CEM AX Payroll </a></li>
                <li><a href="#union" class="firstlevel">Union Payroll</a></li>
                <li><a href="#time" class="firstlevel">Time Management</a></li>
                <li><a href="#absence" class="firstlevel">Absence Management</a></li>
                <li><a href="#social" class="firstlevel">Social Security Management</a></li>
                <li><a href="#claims" class="firstlevel">Claims Management</a></li>
                <li><a href="#insurance" class="firstlevel">Insurance Management </a></li>
                <li><a href="#loan" class="firstlevel">Loan Management</a></li>
                <li><a href="#employee" class="firstlevel">Employee Relation Management</a></li>
                <li><a href="#payroll" class="firstlevel">Payroll Processing</a></li>
                <li><a href="#training" class="firstlevel">Training Management</a></li>
                <li><a href="#enterprise" class="firstlevel">Enterprise Self-service Portal</a></li>
                <li><a href="#role" class="firstlevel">Role Specific Dashboard Reports</a></li>
            </ul>
            <div class="tab_container">
                <div style="padding: 0 10px 0 10px; text-align: justify;">
                    <div class="tab_content" id="overview">
                        <h1>
                            CEM AX Payroll</h1>
                        <p>
                            CEM AX Payroll is a strategic tool for monitoring performance and deploying personnel
                            resources across your organization. CEM AX Payroll is reliable and seamlessly integrates
                            data across multiple positions, entities and geographic locations.
                        </p>
                        <p>
                            With flexible user-defined rules, businesses can adapt to changing workforce needs
                            and demanding requirements. CEM AX Payroll simplifies payroll processing and reconciliations.
                            It can help businesses streamline their processes, reduce costs, gain insight into
                            personnel costs and improve payroll accuracy.
                        </p>
                        <p>
                            Take the administrative complexities out of your day and your department. Focus
                            on tomorrow with CEM AX payroll.</p>
                    </div>
                    <div class="tab_content" id="union">
                        <h2 style="clear: both;">
                            Union Payroll</h2>
                        <ul class="ul_reasons">
                            <li>Integrates with projects and accounts payable</li>
                            <li>Union file summary and detail</li>
                            <li>Tracks union deductions for multiple labor classifications &amp; multiple unions</li>
                            <li>Powerful fringe benefit calculations</li>
                            <li>Integrates with time and attendance and time card</li>
                            <li>Tracks unlimited earnings and deduction codes</li>
                            <li>Configurable certified payroll reports</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="time">
                        <h2 style="clear: both;">
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
                    <div class="tab_content" id="claims">
                        <h2>
                            Claims Management</h2>
                        <ul class="ul_reasons">
                            <li>Support reimbursement processes for the employees</li>
                            <li>Allows defining any number of claims</li>
                            <li>Allows making the payment through payroll to the employee or to any third party</li>
                            <li>Uses employee benefit details for claims validation</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="insurance">
                        <h2>
                            Insurance Management</h2>
                        <ul class="ul_reasons">
                            <li>Facilitates advance payment and deduction in installments</li>
                            <li>Allows multiple class of lean & advances and employee’s eligibility through the
                                employee benefit screen</li>
                            <li>Allows request for the loans and advances with easy installments</li>
                            <li>Flexible about giving exemption from deduction for a specific month and employee
                                based on the need</li>
                            <li>Payment and the repayment are seamlessly integrated with the financial module</li>
                            <li>Allows repayment of the advance payment in bulk at the discrete decision of the
                                employee</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="loan">
                        <h2>
                            Loan Management</h2>
                        <ul class="ul_reasons">
                            <li>Loan class will allow user to create various loan class in the organization and
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
                    </div>
                    <div class="tab_content" id="employee">
                        <h2>
                            Employee Relations Management</h2>
                        <ul class="ul_reasons">
                            <li>Employees can request for promotion, location transfer and resignation</li>
                            <li>Workflow is available for promotion, transfer & resignation request approval, employee
                                grievance to the higher authority and to intimate the employee recognition to the
                                HR department</li>
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
                    <div class="tab_content" id="payroll">
                        <h2>
                            Payroll Processing</h2>
                        <ul class="ul_reasons">
                            <li>Process the payroll in order to provide salary payment to the employees</li>
                            <li>Define the payroll process period & range. It also captures the relevant financial
                                period of the AX finance module to which it needs to be posted</li>
                            <li>Define any number of pay elements, which is categorized for ease of calculation
                                and posting</li>
                            <li>Define “n” number of payrolls and multiple subdivisions for an organization</li>
                            <li>Allows calculation of element values in a different way for the same payroll based
                                on the class (regular, leave settlement, final settlement) of payroll</li>
                            <li>Allows rounding off the result at the employee level or at each employee and element
                                level, based on the need</li>
                            <li>Allows capturing of ad-hoc element values for specified employees for a specified
                                period</li>
                            <li>System automatically fetches relevant records from loans & advances, claims, fund,
                                absence management and time management during the payroll processing</li>
                            <li>Allows process of regular payroll, leave settlement and final settlement under the
                                same payroll based on the need. The regular payroll can be run in bulk, whereas
                                the leave settlement and the final settlement can be processed for individuals</li>
                            <li>Allows holding of payroll payment for any specific employee based on the need</li>
                            <li>Seamless integration for the payroll posting and the payroll payment posting to
                                the General Ledger from the payroll module</li>
                        </ul>
                    </div>
                    <div class="tab_content" id="training">
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
                    <div class="tab_content" id="enterprise">
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
                    <div class="tab_content" id="role">
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
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
