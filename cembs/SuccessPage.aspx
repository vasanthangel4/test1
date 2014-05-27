<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccessPage.aspx.cs" Inherits="SuccessPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="uhead" TagName="userhead" Src="~/UserControls/header.ascx" %>
<%@ Register TagPrefix="footer" TagName="cem_footer" Src="~/UserControls/footer.ascx" %>
<%@ Register TagName="extended" TagPrefix="menu" Src="~/UserControls/ExtendedMenu.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CEMBS | Success Page</title>
    <link rel="icon" href="Images/titlelogo.png" type="image/png" />
     <!-- <meta http-equiv="refresh" content="3,http://www.cembs.com/" /> -->
       <meta name="description" content="Form cembs submit page" />
       <meta name="keywords" content="Form cembs submit page" />
       <script type="text/javascript">
           function Refresher(t) {
               if (t) refresh = setTimeout("document.location='http://www.cembs.com/';", t * 12);
           }
</script>
    <link href="Styles/Layout.css" rel="sty+lesheet" type="text/css" />
    <link href="autocomplete_src/demos.css" rel="stylesheet" type="text/css" />
    <link href="autocomplete_src/jquery.ui.autocomplete.css" rel="stylesheet" type="text/css" />
    <link href="Styles/v3/responsive.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery.ui.accordion.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="Styles/v3/common-style.css" rel="stylesheet" type="text/css" />
    <link href="Styles/v3/home-style.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <link href="Styles/v3/jquery.feedback_me.css" rel="stylesheet" type="text/css" />
    <!-- google analytics -->
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <!-- end google analytics -->
</head>
<body style="background:#ffffff;" onLoad="Refresher(20)">
<div class="wrap" id="wrapper">
   <div id="fb-root">
        </div>

 <header>
            <uhead:userhead ID="cemheader" runat="server" />
            <form id="Form2" runat="server">
                <menu:extended ID="extended" runat="server" />
            </form>      
            <!-- Banner Section -->        
        </header>

  
    <div id="myGallery">
        <!--<img src="Images/MetroStyle/bg.jpg" width="1200" height="768" alt="background" />-->
    </div>
    <div class="content_div">
    <div style="margin:auto; width:780px;margin-top:50px;margin-bottom:50px;">
        <h1 style="color:#0B76BA; font-size:16px;font-weight:normal; font-family:arial;">
Thank you for leaving your details with us. 
You can find a confirmation mail in your inbox. 
<br/>
We will get back to you soon.<br/><br/>

<br/>

        </h1>
    </div>
      </div> 
      <footer:cem_footer ID="footer" runat="server" /></div>
</body>
</html>
