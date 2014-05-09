<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ax2012_banner.ascx.cs" Inherits="ax2012_banner" %>

<style type="text/css">
    #myGallery{
      position:relative;
      width:400px; /* Set your image width */
      height:300px; /* Set your image height */
    }
    #myGallery img{
      display:none;
      position:absolute;
      top:0;
      left:0;
    }
    #myGallery img.active{
      display:block;
    }
  </style>
  <script type="text/javascript" src="Scripts/OtherPages/SwapImages.js"></script>

<div id="myGallery">
    <img src="Images/ax2012.jpg" class="active" alt="ax2012" />
    <img src="Images/ax2012_rightResource.jpg" alt="ax2012 resource" />
  </div>
