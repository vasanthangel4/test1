<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Microsoft_Dynamic_r3_in_doha_index"  Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta name="description" content="CEMBS" />
<meta name="keywords" content="CEMBS" />
<meta http-equiv="X-UA-Compatible" content="IE=10,IE=9,IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width">

    <link href="images/Site.css" rel="stylesheet" type="text/css" />
    <script src="images/jquery-1.js" type="text/javascript"></script>
    <script src="images/modernizr-1.js" type="text/javascript"></script>
  
 <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<link href="css/styles.css" type="text/css"  rel="stylesheet"/>
</head>
<body>

  <div class="page">

  <div class="page-com">
   <img height="86" width="217" border="0" src="images/microsoft.png" />
  <div class="lofgo-tright">
  		<a href="http://www.cembs.com/" target="_blank" style="border:0px;">
  <img height="54" width="190" border="0" src="images/logo.png" />
   </a>
  <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="https://www.facebook.com/cembs" style="border:0px; text-decoration:none;">
<img src="http://www.cembs.com/emailtemplate/images/facebook.png"  alt="" width="17px" height="17px" border="0" title="" />
</a>
<a href="https://twitter.com/cembsglobal">
  <img src="http://www.cembs.com/emailtemplate/images/twitter.png"  alt="" width="17px" height="17px" border="0" title="" />
  </a>
   <a href="http://www.pinterest.com/cembsglobal/" >
  <img src="http://www.cembs.com/emailtemplate/images/pn.png"  alt="" width="17px" height="17px" border="0" title="" />
    </a>
                   <a href="http://www.linkedin.com/company/cem-business-solutions">
  <img src="http://www.cembs.com/emailtemplate/images/in.png"  alt="" width="17px" height="17px" border="0" title="" />
      </a>
                   <a href="http://www.youtube.com/user/cembusinesssolutions">
  <img src="http://www.cembs.com/emailtemplate/images/red.png"  alt="" width="17px" height="17px" border="0" title="" />
  </a>
  <a href="https://plus.google.com/+CembsGlobal/posts">
<img src="http://www.cembs.com/emailtemplate/images/g.png"  alt="" width="17px" height="17px" border="0" title="" />
</a>
</div>
</div>        
        <header class="hesdimg">
<img src="images/center_img.png" alt="" />
                       
        </header>
        <section id="main">
            <script src="images/jquery_002.js" type="text/javascript"></script>
<script src="images/jquery.js" type="text/javascript"></script>

    <form runat="server" id="form1">   
     <h1>Launching <br/>
“Microsoft Dynamics R3” in Doha</h1>
 <h3>
        Be part of this historic launch* on 
2nd June 2014 and learn the ways to woo your customers.

</h3>
    <p>
 Stand up and move beyond “satisfaction”, gain insight into your customers needs, transform the way you engage, connect and interact with them. Exceed expectation and build lasting relationship.
    </p>
    <table width="100%" class="thtable"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
<td style="height:5px;" class="nonswe"> </td>
</tr>
<th colspan="5" >
AGENDA
</th>
<tr>
<td>0830 - 0900 hrs   -   Registration</td>
<td> 1030 - 1100hrs     -  Tea Break</td>
<td>1330 - 1530hrs   -   Demo Construct & HCM</td>
</tr>
<tr>
<td> 0900 - 1000hrs    -   Delight your customers</td>
<td>  1100 - 1230hrs   -   R3 Product Demo</td>
<td> 1530 – 1600hrs   -   Q&A followed by Tea</td>
</tr>
<tr>
<td>  1000 - 1030hrs     -  Talk by KPMG</td>
<td>   1230 - 1330hrs   -   Lunch</td>
<td class="nonswe"> </td>
</tr>
<tr>
<td style="height:10px;" class="nonswe"> </td>
</tr>
</table>
 <table width="100%" class="thtable"  border="0" align="center" cellpadding="0" cellspacing="0">
