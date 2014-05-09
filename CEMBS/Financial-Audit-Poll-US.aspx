<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPage.master" AutoEventWireup="true"
    CodeFile="Financial-Audit-Poll-US.aspx.cs" Inherits="Financial_Audit_Poll_US" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Financial Audit Poll | CEM Business Solutions</title>
    <meta name="description" content=" CEM AX payroll is designed to meet all the payroll related requirements of your organization and allows you to manage your payroll process across multiple positions in multiple entities across the globe. " />
    <meta name="keywords" content="payroll, ax payroll, microsoft dynamics ax payroll, microsoft payroll, erp payroll, payroll software, payroll services, payroll online, payroll management, payroll accounting, payroll solutions, payroll systems" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="JMetro/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="JMetro/js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="JMetro/js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="CustomClearBox/clearbox.js" type="text/javascript"></script>
    <style type="text/css">
        .button
        {
            background-color: #f0f5fe;
            border: 1px solid #7dc0eb;
            margin: 10px 0;
            padding: 12px 60px;
            font-size: 30px;
            cursor: pointer;
            font-family:Segoe UI;
        }
        p
        {
            margin: 0 !important;
            line-height: 1.3em !important;
        }
        .MyTable, .scoringcard
        {
            border-collapse: collapse;
            width: 100%;
            margin: 0 0 10px 0;
        }
        .MyTable td, #customers th
        {
            border: 1px solid #7dc0eb;
            font-size: 1.0em;
            padding: 7px 5px 7px 7px;
            vertical-align: top;
        }
        .MyTable th
        {
            background-color: #4E90FF;
            color: #FFFFFF;
            font-size: 1.4em;
            padding-bottom: 4px;
            padding-top: 5px;
            text-align: left;
        }
        .MyTable tr.alt td
        {
            background-color: #f0f5fe;
            color: #434343;
            vertical-align: top;
        }
        
        input[type='radio']
        {
            margin: 5px;
            position: relative;
            top: 2px;
        }
        .MyTable td.rtd
        {
            width: 370px;
        }
        .textbox
        {
            width: 400px;
            border: 1px solid #7dc0eb;
            background: #fff;
            color: #505050;
            margin: 3px 0 3px 10px;
            padding: 5px 10px;
            line-height: 18px;
            text-align: left;
        }
        .scoringcard
        {
            border-collapse: collapse;
            width: 100%;
            margin: 10px 0;
        }
        .scoringcard td, #customers th
        {
            border: 1px solid #4E90FF;
            font-size: 13px;
            padding: 7px 5px 7px 7px;
            vertical-align: top;
        }
        .scoringcard th
        {
            border: 1px solid #4E90FF;
            background-color: #4E90FF;
            color: #000;
            font-size: 13px;
            padding-bottom: 4px;
            padding: 7px 5px 7px 7px;
            text-align: left;
        }
        .scoringcard tr.alt td
        {
            background-color: #4E90FF;
            color: #434343;
            vertical-align: top;
        }
        #dialog .ui-dialog-titlebar-close
        {
            display: none !important;
        }
        #dialog .ui-dialog-buttonpane
        {
            display: none !important;
        }
        .CB_TextNav
        {
            display:none !important;
        }
        #scorecardlink{color: #000000;
    font-family: segoe ui;
    font-size: 32px;
    text-decoration: none !important;}
        /*table
        {
            background: none repeat scroll 0 0 #EAEBEC;
            border: 1px solid #CCCCCC;
            border-radius: 3px;
            box-shadow: 0 1px 2px #D1D1D1;
            color: #666666;
            font-family: Arial,Helvetica,sans-serif;
            font-size: 12px;
            margin: 20px;
            text-shadow: 1px 1px 0 #FFFFFF;
        }
        table th
        {
            background: -moz-linear-gradient(center top , #EDEDED, #EBEBEB) repeat scroll 0 0 rgba(0, 0, 0, 0);
            border-bottom: 1px solid #E0E0E0;
            border-top: 1px solid #FAFAFA;
            padding: 21px 25px 22px;
        }
        table th:first-child
        {
            padding-left: 20px;
            text-align: left;
        }
        table tr:first-child th:first-child
        {
            border-top-left-radius: 3px;
        }
        table tr:first-child th:last-child
        {
            border-top-right-radius: 3px;
        }
        table tr
        {
            padding-left: 20px;
            text-align: center;
        }
        table td:first-child
        {
            border-left: 0 none;
            padding-left: 20px;
            text-align: left;
        }
        table td
        {
            background: -moz-linear-gradient(center top , #FBFBFB, #FAFAFA) repeat scroll 0 0 rgba(0, 0, 0, 0);
            border-bottom: 1px solid #E0E0E0;
            border-left: 1px solid #E0E0E0;
            border-top: 1px solid #FFFFFF;
            padding: 18px;
        }
        table tr.even td
        {
            background: -moz-linear-gradient(center top , #F8F8F8, #F6F6F6) repeat scroll 0 0 rgba(0, 0, 0, 0);
        }
        table tr:last-child td
        {
            border-bottom: 0 none;
        }
        table tr:last-child td:first-child
        {
            border-bottom-left-radius: 3px;
        }
        table tr:last-child td:last-child
        {
            border-bottom-right-radius: 3px;
        }
        table tr:hover td
        {
            background: -moz-linear-gradient(center top , #F2F2F2, #F0F0F0) repeat scroll 0 0 rgba(0, 0, 0, 0);
        }*/
    </style>
    <link href="JMetro/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        function GetRadioValues() {
            var form = document.getElementById("form1");
            inputs = form.getElementsByTagName("input");
            arr = [];

            for (var i = 0, max = inputs.length; i < max; i += 1) {
                // Take only those inputs which are checkbox
                if (inputs[i].type === "radio" && inputs[i].checked) {
                    arr.push(inputs[i].value);
                }
            }
            return arr;
        }
        $(document).ready(function () {
            var myarray = [];
            $('#scorecardlink').css('display', 'none');
            var count = 0;
            $(':radio').click(function (e) {
                myarray = GetRadioValues();
                $("input[type=radio]:checked").each(function () {
                    /*----counts the no of radio button checked--*/
                    count = $("input[type=radio]:checked").length;
                    /*if (count >= 13) {
                    $('#landing_ContentPlaceholder_Button2').css('display', 'none')
                    }
                    else {
                    $('#landing_ContentPlaceholder_Button2').css('display', 'block')
                    //alert('page is not ok');
                    return false;
                    }*/
                    if (typeof (Page_ClientValidate) == 'function') {
                        Page_ClientValidate();
                    }

                    if (count >= 13) {
                        if (Page_IsValid) {
                            //return false;
                            $('#landing_ContentPlaceholder_Button2').css('display', 'none');
                            $('#scorecardlink').css('display', 'inline-block');
                            //$('#scorecardlink').attr('href', 'Financial-ScoreCard.aspx?Q1=' + myarray[0] + '&Q2=' + myarray[1] + '&Q3=' + myarray[2] + '&Q4=' + myarray[3] + '&Q5=' + myarray[4] + '&Q6=' + myarray[5] + '&Q7=' + myarray[6] + '&Q8=' + myarray[7] + '&Q9=' + myarray[8] + '&Q10=' + myarray[9] + '&Q11=' + myarray[10] + '&Q12=' + myarray[11] + '&Q13=' + myarray[12] + '&Q14=' + myarray[13]);
                            $('#scorecardlink').attr('href', 'Financial-ScoreCard.aspx?Name=' + $('#landing_ContentPlaceholder_NameTextBox').val() + '&Company=' + $('#landing_ContentPlaceholder_CompanyTextBox').val() + '&Mail=' + $('#landing_ContentPlaceholder_MailTextBox').val() + '&Answers=' + myarray[0] + ',' + myarray[1] + ',' + myarray[2] + ',' + myarray[3] + ',' + myarray[4] + ',' + myarray[5] + ',' + myarray[6] + ',' + myarray[7] + ',' + myarray[8] + ',' + myarray[9] + ',' + myarray[10] + ',' + myarray[11] + ',' + myarray[12] + ',' + myarray[13]);
                        }
                        else {
                            //alert('Please fill all fields');
                            $('#landing_ContentPlaceholder_Button2').css('display', 'inline-block');
                            $('#scorecardlink').css('display', 'none');
                            return false;
                        }
                    }
                    else {
                        $('#landing_ContentPlaceholder_Button2').css('display', 'inline-block');
                        $('#scorecardlink').css('display', 'none');
                        return false;
                    }
                });
                //if (count == 14) {
                //}
            });
            $('.textbox').change(function () {
                myarray = GetRadioValues();
                if (typeof (Page_ClientValidate) == 'function') {
                    Page_ClientValidate();
                }

                if (Page_IsValid) {
                    $('#landing_ContentPlaceholder_Button2').css('display', 'none');
                    $('#scorecardlink').css('display', 'inline-block');
                    $('#scorecardlink').attr('href', 'Financial-ScoreCard.aspx?Name=' + $('#landing_ContentPlaceholder_NameTextBox').val() + '&Company=' + $('#landing_ContentPlaceholder_CompanyTextBox').val() + '&Mail=' + $('#landing_ContentPlaceholder_MailTextBox').val() + '&Answers=' + myarray[0] + ',' + myarray[1] + ',' + myarray[2] + ',' + myarray[3] + ',' + myarray[4] + ',' + myarray[5] + ',' + myarray[6] + ',' + myarray[7] + ',' + myarray[8] + ',' + myarray[9] + ',' + myarray[10] + ',' + myarray[11] + ',' + myarray[12] + ',' + myarray[13]);
                    //return false;
                }
                else {
                    //alert('Please fill all fields');
                    $('#landing_ContentPlaceholder_Button2').css('display', 'inline-block');
                    $('#scorecardlink').css('display', 'none');
                    return false;
                }
            });
        });
        function redirectwindow() {
            setTimeout("location.href='http://www.cembs.com/'", 20000);
        }
        function myalert(message) {
            alert(message);
        }
        function ValidatePage(message) {

            if (typeof (Page_ClientValidate) == 'function') {
                Page_ClientValidate();
            }

            if (Page_IsValid) {
                // do something
                $('#dialog span').html(GetScore());
                $('#dialog').dialog('open');
            }
            else {
                // do something else
                $('#dialog').html("Please answer all the questions");
                $('#dialog').dialog('open');
                return false;
            }
        }
        function alertwindow(message) {
            //debugger
            //alert(message);
            window.location.href = "http://www.cembs.com/";
        }
        function AlertWithoutRefresh(message) {
            alert(message);
        }
        function getdate() {
            var d = new Date();
            var n = d.getHours();
            if (n < 10) {
                return "Good morning";
            }
            else if (n < 20) {
                return "Good day";
            }
            else {
                return "Good evening";
            }
        }
        $(function () {
            // Dialog			
            $('#dialog').dialog({
                autoOpen: false,
                width: 480, modal: true,
                buttons: {
                    "Ok": function () {
                        $(this).dialog("close");
                        setTimeout("location.href='http://www.cembs.com/'", 20000);
                        //window.location.href = "http://www.cembs.com/";
                    }
                }
            });
            $('#dialog2').dialog({
                autoOpen: false,
                width: 250, modal: true,
                buttons: {
                    "Ok": function () {
                        $(this).dialog("close");
                    }
                }
            });
            $('#dialog3').dialog({
                autoOpen: false,
                width: 750, modal: true,
                buttons: {
                    "Ok": function () {
                        $(this).dialog("close");
                    }
                }
            });
            // Dialog Link
            $('#dialog_link').click(function () {
                $('#dialog3').dialog('open');
                return false;
            }); 

        });

        function CountRadioButtons() {
            var count = 0;
            var radio_groups = {}
            $(document).ready(function () {
                $(":radio").each(function () {
                    radio_groups[this.name] = true;
                })
                for (group in radio_groups) {
                    count = $("input[@name=" + group + "]:checked").length;
                }
            });
            return count;
        }

        function GetScore() {
            var total = 0;
            var message;
            var hours = getdate();
            var count = 0;
            var radio_groups = {}
            $(document).ready(function () {
                var username = $('#landing_ContentPlaceholder_NameTextBox').val();
                $("input[type=radio]:checked").each(function () {
                    total += parseFloat($(this).val());
                });
                if (total >= 14 && total <= 20) {
                    message = hours + "! <br />Your score is " + total + ". <br />Therefore, Your current ERP system is probably adequate.";
                }
                else if (total >= 21 && total <= 25) {
                    message = hours + "! <br />Your score is " + total + ". <br />Therefore, You might want to begin thinking about a new ERP system.";
                }
                else if (total >= 26 && total <= 34) {
                    message = hours + "! <br />Your score is " + total + ". <br />Therefore, You would probably benefit from a new ERP system.";
                }
                else {
                    message = "Please answer all the questions";
                    return false;
                }
            });
            return message;
        }
        function AlertScore() {
            //window.location.href = "http://www.cembs.com/";
            $(document).ready(function () {

                var total = 0;
                var message;
                var hours = getdate();
                var username = $('#landing_ContentPlaceholder_NameTextBox').val();
                $("input[type=radio]:checked").each(function () {
                    total += parseFloat($(this).val());
                });
                if (total >= 14 && total <= 20) {
                    message = hours + "! \nYour score is " + total + ". \nTherefore, Your current ERP system is probably adequate.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system";
                }
                else if (total >= 21 && total <= 25) {
                    message = hours + "! \nYour score is " + total + ". \nTherefore, You might want to begin thinking about a new ERP system.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system";
                }
                else if (total >= 26 && total <= 34) {
                    message = hours + "! \nYour score is " + total + ". \nTherefore, You would probably benefit from a new ERP system.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system";
                }
                else {
                    message = "Please answer all the questions";
                    return false;
                }

                $('#landing_ContentPlaceholder_Button2').css('display', 'none');
                alert(message);
            });
            window.location.href = "http://www.cembs.com/";
        }

        $(document).ready(function () {
            $('#landing_ContentPlaceholder_Button2').click(function () {
                if (typeof (Page_ClientValidate) == 'function') {
                    Page_ClientValidate();
                }

                if (Page_IsValid) {
                    // do something
                    //$('#dialog .score').html(GetScore());
                    $('#landing_ContentPlaceholder_Button2').css('display', 'none');
                    //$('#dialog').dialog('open');
                    //$('.ui-dialog-titlebar-close').css('display', 'none');
                    //$('.ui-dialog-buttonpane').css('display', 'none');
                    //return false;
                }
                else {
                    // do something else
                    $('#dialog2 .score').html("Please answer all the questions");
                    $('#dialog2').dialog('open');
                    return false;
                }
            });
        });
    </script>
    <script type="text/javascript">        $(document).ready(function () { $('#logolink').attr("href", "http://us.cembs.com/"); $('#f_home').attr("href", "http://us.cembs.com"); $('#f_contact').attr("href", "http://us.cembs.com/Contact"); $('#sitemapfooter_div').css('background-color', '#27417C'); });</script>
    <!-- google analytics -->
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <!-- end google analytics -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="landing_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container" style="float: left; padding: 0px 15px 0px 20px; width: 945px;">
            <h1 style="color: #0B76BA;">
                Financial Self-Audit of ERP System</h1>
            <p>
                When is it time to consider upgrading your ERP software? Take our 5 minute test
                and find out. You will automatically be entered into our monthly iPad Mini sweepstakes
                drawing.</p>
            <table>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="NameTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Organization
                    </td>
                    <td>
                        <asp:TextBox ID="CompanyTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="CompanyTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email address
                    </td>
                    <td>
                        <asp:TextBox ID="MailTextBox" CssClass="textbox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            Display="Dynamic" ForeColor="Red" ControlToValidate="MailTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ControlToValidate="MailTextBox" SetFocusOnError="true"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <p>
                &nbsp;</p>
            <table width="750" style="border: 1px solid #505050" id="PollTable" class="MyTable"
                cellspacing="0" cellpadding="5">
                <tbody>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
                        </td>
                        <td class="mtd">
                            How long does it take to close the monthly financial report?
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="5 days" Value="1"></asp:ListItem>
                                <asp:ListItem Text="10 days" Value="2"></asp:ListItem>
                                <asp:ListItem Text="15 days" Value="3"></asp:ListItem>
                                <asp:ListItem Text="20 days" Value="4"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label2" runat="server" Text="2"></asp:Label>
                        </td>
                        <td class="mtd">
                            Do you always have an accurate inventory report available in real time?
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList2"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label3" runat="server" Text="3"></asp:Label>
                        </td>
                        <td class="mtd">
                            Do you have to enter sales information and purchase information in different systems?
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList3"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label4" runat="server" Text="4"></asp:Label>
                        </td>
                        <td class="mtd">
                            Does your accounting staff use one system for receivables and payables, while your
                            sales staff uses another for entering sales orders?
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList4"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label5" runat="server" Text="5"></asp:Label>
                        </td>
                        <td class="mtd">
                            Does your warehouse staff use a different system to track shipping and receiving
                            information?
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList5"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label6" runat="server" Text="6"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Can you track metrics like –</p>
                            <ol style="margin: 0;">
                                <li>Average Sales margin</li>
                                <li>Sales – to date</li>
                                <li>Orders to Date </li>
                            </ol>
                            <p>
                                by the click of a button?</p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList6"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label7" runat="server" Text="7"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do your project P &amp; L reports take longer than 2 days to compile?</p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList7"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label8" runat="server" Text="8"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do you know actual project costs in real time?
                            </p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="RadioButtonList8"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label9" runat="server" Text="9"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do you rely on multiple Excel spreadsheets to get the actual vs. budgeted reports
                                for each project?</p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList9"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label10" runat="server" Text="10"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do you have to create manual customer invoices for billable work and expenses?
                            </p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonList10"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label11" runat="server" Text="11"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do you have to coordinate with multiple teams to compute project profitability?
                            </p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="1"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList11"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label12" runat="server" Text="12"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Does your accounting software do the revenue recognition automatically at the end
                                of the month?</p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RadioButtonList12"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="ltd">
                            <asp:Label ID="Label13" runat="server" Text="13"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                Do you have control of cash flow for every project?
                            </p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                <asp:ListItem Text="No" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="RadioButtonList13"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#ffffff" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="alt">
                        <td class="ltd">
                            <asp:Label ID="Label14" runat="server" Text="14"></asp:Label>
                        </td>
                        <td class="mtd">
                            <p>
                                How do you manage your resource/team allocation and their time sheets?</p>
                        </td>
                        <td class="rtd">
                            <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Module in ERP" Value="1"></asp:ListItem>
                                <asp:ListItem Text="In-house system" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Third party system" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Excel sheets" Value="4"></asp:ListItem>
                            </asp:RadioButtonList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="RadioButtonList14"
                                Display="Dynamic" ErrorMessage="*" ForeColor="#F0F5FE" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="margin: 0 auto; width: 230px;">
                <asp:Button ID="Button2" runat="server" CssClass="button" Text="Submit" />
                <a href="Financial-ScoreCard.aspx" rel="clearbox[width=480,,height=300]" class="button" id="scorecardlink">
                    Submit</a>
            </div>
            <div style="font-size: 16px; position: relative; padding: 17px 10px 17px 0px; bottom: 48px;
                float: left;">
                <a href="" id="dialog_link">Click to view Official Sweepstakes Rules</a></div>
        </div>
        <!-- ui-dialog -->
        <!--<div id="dialog3" title="Redirecting">
            <span class="score">Thank you. Please be patient for a while.......</span>
        </div>-->
        <div id="dialog2" title="Mandatory">
            <span class="score"></span>
        </div>
        <div id="dialog" title="Scoring Card">
            <span class="score"></span>
            <br />
            <br />
            <p style="border-bottom: 1px dotted #dddddd; padding-bottom: 4px;">
                <strong>Result Criteria</strong>
            </p>
            <table class="scoringcard">
                <tr>
                    <th>
                        Score
                    </th>
                    <th>
                        Result
                    </th>
                </tr>
                <tr>
                    <td>
                        14-20
                    </td>
                    <td>
                        Your current ERP system is probably adequate
                    </td>
                </tr>
                <tr>
                    <td>
                        21-25
                    </td>
                    <td>
                        You might want to begin thinking about a new ERP system
                    </td>
                </tr>
                <tr>
                    <td>
                        26-34
                    </td>
                    <td>
                        You would probably benefit from a new ERP system
                    </td>
                </tr>
            </table>
        </div>
        <div id="dialog3" title="Sweepstakes">
            <h1>
                Official Sweepstakes Rules</h1>
            <ul class="ul_reasons" style="text-align: justify;">
                <li>No purchase necessary</li>
                <li>If, for some reason, you cannot take the online &ldquo;Financial Self-Audit of ERP
                    System,&rdquo; and you wish to enter the sweepstakes, Send your request to : CEM
                    Business Solutions, 50 Tice Blvd, Suite 340, Woodcliff Lake, NJ 07677, Attn: Mike
                    Vana. You will be mailed hardcopy of the &ldquo;Financial Self-Audit of ERP System&rdquo;
                    test. Simply complete the test and forward your hardcopy to Mike Vana at CEM Business
                    Solutions. You will be notified of your participation in the sweepstakes.</li>
                <li>You must be 18 years of age or older to participate in the iPad Mini Sweepstakes,
                    and reside in the United States.</li>
                <li>iPad Mini Sweepstakes begins November 1, 2013 and continues through January 31,
                    2014.</li>
                <li>The sponsor of the iPad Mini Sweepstakes is: CEM Business Solutions, 50 Tice Blvd.,
                    Suite 340, Woodcliff Lake, NJ 07677.</li>
                <li>Winners will be chosen at random from among all entrants, on the last business day
                    of each month during the sweepstakes term. Winners will receive a 16GB iPad Wi Fi
                    Mini. Retail price: $299. Your odds of winning will depend on sweepstakes participation.</li>
                <li>Winners will be notified by email (unless they submit hardcopy – in which case they
                    will be notified by postal mail). Prizes will be mailed 2nd day delivery.</li>
                <li>Winners will be selected at random, from a special database of contest entrants,
                    on the last day of each month during the term.</li>
                <li>Winners must approve the use of their name, company name and city to appear on the
                    special CEM Business Solutions sweepstakes landing page.</li>
            </ul>
        </div>
    </div>
</asp:Content>
