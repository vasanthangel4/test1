<%@ Control Language="C#" AutoEventWireup="true" CodeFile="banner.ascx.cs" Inherits="banner" %>


<div style="background: none repeat scroll 0% 0% transparent;" class="ccslider" id="slider">
    <div style="display: none;" class="slider-innerWrapper">
        <img src="Banner_slider/index_data/deploy.jpg" alt="deployment" data-transition="{&quot;effect&quot;: &quot;cubeLeft&quot;, &quot;slices&quot;: 5, &quot;delay&quot;: 200, &quot;delayDir&quot;: &quot;toCentre&quot;}">
        <!--<img src="index_data/deploy.jpg" alt="CEM Business Solutions" data-href="http://cembs.com"
                data-transition="{&quot;effect&quot;: &quot;cubeUp&quot;, &quot;slices&quot;: 9, &quot;animSpeed&quot;: 1200, &quot;delay&quot;: 30, &quot;delayDir&quot;: &quot;fromCentre&quot;, &quot;easing&quot;: &quot;easeInOutBack&quot;, &quot;depthOffset&quot;: 300, &quot;sliceGap&quot;: 30}">-->
        <img src="Banner_slider/index_data/erp.jpg" alt="erp" data-href="../MS_Dynamics_ERP.aspx" data-captionelem="#caption"
            data-transition="{&quot;effect&quot;: &quot;cubeRight&quot;, &quot;slices&quot;: 5, &quot;delay&quot;: 200}">
        <img src="Banner_slider/index_data/staffing.jpg" alt="Images can also serve as links. To see this in effect click on this slide image"
            data-href="http://cembs.com" data-transition="{&quot;effect&quot;: &quot;cubeDown&quot;, &quot;slices&quot;: 15, &quot;animSpeed&quot;: 3000, &quot;delay&quot;: 30, &quot;easing&quot;: &quot;easeInOutElastic&quot;, &quot;depthOffset&quot;: 200, &quot;sliceGap&quot;: 20}">
        <img src="Banner_slider/index_data/rightfit.jpg" alt="right fit" data-transition="{&quot;effect&quot;: &quot;cubeLeft&quot;, &quot;slices&quot;: 5, &quot;delay&quot;: 200, &quot;delayDir&quot;: &quot;toCentre&quot;}">
        <img src="Banner_slider/index_data/outsourcing.jpg" alt="outsourcing" data-transition="{&quot;effect&quot;: &quot;cubeUp&quot;, &quot;slices&quot;: 5, &quot;animSpeed&quot;: 1300, &quot;delay&quot;: 100, &quot;easing&quot;: &quot;easeInOutCubic&quot;, &quot;depthOffset&quot;: 500, &quot;sliceGap&quot;: 50}">
        <!--<img src="index_data/deus-ex2.jpg" alt="" data-transition="{&quot;effect&quot;: &quot;cubeRight&quot;, &quot;slices&quot;: 5, &quot;delay&quot;: 200, &quot;delayDir&quot;: &quot;last-first&quot;}">-->
    </div>
    <div style="width: 980px; height: 309px; left: 50px; top: 50px;" class="slider-controls">
        <a class="slider-nav prev"></a><a class="slider-nav next"></a>
    </div>
    <!--<ul class="control-links">
            <li class="active" data-index="0">1</li>
            <li class="" data-index="1">2</li>
            <li class="" data-index="2">3</li>
            <li class="" data-index="3">4</li>
            <li class="" data-index="4">5</li>
            <li class="" data-index="5">6</li>
        </ul>-->
    <div class="slider-timer pause">
    </div>
    <div style="width: 880px; left: 50px; bottom: 50px; right: auto; display: none;"
        class="slider-caption">
        Images can also serve as links. To see this in effect click on this slide image</div>
    <div style="width: 980px; height: 309px; left: 50%; top: 50%; margin-left: -450px;
        margin-top: -175px; display: none;" class="cc-htmlwrapper">
    </div>
    <a style="width: 980px; height: 309px; left: 50%; top: 50%; margin-left: -450px;
        margin-top: -175px; display: none;" class="slider-link" href="http://google.com/">
    </a>
    <!--<canvas height="309" width="980" style="position: absolute; z-index: 1;" class="shadow"></canvas>
        <canvas height="309" width="1000" style="position: absolute; z-index: 2;" class="draw"></canvas>
        <canvas height="309" width="980" style="position: absolute; z-index: 3;" class="draw"></canvas>
        <canvas height="309" width="980" style="position: absolute; z-index: 4;" class="draw"></canvas>
        <canvas height="309" width="980" style="position: absolute; z-index: 3;" class="draw"></canvas>
        <canvas height="309" width="980" style="position: absolute; z-index: 2;" class="draw"></canvas>-->
</div>
<div id="caption" class="cc-caption">
    This is an example of a caption</div>
<%--<script type="text/javascript" src="Banner_slider/index_data/jquery_003.js"></script>--%>
<%--<script type="text/javascript" src="Banner_slider/index_data/jquery.js"></script>--%>
<%--<script type="text/javascript" src="Banner_slider/index_data/jquery_002.js"></script>--%>
<script type="text/javascript" src="Banner_slider/index_data/jquery_004.js"></script>

<script type="text/javascript" src="Scripts/Home/banner.js"></script>
