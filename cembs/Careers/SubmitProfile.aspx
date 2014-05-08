<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubmitProfile.aspx.cs" Inherits="Careers_SubmitProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Profile | CEM Business Solutions</title>
    <meta name="description" content="careers, profiles" />
    <meta name="keywords" content="careers, profiles" />
    <script type="text/javascript">
        function alertme(key) {
            debugger
            var keycode = (key.which) ? key.which : key.keyCode;
            //alert(keycode);
            var phone = document.getElementById('PhoneTextBox');
            var experience = document.getElementById('ExperienceTextbox');

            if (keycode >= 48 && keycode <= 57) {
                if (experience.value.length < 2) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else if (keycode == 8 || keycode == 46 || keycode == 9) {
                return true;
            }
            else if (keycode == 25) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <link href="../Styles/services.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            background: #EBEBEB;
        }
        .profile_table
        {
            background: #EBEBEB;
            padding: 20px;
            width: 550px;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
        }
        .profile_table td
        {
            height: 35px;
            vertical-align: top;
            width: 220px;
        }
        .profile_table .lefttd
        {
            width: 450px;
        }
        .profile_table input[type='text']
        {
            width: 210px;
        }
        .profile_table textarea
        {
            width: 300px;
            height: 100px;
        }
        .profile_table input[type='submit']
        {
            border: none;
            background:#534C4A;
            color: #FFFFFF;
            height: 30px;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="profile_table" align="center">
        <tr>
            <td colspan="2">
                <center>
                    <h1>
                        Submit Your Resume</h1>
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </center>
            </td>
        </tr>
        <tr>
            <td class="lefttd">
                Name*
            </td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name Required"
                    ControlToValidate="NameTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lefttd">
                Email ID*
            </td>
            <td>
                <asp:TextBox ID="MailTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="MailRequiredFieldValidator" runat="server" ErrorMessage="Enter your mail id"
                    ControlToValidate="MailTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="MailTextBox" Display="Dynamic" 
                    ErrorMessage="Enter Valid mail id" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td class="lefttd">
                Current Location*
            </td>
            <td>
                <asp:TextBox ID="LocationTextbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator0" runat="server" ErrorMessage="Location Required"
                    ControlToValidate="LocationTextbox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lefttd">
                Years of experience*
            </td>
            <td>
                <asp:TextBox ID="ExperienceTextbox" runat="server" onkeydown="return alertme(event)"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="ExperienceRequiredFieldValidator" runat="server"
                    ErrorMessage="Experience Required" ControlToValidate="ExperienceTextbox" Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top" class="lefttd">
                Upload your Resume*
            </td>
            <td>
                <asp:FileUpload ID="Profile_Uploader" runat="server" />
                <br />
                <asp:RequiredFieldValidator ID="FileuploadRequiredFieldValidator" runat="server"
                    ErrorMessage="Please select document to Upload" ControlToValidate="Profile_Uploader"
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lefttd">
                Contact Number*
            </td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server" onkeydown="return alertme(event)"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" ErrorMessage="Contact Number Required"
                    ControlToValidate="PhoneTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td valign="top" style="vertical-align: top; margin-top: 10px;" class="lefttd">
                Few words about yourself*
            </td>
            <td>
                <asp:TextBox ID="MessageTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="MessageRequiredFieldValidator" runat="server" ErrorMessage="Type your Message"
                    ControlToValidate="MessageTextBox" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lefttd" colspan="2" style="height: 8px;">
            </td>
        </tr>
        <tr>
            <td class="lefttd">
            </td>
            <td>
                <asp:Button ID="Upload" runat="server" Text="Submit Profile" OnClick="Upload_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