<th colspan="5" >
Register
</th>
</table>

    <fieldset id="infoForm">
        

                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                    <tr>
                        <td>
                            
                                <label for="First_Name">First Name</label>
                           
                        </td>
                        <td>
                           
                              
                           <asp:TextBox ID="FirstNameTextBox" runat="server" autocomplete="off"  CausesValidation="True" 
                            ValidationGroup="fill"></asp:TextBox>


                             <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="FirstNameTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                            
                        </td>
                        <td>
                         
                                <label for="Last_Name">Last Name</label>
                         
                        </td>
                        <td>
                        
                                <input class="text-box single-line" id="LastName" name="LastName" type="text">
                                <span class="field-validation-valid" data-valmsg-for="LastName" data-valmsg-replace="true"></span>
                          
                        </td>
                        <td>
                           
                                <label for="Position">Position</label>
                        
                        </td>
                        <td>
                          
                                    <asp:TextBox ID="Designationl" runat="server" CausesValidation="True" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="Designationl" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                          
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                           
                                <label for="Department">Department</label>
                            
                        </td>
                        <td>
                           
                                <input class="text-box single-line" id="Department" name="Department" type="text">
                                <span class="field-validation-valid" data-valmsg-for="Department" data-valmsg-replace="true"></span>
                            
                        </td>
                        <td>
                          
                                <label for="Company">Company</label>
                            
                        </td>
                        <td>
                          
                            <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="CompanyTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                         
                        </td>
                         <td>

                                <label for="Phone">Phone</label>
                           
                        </td>
                        <td>
                           
                            <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="PhoneTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        
                       
                         <td valign="top">
                           
                                <label for="Email">Email</label>
                           
                        </td>
                        <td valign="top">
                         
                                      <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                             ValidationGroup="fill"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>
                         
                        </td>
                        <td style="padding-top: 10px" valign="top">
                          
 Which ERP are you using? 
                        </td>
                        <td valign="top">
                          
                             <asp:TextBox ID="MessageTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                             ValidationGroup="fill"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="MessageTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>

                           
                        </td>
                         <td style="padding-top: 10px" valign="top">
                            
                                Are you looking for anything in particular?
                            
                        </td>
                        <td>
                           
                               <input class="text-box single-line" id="Text1" name="ERP" type="text">
                                <span class="field-validation-valid" data-valmsg-for="Expectation" data-valmsg-replace="true"></span>
                            
                        </td>
                    </tr>
            
                    <tr>
                      <td>
                            &nbsp;
                        </td>
                         <td>
                            &nbsp;
                        </td>
                     <td>
                            &nbsp;
                        </td>
                         <td>
                            &nbsp;
                        </td>
                       <td  valign="top">
                            &nbsp; &nbsp;
                        </td>
                         <td  valign="top" style="padding-top:30px;">
             
                              <asp:Button ID="subscribe_btn" Text="Submit" CssClass="submit-cembs" runat="server" OnClick="subscribe_btn_Click"
                            ValidationGroup="fill" />
                        </td>


                    </tr>
                  
                </tbody></table>
           
    </fieldset>
           
    <p style="padding: 0px 20px;font-size:12px;color:#2b2b2c;">
        * Venue will be declared shortly
    </p>
</form>
<script type="text/javascript">
           $(document).ready(function () {
               $('#ERP').hide();
               $('#ToSend').hide();
               $('#Industries').hide();
               $('#Timeframe').hide();

               var erp_ddl = $('#erp_ddl');
               var tosend_ddl = $('#tosend_ddl');
               var industry_ddl = $('#industry_ddl');
               var timeframe_ddl = $('#timeframe_ddl');

               erp_ddl.change(function () {
                   if (erp_ddl.val() == "Others") {
                       $('#ERP').show();
                   }
                   else {
                       $('#ERP').hide();
                   }
               });

               tosend_ddl.change(function () {
                   if (tosend_ddl.val() == "Others") {
                       $('#ToSend').show();
                   }
                   else {
                       $('#ToSend').hide();
                   }
               });

               industry_ddl.change(function () {
                   if (industry_ddl.val() == "Others") {
                       $('#Industries').show();
                   }
                   else {
                       $('#Industries').hide();
                   }
               });

               timeframe_ddl.change(function () {
                   if (timeframe_ddl.val() == "Others") {
                       $('#Timeframe').show();
                   }
                   else {
                       $('#Timeframe').hide();
                   }
               });
           });
</script>

        </section>
    
    </div>

    </body>
</html>
