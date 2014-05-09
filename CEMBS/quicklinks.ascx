<%@ Control Language="C#" AutoEventWireup="true" CodeFile="quicklinks.ascx.cs" Inherits="quicklinks" %>

<div class="quicklinks">
    <h2>
        Contact CEM</h2>
    <div class="contact">
        <ul>
            <li>
                <div class="show_hide">
                    Social Network [+/-]</div>
                <div class="slidingDiv">
                    <a href="http://www.facebook.com/cembs"
                        id="facebook" target="_blank">
                        <img src="Images/facebook.png" width="25" height="43" alt="Facebook" />
                    </a><a href="https://plus.google.com/u/0/105840593372061158513/posts" id="google" target="_blank">
                        <img src="Images/google.png" width="25" height="43" alt="Google" />
                    </a><a href="http://www.flickr.com/photos/cembs/?hide_photostream_welcome=1" id="flickr" target="_blank">
                        <img src="Images/flickr.png" width="25" height="43" alt="Flickr" />
                    </a><a href="https://twitter.com/CEMBSglobal" id="twitter" target="_blank">
                        <img src="Images/twitter.png" width="25" height="43" alt="Twitter" />
                    </a><a href="http://www.slideshare.net/CEMBSIndia" id="slideshare" target="_blank">
                        <img src="Images/slideshare.png" width="25" height="43" alt="Slideshare" />
                    </a>
                </div>
            </li>
            <%--<li class="skype"><span><a href="skype:enquiries.cembs">enquiries.cembs</a></span></li>--%>
            <li><a href="Contact_RequestForm.aspx?formname=contact" rel="clearbox[height=500,,width=800,,scrolling=no]">
                Get free Quote</a> </li>
            <%--<li><a href="Gallery.aspx">Visit us at</a> </li>--%>
            <!--li><a href="#">Careers</a> </li-->
            <li><a href="Contactus.aspx">Reach us Globally
                <img src="Images/reachus.jpg" alt="reach CEM" />
            </a></li>
            <li><a href="AX_Services.aspx">
                <img src="Images/upgradeax2012.jpg" alt="upgrade to AX2012" style="box-shadow: 0 10px 10px -8px #000;
                    border: none; padding-top: 20px;" /></a></li>
        </ul>
        <%--<h2>
                Downloads</h2>
                <ul class="downloads">
                    <li><a href="#">CEMBIOSIS news letter</a> </li>
                    <li><a href="#">Microsoft Dynamics (GP)</a></li>
                    <li><a href="#">Microsoft Dynamics (NAV)</a></li>
                    <li><a href="#">Microsoft Dynamics (AX)</a></li>
                    <li><a href="#">Microsoft Dynamics (SL)</a></li>
                    <li><a href="#">Retail/POS Retail Solutions</a></li>
                    <li><a href="#">WennSoft</a></li>		 
                </ul>--%>
    </div>
</div>
