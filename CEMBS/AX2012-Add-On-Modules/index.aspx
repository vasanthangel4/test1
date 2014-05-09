<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="AX2012_Add_On_Modules_index" Async="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CEMBS</title>
<meta name="description" content="CEMBS" />
<meta name="keywords" content="CEMBS" />
<meta http-equiv="X-UA-Compatible" content="IE=10,IE=9,IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width">

 <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<link href="css/cembs.css" type="text/css" rel="stylesheet" />
</head>

<body>

<div class="maincontent">
<div class="maincontent">
<div class="axcons">
<h1>
 <span> AX 2012</span> <span class="smallt"> Add On Modules 
</span>
</h1>
 <span class="smallts">That Fill Important Gaps</span>
</div>
<img src="img/mic_dyna_cem.jpg"  width="382px" height="119px"  alt="" title="" />
 
</div>

<img src="img\banner_axcons.jpg" width="900px" height="442px"  alt="" title="" />

<section class="mainbgcolo">
<header>
<h1>Human Resources Solution</h1>
<h1>Payroll Solution</h1>
</header>
<section class="cobor">
<iframe width="350px" height="200px"
 src="http://www.youtube.com/embed/sQWA8OW4vow"
 frameborder="0" allowfullscreen></iframe>


<ul>
<li>Recruitment Management</li>
<li>Manpower Planning & Budgeting</li>
<li>Career Planning & Development</li>
<li>Talent Management</li>
<li>Succession Planning</li>
<li>Transfer & Promotion</li>
<li>Employee Recognition</li>
<li>Payroll Management</li>
<li>Performance Management</li>
</ul>
</section>
<section>

<iframe width="350px" height="200px" src="http://www.youtube.com/embed/MoiUDkLu_pc" frameborder="0" allowfullscreen></iframe>


<ul>
<li>Union Payroll</li>
<li>Time Management</li>
<li>Absence Management</li>
<li>Social Security Management</li>
<li>Claims Management</li>
<li>Insurance Management</li>
<li>Loan Management</li>
<li>Employee Relation Management</li>
<li>Payroll Processing</li>
<li>Training Management</li>
<li>Enterprise Self-Service Portal</li>
<li>Role Specific Dashboard Reports</li>
</ul>
</section>



</section>

<section class="mainbgcolo2">
<div class="maincoax"> 
<h1>Register Now</h1>

<form  runat="server" id="form1">
<div class="form">
<div class="mainst">
<label for="firstname">First Name</label>
<asp:TextBox ID="FirstNameTextBox" runat="server" autocomplete="off"  CausesValidation="True" Width="200"
                            ValidationGroup="fill"></asp:TextBox>


                             <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="FirstNameTextBox" SetFocusOnError="True"
                            ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
</div>
<div class="mainst">
<label for="lastname">Last Name</label>
<input type="text" name="lastname" id="lastname" />
</div>


<div class="mainst">
<label for="CompanyTextBox">Company</label>
         <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="200"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="CompanyTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
</div>
<div class="mainst">
<label for="MailTextBox">Email</label>
<asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="200" ValidationGroup="fill"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="*"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red" ValidationGroup="fill"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="*" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="Red" ValidationGroup="fill"></asp:RegularExpressionValidator>
</div>

<div class="mainst">
<label for="PhoneTextBox">Phone</label>
          <asp:TextBox ID="PhoneTextBox" runat="server" CausesValidation="True" Width="200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ErrorMessage="*" ControlToValidate="PhoneTextBox" SetFocusOnError="True" ForeColor="Red"
                            ValidationGroup="fill"></asp:RequiredFieldValidator>
</div>
</div>

<div class="form2">


<div class="mainst">
<label for="MessageTextBox">Message</label>
<asp:TextBox  CssClass="mailtext" CausesValidation="True"
                            Width="200" ValidationGroup="fill" ID="MessageTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
</div>

</div>
<div class="mainstsubmit">

    <asp:Button ID="subscribe_btn" Text="Submit" CssClass="submitbtn" runat="server" OnClick="subscribe_btn_Click"
                            ValidationGroup="fill" />


