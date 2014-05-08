<%@ Page Title="" Language="C#" MasterPageFile="~/AXPayroll/Support/MasterPage.master"
    AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="AXPayroll_Support_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    </style>
    <link href="MaskPopup.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/MaskPopup.js" type="text/javascript"></script>
    <link href="../../Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
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
    <script src="Scripts/RestrictEmail.js" type="text/javascript"></script>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:Label ID="sessionlabel" runat="server" Text=""></asp:Label>--%>
    <a href="" runat="server" id="sessionlabel"></a>
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
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
                Contact Support Steps</h1>
            <p>
                For end-users it is of great importance to include your Value Added Reseller (VAR)
                on support related issues. This will ensure that they are aware of your situation
                with our products and of any fixes we provide, which will enable them to provide
                better support to you in the future. Additionally they can help you mediate the
                steps below to speed up the time it takes to resolve any issues.<br />
                In efforts to speed along the support process, please follow the steps below.</p>
            <ol>
                <li>Contact your Microsoft Dynamics AX Value Added Reseller (VAR).</li>
                <li>Check the Product Documentation &amp; Previous issue logs to confirm proper procedures
                    were followed.</li>
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
                        <li>Disable the CEM Product – remove the license file from partner features set from
                            the Microsoft Dynamics AX and use only standard AX windows and reports</li>
                        <li>Run some tests</li>
                    </ol>
                </ol>
            </ol>
            <ol start="4" type="1">
                <li>Reproduce and document the issue, capturing the following information:</li>
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
                <li>Send the captured information along with the following additional information in
                    an email to&nbsp;<a class="blue" href="mailto:payrollsupport@cembs.com">payrollsupport@cembs.com</a></li>
            </ol>
            <ol start="5" type="1">
                <ol start="1" type="1">
                    <ol start="1" type="1">
                        <li>Name of the VAR</li>
                        <li>Name of you, the end user</li>
                        <li>Name(s) of the CEM Business Solutions’ products and/or customization(s)</li>
                        <li>Build number(s) of the CEM’s products</li>
                        <li>Version and service pack of Microsoft Dynamics AX from&nbsp;<em>Help &gt;&gt; About
                            Microsoft Dynamics AX…</em></li>
                    </ol>
                </ol>
            </ol>
            &gt;&gt; After these steps have been completed please email&nbsp;<a class="blue"
                style="color: #0b76ba;" href="mailto:payrollsupport@cembs.com">payrollsupport@cembs.com</a>
            or call us at <span style="color: #0b76ba;">+971 4 3911683</span> &amp; <span style="color: #0b76ba;">
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
                        <ul class="ul_reasons">
                            <li>Critical business impact: </li>
                            <li>Customer has complete loss of a core (mission critical) business process and work
                                cannot reasonably continue</li>
                            <li>Needs immediate attention</li>
                        </ul>
                    </td>
                    <td width="180" valign="top">
                        <ul>
                            <li>CEM Resources at customer site as soon as possible.</li>
                            <li>Rapid Escalation within CEM to support team </li>
                            <li>Notification of Senior Executives at CEM</li>
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
                        <ul>
                            <li>Moderate business&nbsp; impact: </li>
                            <li>Customer’s business has moderate loss or degradation of services but work can reasonably
                                continue in an impaired manner.</li>
                            <li>Needs attention within 4 hours</li>
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
                            <li>Minimum business impact: </li>
                            <li>Customer’s business is substantially functioning with minor or no impediments of
                                services.</li>
                            <li>Needs attention within 8 hours</li>
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
                We assure our customers that as Microsoft adds new features, our solution will be
                upgraded and our customers can install the latest solution and enjoy the new features.
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
</asp:Content>
