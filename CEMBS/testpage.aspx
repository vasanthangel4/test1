<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpage.aspx.cs" Inherits="testpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="Styles/OthersPages/ulreasons.css" rel="stylesheet" type="text/css" />
    <link href="JMetro/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="JMetro/js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="JMetro/js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <link href="Styles/cem_styles.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Layout.css" rel="stylesheet" type="text/css" />
    <link href="Styles/MetroStyle.css" rel="stylesheet" type="text/css" />
    <link href="Styles/bg_change.css" rel="stylesheet" type="text/css" />
    <link href="Styles/MetroJs.css" rel="stylesheet" type="text/css" />
    <link href="Styles/print.css" rel="stylesheet" type="text/css" media="print" />
    <link href="Styles/mobile.css" rel="stylesheet" type="text/css" />
    <link href="JMetro/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        .button
        {
            background-color: #f0f5fe;
            border: 1px solid #7dc0eb;
            margin: 10px 0;
            padding: 12px 60px;
            font-size: 30px;
            cursor: pointer;
        }
        p
        {
            margin: 0 !important;
            line-height: 1.3em !important;
        }
        .MyTable
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
    </style>
    <script type="text/javascript">
        $(function () {
            // Dialog			
            $('#dialog').dialog({
                autoOpen: false,
                width: 600, modal: true,
                buttons: {
                    "Ok": function () {
                        $(this).dialog("close");
                    },
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                }
            });

            // Dialog Link
            $('#Button1').click(function () {
                $('#dialog').dialog('open');
                return false;
            });



        });
		</script>
    <script type="text/javascript">
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
                    message = hours + "! \nYour score is " + total + ". \nTherefore, Your current ERP system is probably adequate.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system" + document.write("<table><tr><td>dddd</td></tr></table>");
                }
                else if (total >= 21 && total <= 25) {
                    message = hours + "! \nYour score is " + total + ". \nTherefore, You might want to begin thinking about a new ERP system.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system"; +document.write("<table><tr><td>dddd</td></tr></table>");
                }
                else if (total >= 26 && total <= 34) {
                    message = hours + "! \nYour score is " + total + ". \nTherefore, You would probably benefit from a new ERP system.\n\nScoring Card\n14-20 -> Your current ERP system is probably adequate\n21-25 -> You might want to begin thinking about a new ERP system\n21-25 -> You would probably benefit from a new ERP system";
                }
                else {
                    message = "Please answer all the questions";
                    return false;
                }

                $('#landing_ContentPlaceholder_Button2').css('display', 'none');
                //alert(message);
            });
            window.location.href = "http://www.cembs.com/";
        }
        $(document).ready(function () {


            var count = 0;
            var radio_groups = {}
            $(":radio").each(function () {
                radio_groups[this.name] = true;
            })
            $('#landing_ContentPlaceholder_Button2').click(function () {
                for (group in radio_groups) {
                    count = $("input[@name=" + group + "]:checked").length;
                }
                if (count == 14) {
                    //$('#landing_ContentPlaceholder_Button2').attr('disabled', 'disabled');
                    AlertScore();
                    return true;
                }
                else if (count == 0) {
                    //alert('Please answer all the questions');
                    return false;
                }
                else {
                    //alert('Please answer all the questions');
                    return false;
                }
                //if (!$("input[@name='ctl00$landing_ContentPlaceholder$RadioButtonList1']:checked").val()) {
                //chkd = 0;
                //score = parseInt(score) + 0;
                //alert('Please answer all the questions');
                //return false;
                //}
            });
        });
    </script>
	<link href="JMetro/css/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>	
    	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">

    function ValidatePage(message) {

        if (typeof (Page_ClientValidate) == 'function') {
            Page_ClientValidate();
        }

        if (Page_IsValid) {
            // do something
            return confirm(message)
        }
        else {
            // do something else
            alert('Please fill up mandatory fields');
        }
    }
    $(function () {
        // Dialog			
        $('#dialog').dialog({
            autoOpen: false,
            width: 600, modal: true,
            buttons: {
                "Ok": function () {
                    $(this).dialog("close");
                },
                "Cancel": function () {
                    $(this).dialog("close");
                }
            }
        });

        // Dialog Link
        $('#dialog_link').click(function () {
            $('#dialog').dialog('open');
            return false;
        });



    });
		</script>
	</head>
	<body>
    <form runat="server">
    <div id="wrapper">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="ValidatePage('ok?')" />
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="*" ControlToValidate="RadioButtonList1" Display="Dynamic" 
                                ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="margin: 0 auto; width: 230px;">
        </div>
    </div>
    
    <!-- ui-dialog -->
    <div id="dialog" title="Dialog Title">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <p><a href="#" id="dialog_link">Open Dialog</a></p>
    </div>
    </div>
    </form>
	</body>
</html>


