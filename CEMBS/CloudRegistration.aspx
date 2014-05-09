<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloudRegistration.aspx.cs" Inherits="CloudRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .container .contactus input[type='text']
        {
            background: none repeat scroll 0 0 #0088CB;
            border: 1px solid #0088CB;
            box-shadow: 1px 1px 2px #818181;
            color: #FFFFFF;
            height: 30px;
            padding: 0 0 0 5px;
            width: 300px;
        }
        .container .contactus textarea
        {
            background: none repeat scroll 0 0 #0088CB;
            border: 1px solid #0088CB;
            box-shadow: 1px 1px 2px #818181;
            color: #FFFFFF;
            padding: 0 0 0 5px;
            width: 400px;
        }
        .container .contactus select
        {
            background: none repeat scroll 0 0 #0088CB;
            border: 1px solid #0088CB;
            box-shadow: 1px 1px 2px #818181;
            color: #FFFFFF;
            height: 25px;
            padding: 2px 0 0 5px;
            width: 305px;
        }
        .container .contactus .buttons_contact
        {
            float: right;
        }
        .container .contactus .buttons_contact input[type='submit']
        {
            background: none repeat scroll 0 0 #0088CB;
            border: 1px solid #0088CB;
            box-shadow: 1px 1px 2px #818181;
            color: #FFFFFF;
            padding: 0 0 0 0px;
            height: 30px;
            width: 80px;
        }
    </style>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
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
<body style="font-family: Segoe UI; font-size: 12px;">
    <form id="form1" runat="server">
    <asp:DropDownList ID="domainlist" Style="display: none; position: absolute;" runat="server">
    </asp:DropDownList>
    <div style="margin:10px auto 0; border:1px solid #eeeeee; box-shadow:0px 0px 2px 0px #505050; width:700px;">
        <div class="container" style="padding: 0 10px 0 20px;">
            <p>
                We will happily help you solve any related issues. If you have any questions please
                fill in the below form and submit your inquiry.</p>
            <div class="contactus">
                <table align="center">
                    <tr>
                        <td>
                            <asp:Label ID="resultlabel" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#8EAA09"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                                ControlToValidate="NameTextBox" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Phone
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Contact number required" SetFocusOnError="True" ControlToValidate="ContactTextBox"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                                Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                                ValidationExpression="\d{9,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Country
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="country" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="MailTextBox" runat="server" CssClass="mailtext" CausesValidation="True"></asp:TextBox><br />
                            <div style="color: #ff0000; display: none;" id="maildiv">
                                Only official mailid</div>
                            <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                                SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            <%--<asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Subject
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="SubjectTextBox" runat="server" CssClass="subjecttext" CausesValidation="True"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="SubjectValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Subject Required" ControlToValidate="SubjectTextBox" SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Message
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="MessageTextBox" runat="server" CausesValidation="True" Rows="7"
                                TextMode="MultiLine"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="MessageValidator" runat="server" Display="Dynamic"
                                ErrorMessage="Type your message" SetFocusOnError="True" ControlToValidate="MessageTextBox"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="buttons_contact">
                                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CausesValidation="true" />&nbsp;
                                <asp:Button ID="reset" runat="server" Text="Reset" CausesValidation="False" OnClick="reset_Click" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
