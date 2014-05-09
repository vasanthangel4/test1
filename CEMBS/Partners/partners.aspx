<%@ Page Language="C#" AutoEventWireup="true" CodeFile="partners.aspx.cs" Inherits="Partners_partners" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Code for Image Rotator -->
    <style type="text/css">
        /* rotator in-page placement */
        div.rotator
        {
            position: relative;
            display: none; /*top: -5px;*/
            display: inline-block;
        }
        /* rotator css */
        div.rotator ul li
        {
            float: left;
            position: absolute;
            list-style: none;
            top: 0;
            left: 0;
        }
        div.rotator ul li:hover
        {
            border: none;
            background: none;
        }
        
        /* rotator image style */
        div.rotator ul li img
        {
            background: none;
            border: none;
            border: 0px;
        }
        div.rotator ul li.show
        {
            z-index: 500;
        }
    </style>
    <script src="../Scripts/jquery.min_for_imgRotator.js" type="text/javascript"></script>
    <script type="text/javascript">
        function theRotator() {
            //Set the opacity of all images to 0
            $('div.rotator ul li').css({ opacity: 0.0 });
            //Get the first image and display it (gets set to full opacity)
            $('div.rotator ul li:first').css({ opacity: 1.0 });
            //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds	
            setInterval('rotate()', 6000);
        }
        function rotate() {
            //Get the first image
            var current = ($('div.rotator ul li.show') ? $('div.rotator ul li.show') : $('div.rotator ul li:first'));
            if (current.length == 0) current = $('div.rotator ul li:first');
            //Get next image, when it reaches the end, rotate it back to the first image
            var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.rotator ul li:first') : current.next()) : $('div.rotator ul li:first'));
            //Un-comment the 3 lines below to get the images in random order	
            //var sibs = current.siblings();
            //var rndNum = Math.floor(Math.random() * sibs.length );
            //var next = $( sibs[ rndNum ] );		

            //Set the fade in effect for the next image, the show class has higher z-index
            next.css({ opacity: 0.0 })
	    .addClass('show')
	    .animate({ opacity: 1.0 }, 1000);
            //Hide the current image
            current.animate({ opacity: 0.0 }, 1000)
	    .removeClass('show');
        };
        $(document).ready(function () {
            //Load the slideshow
            theRotator();
            $('div.rotator').fadeIn(1000);
            $('div.rotator ul li').fadeIn(1000); // tweek for IE
        });
    </script>
    <!-- End Code for Image Rotator -->
</head>
<body style="margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div class="partners">
        <div style="color: #484848; font-family: Segoe UI; font-size: 15px; font-weight: normal;
            margin: 0; padding: 0 0 0 75px; position: absolute; top: 10px; z-index:9999;">Our Partners
        </div>
        <asp:Panel ID="image_rotator_panel" runat="server">
            <div class="rotator">
                <ul>
                    <li class="show">
                        <img src="../Images/img_rotator/partner_gold.jpg" alt="Microsoft" /></li>
                    <%--<li>
                        <img src="../Images/img_rotator/rosimam.jpg" alt="Rosimam certified partner" /></li>--%>
                    <li>
                        <img src="../Images/img_rotator/goldpartner.jpg" alt="Microsoft gold certified partner" /></li>
                    <%--<li>
                        <img src="../Images/img_rotator/wensoft.jpg" width="244" height="145" alt="pic1" /></li>--%>
                </ul>
            </div>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
