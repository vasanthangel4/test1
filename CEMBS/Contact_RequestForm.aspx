<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_RequestForm.aspx.cs"
    Inherits="Contact_RequestForm" Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <style type="text/css">
        td{text-align: left;}
        .ltd{
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
        td
        {
            padding: 3px 0 3px 0;
        }
    </style>
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
    </style>
    <!-- using service for checking mail ids -->
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
            $('#submit').attr("disabled", "disabled");


            if ($('#resultLabel').val() == "Mail sending was not successful") {
                $('#maildiv').show('slow');
            }
            else {
                $('#maildiv').hide('slow');
            }

            //create array getnames
            var getmailids = [];
            var getlastnames = [];
            var splittedfirstnames = [];

            //create variable ddl from dropdownlist
            var ddlmailids = document.getElementById('domainlist');
            for (i = 0; i < ddlmailids.options.length; i++) {
                getmailids[i] = ddlmailids.options[i].value;
            }
            //onchange event of textbox
            $(".mailtext").keyup(function () {
                //debugger
                var holdernametext = $('.mailtext').val();
                var firstname = holdernametext.split('@')[0];
                var lastname = holdernametext.split('@')[1];

                if (getmailids.inArray(lastname)) {
                    $('#maildiv').show('slow');
                    $('#submit').attr("disabled", "disabled");
                    //return false;
                }
                else {
                    $('#maildiv').hide('slow');
                    $('#submit').removeAttr("disabled");
                }
            });
        });
    </script>
    <!-- end mail ids -->
</head>
<body style="background: #eeeeee">
    <form id="form1" runat="server">
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
    <div style="margin: 0 auto;">
        <table width="700" class="request_form" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="3">
                    <h1>
                        Submit your enquiries</h1>
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
            <tr>
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
            </tr>
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
                    <%--<asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                        Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                        ValidationExpression="\d{9,20}" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Email address*
                </td>
                <td class="style2">
                    <asp:TextBox ID="MailTextBox" runat="server" CssClass="mailtext" CausesValidation="True"
                        Width="200px"></asp:TextBox><br />
                                    <div style="color:#ff0000; display:none;" id="maildiv">Only official mailid</div>
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
            <tr>
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
            </tr>
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
    </form>
</body>
</html>
