<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers_Apply.aspx.cs" Inherits="Careers_Apply" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
    <link href="Styles/OthersPages/RequestFormTdStyles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:#eeeeee">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div style="margin:0 auto;">
        
        <br />
        <table width="700" class="request_form" border="0" cellspacing="0" cellpadding="0">
            <tr><td colspan="3"><h1>
                JOIN US</h1></td></tr>
            <tr>
                <td class="upgradeTable ltd">
                    First Name*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_firstname" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Name Required" ControlToValidate="txt_firstname" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Last Name*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_lastname" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="NameValidator0" runat="server" Display="Dynamic"
                        ErrorMessage="Name Required" ControlToValidate="txt_lastname" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Email address*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_email" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your mail ID" SetFocusOnError="True" 
                        ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" 
                        ControlToValidate="txt_email" Display="Dynamic" 
                        ErrorMessage="Enter a valid mail ID" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Telephone*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_phone" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your contact number" 
                        ControlToValidate="txt_phone" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" 
                        ControlToValidate="txt_phone" Display="Dynamic" 
                        ErrorMessage="Enter valid phone number" SetFocusOnError="True" 
                        ValidationExpression="\d{9,20}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Post Applying for*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_designation" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="DesignationValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Select the post applying for" SetFocusOnError="True" 
                        ControlToValidate="txt_designation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Gender*</td>
                <td class="mtd">
                    <asp:RadioButtonList ID="radio_gender" runat="server" 
                        RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="GenderValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Select your Gender" SetFocusOnError="True" 
                        ControlToValidate="radio_gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Date of Birth*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_dob" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="DOBValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your birth date" SetFocusOnError="True" 
                        ControlToValidate="txt_dob"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Current Location*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_clocation" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="LocationValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter current Location" SetFocusOnError="True" 
                        ControlToValidate="txt_clocation"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Nationality</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_nationality" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Country</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_country" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    State/Province</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_state" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Experience*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_experience" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ExperienceValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Fill your Experience" SetFocusOnError="True" 
                        ControlToValidate="txt_experience"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Current CTC*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_currentCTC" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="CCTCValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter your Current Annual Salary" SetFocusOnError="True" 
                        ControlToValidate="txt_currentCTC"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Expected CTC</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_expectedCTC" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Current Industry*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_industry" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="IndustryValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Select Current Industry" SetFocusOnError="True" 
                        ControlToValidate="txt_industry"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Functional Area*</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_functional" runat="server" CausesValidation="True" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="FunctionalityValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Select your Functional Area" SetFocusOnError="True" 
                        ControlToValidate="txt_functional"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    Photo</td>
                <td class="mtd">
                    <asp:FileUpload ID="txt_uploadphoto" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    CV/Resume*</td>
                <td class="mtd">
                    <asp:FileUpload ID="txt_uploadresume" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ResumeValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Upload your profile/resume" SetFocusOnError="True" 
                        ControlToValidate="txt_uploadresume"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td valign="top" class="upgradeTable ltd">
                    Keyskills</td>
                <td class="mtd">
                  <asp:TextBox ID="txt_skills" runat="server" CausesValidation="True" 
                        Width="250px" Rows="7" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="upgradeTable ltd">
                    
                </td>
                <td>
                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />&nbsp;
                    <asp:Button ID="reset" runat="server" Text="Reset" />
                </td>
                <td>
                    &nbsp;<asp:Label ID="resultLabel" runat="server" ForeColor="#729106"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="upgradeTable">&nbsp;
                    
                </td>
                <td>&nbsp;
                    
                  <span class="style1">Kindly fill all the information mentioned as *.</span></td>
                <td>&nbsp;
                    
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
