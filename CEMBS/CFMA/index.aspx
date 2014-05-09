<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="CFMA_index"  Async="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta name="description" content="CEMBS" />
<meta name="keywords" content="CEMBS" />
<meta http-equiv="X-UA-Compatible" content="IE=10,IE=9,IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width">

 <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<link href="css/styles.css" type="text/css"  rel="stylesheet"/>
</head>
<body style="background-image: url(images/bg.png)!important;">
    <div class="maincontent">
        <header>

<img src="images\big_banner.png" alt="" title="" />
</header>
        <div class="maincommon">
            <div class="main_cembs">
                <h4>Visit Our Construction Technology Forum At CFMA in Las Vegas!</h4>
  <section>
  <h2>Register & Win!</h2>
 <p class="ctext">
  If you are considering ERP for your construction business, you should consider Microsoft Dynamics AX.
  Chances are, you are already using Microsoft software like, MS Office, Outlook, SharePoint, or possibly CRM. So Microsoft Dynamics ERP would fit seamlessly into your existing technology stack. And now CEM Business Solutions has developed an add-on module that tailors all the power of Dynamics AX for the AEC industry. CEM AX Construct does away with most, if not all, of the expensive and cumbersome customizations associated with a good construction ERP fit. 
<br/><br/>
And if you are attending the Construction Financial Management Association’s (CFMA) Conference in Las 
Vegas this year – please fill-out this RSVP form to save your seat at our Construction Technology Forum:

<br/><br/>
Date:   Sunday, June 8, 2014 <br/>
Time:	  12:00pm to 2:00pm <br/>
Place:  Caesar’s Palace Hotel<br/>
Room: [to come from CFMA by 4.28]

</p>
  
  <div class="commonbox">
  <p>
  The first 10 people reserving a seat will receive a leather<br/> passport holder. Seating is limited, so reserve your seat <br/>
  right away by submitting this RSVP. </p> </div>
  

 
  </section>
                <form class="cembs_form" runat="server" id="form1">
                <p class="cembs_form2">
                    CEM Construction Technology Forum RSVP</p>
                <p class="default cem-td">
                    <label for="name-cembs">
                        Name*
                    </label>

                  

                           <asp:TextBox ID="FirstNameTextBox" runat="server" autocomplete="off"  CausesValidation="True" Width="200"
                            ValidationGroup="fill"></asp:TextBox>


                             <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="FirstNameTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>

                </p>
                <p class="default cem-td">
                    <label for="company-cembs">
                        Company*
                    </label>
                     <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" autoComplete="off" Width="200"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="CompanyTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                </p>
                <p class="default cem-td">
                    <label for="telephone-cembs">
                        Telephone*
                    </label>
                     <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" autoComplete="off" Width="200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="PhoneTextBox"  SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
                </p>
                <p class="default cem-td">
                    <label for="email-cembs">
                        Email address*
                    </label>
                   <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" ValidationGroup="fill" autoComplete="off"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>
                </p>
                <div class="default cem-td">
                    <label for="current-cembs">
                        Current ERP</label>
                    <asp:TextBox ID="MessageTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" ValidationGroup="fill"></asp:TextBox>
                    <span class="icon-1 status">&nbsp;</span>
                </div>
                <div class="cem-td">
                    <label>
                        &nbsp;&nbsp;
                    </label>
                        <asp:Button ID="subscribe_btn" Text="Submit" CssClass="submit-cembs" runat="server" OnClick="subscribe_btn_Click"
                            ValidationGroup="fill" />
                </div>
                <div class="cem-td tdcems">
                    <p>
                        *Required fields
                    </p>
                </div>
                <p class="cem-td nomalp">
                    If you can’t stop by our Construction Technology<br />
                    Forum, be sure to visit booth #614 during the<br />
                    Exhibit. We’d love to meet you.
                </p>
                </form>
            </div>
            <div class="bottomtxt">
                <p class="cembscontact">
                    Contact:<br />
                    Michael Vana<br />
                    Marketing Director<br />
                    CEM Business Solutions<br />
                    (201) 391-5345<br />
                </p>
                <p class="cembscontact">
                    <a href="mailto:michael.vana@cembs.com">michael.vana@cembs.com</a> <a href="http://www.cembs.com/">
                        www.cembs.com</a>
                </p>
                <a href="" class="cembscontact">
                    <img src="images\microsoft_partner.png" border="0" alt="" title="" /></a> <a href="" class="cembscontact textsicmon">
                        <img src="images\microsoft_dynamic.png" border="0" alt="" title="" /></a>
            </div>
        </div>
    </div>
    <footer>

<div class="maincontent">

<ul>
<li class="cembsh1">Dynamics Products</li>
<li><a href="">Microsoft Dynamics AX</a></li>
<li><a href="">Microsoft Dynamics CRM</a></li>
<li><a href="">Microsoft Dynamics GP</a></li>
<li><a href="">Microsoft Dynamics NAV</a></li>
<li><a href="">Microsoft Dynamics SL</a></li>

</ul>
<ul>
<li class="cembsh1">Industries</li>
<li><a href="">Construction</a></li>
<li><a href="">Manufacturing</a></li>
<li><a href="">Professional Services</a></li>
<li><a href="">Projects</a></li>
<li><a href="">Retail</a></li>
</ul>
<ul>
<li class="cembsh1">Unique Solutions</li>
<li><a href="">CEM AX Payroll</a></li>
<li><a href="">CEM AX Construct</a></li>
<li><a href="">CEM AX HCM</a></li>
<li>
  <a href="https://www.facebook.com/cembs" style="border:0px; text-decoration:none;">
<img src="images\facebook.png" border="0" width="17px" height="17px"  alt="" title="" />
</a>
 <a href="https://twitter.com/cembsglobal" style="border:0px; text-decoration:none;">
  <img src="images\twitter.png" border="0" width="17px" height="17px"  alt="" title="" />
  </a>
   <a href="http://www.pinterest.com/cembsglobal/" style="border:0px; text-decoration:none;">
  <img src="images\pn.png" border="0" width="17px" height="17px"  alt="" title="" />
    </a>
	   <a href="http://www.linkedin.com/company/cem-business-solutions" style="border:0px; text-decoration:none;">
  <img src="images\in.png" border="0" width="17px" height="17px"  alt="" title="" />
      </a>
	   <a href="http://www.youtube.com/user/cembusinesssolutions" style="border:0px; text-decoration:none;">
  <img src="images\red.png" border="0" width="17px" height="17px"  alt="" title="" />
  </a>
  <a href="https://plus.google.com/+CembsGlobal/posts" style="border:0px; text-decoration:none;">
<img src="images\g.png" border="0" width="17px" height="17px"  alt="" title="" />
</a>
</li>
</ul>
<ul>
<li>
<img src="images\CEM_logo.png" alt="#" />
</li>
<li class="cembsh1">
<a href=""> Home</a> | <a href="">  Sitemap</a>  | <a href=""> Contact Us</a> 
</li>
<li>Copyright © 2014</li>
</ul>
</div>
</footer>
    </body>
</html>