</div>

</form>
</div>
<div class="mainxcontxt">

<h3>Contact</h3>

<p>

Michael Vana<br/>
CEM Business Solutions<br/>
(201) 391-5345<br/>
<a href="mailto:Michael.vana@cembs.com"> Michael.vana@cembs.com</a><br/>
<a href="http://www.cembs.com/">www.cembs.com</a><br/>
</p>
<img src="img/microsoft_partner.png" width="155px" height="55px"  alt="" title="" />

<img src="img/landing_ax.jpg" width="159px" height="66px"  alt="" title="" />
</div>
</section>








<footer>

<div class="maincontent">

<ul>
<li class="cembsh1">Dynamics Products</li>
<li><a href="http://www.cembs.com/Microsoft-Dynamics-AX.aspx">Microsoft Dynamics AX</a></li>
<li><a href="http://www.cembs.com/Microsoft-Dynamics-CRM.aspx">Microsoft Dynamics CRM</a></li>
<li><a href="http://www.cembs.com/Microsoft-Dynamics-GP.aspx">Microsoft Dynamics GP</a></li>
<li><a href="http://www.cembs.com/Microsoft-Dynamics-Nav.aspx">Microsoft Dynamics NAV</a></li>
<li><a href="http://www.cembs.com/Microsoft-Dynamics-SL.aspx">Microsoft Dynamics SL</a></li>

</ul>
<ul>
<li class="cembsh1">Industries</li>
<li><a href="http://www.cembs.com/Construction-Management.aspx">Construction</a></li>
<li><a href="http://www.cembs.com/ERP-for-Manufacturing.aspx">Manufacturing</a></li>
<li><a href="http://www.cembs.com/ProfessionalServices.aspx">Professional Services</a></li>
<li><a href="http://www.cembs.com/Project-Management-Software.aspx">Projects</a></li>
<li><a href="http://www.cembs.com/Retail-Management.aspx">Retail</a></li>
</ul>
<ul>
<li class="cembsh1">Unique Solutions</li>
<li><a href="http://www.cembs.com/Payroll-Software.aspx">CEM AX Payroll</a></li>
<li><a href="http://www.cembs.com/Construction-Management-Software.aspx">CEM AX Construct</a></li>
<li><a href="http://www.cembs.com/Human-Capital-Management.aspx">CEM AX HCM</a></li>
<li>
  <a href="https://www.facebook.com/cembs" style="border:0px; text-decoration:none;">
<img src="images/facebook.png"  alt="" width="17px" height="17px" border="0" title="" />
</a>
 <a href="https://twitter.com/cembsglobal" style="border:0px; text-decoration:none;">
  <img src="images/twitter.png"  alt="" width="17px" height="17px" border="0" title="" />
  </a>
   <a href="http://www.pinterest.com/cembsglobal/" style="border:0px; text-decoration:none;">
  <img src="images/pn.png"  alt="" width="17px" height="17px" border="0" title="" />
    </a>
	   <a href="http://www.linkedin.com/company/cem-business-solutions" style="border:0px; text-decoration:none;">
  <img src="images/in.png"  alt="" width="17px" height="17px" border="0" title="" />
      </a>
	   <a href="http://www.youtube.com/user/cembusinesssolutions" style="border:0px; text-decoration:none;">
  <img src="images/red.png"  alt="" width="17px" height="17px" border="0" title="" />
  </a>
  <a href="https://plus.google.com/+CembsGlobal/posts" style="border:0px; text-decoration:none;">
<img src="images/g.png"  alt="" width="17px" height="17px" border="0" title="" />
</a>
</li>
</ul>
<ul>
<li>
<img src="images/CEM_logo.png" alt="#" />
</li>
<li class="cembsh1">
<a href="www.cembs.com/"> Home</a> | <a href="www.cembs.com/CEMSitemap.aspx">  Sitemap</a>  | <a href="www.cembs.com/Contactus.aspx"> Contact Us</a> 
</li>
<li>Copyright © 2014</li>
</ul>
</div>
</footer>
</div>
<body>
</html>
