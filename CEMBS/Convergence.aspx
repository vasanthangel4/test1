<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Convergence.aspx.cs" Inherits="Convergence" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <link href="Styles/gallery_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li.activetab").addClass("active").show(); //Activate first tab
            $(".tab_content:#tab5").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {
                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content
                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active content
                return false;
            });

        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/showcase.jpg" alt="showcase"/>
    </div>--%>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="#tab1">WPC Gallery</a></li>
                <li class="activetab"><a href="#tab5" class="tablinks">Convergence Gallery</a></li>
                <%--<li><a href="">Event Gallery</a></li>--%>
                <li><a href="#tab2">GITEX Gallery</a></li>
                <li><a href="#tab3">JITS Gallery</a></li>
                <li><a href="#tab4">Engineering Expo Gallery</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <div class="gallery">
                        <h1>
                            WPC Gallery</h1>
                        <br />
                        <h4 style="border: none; color: Teal">
                            DAY 1<div class="float_right">
                                <b>2012</b></div>
                        </h2>
                        <ul class="photos">
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_1.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_1_small.jpg" alt="wpc 2012"/>
                            </a></li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_2.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_2_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_3.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_3_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_4.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_4_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_5.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_5_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_6.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_6_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_7.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_7_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/wpc_2012_8.jpg" rel="clearbox[gallery=wpc2012]">
                                <img src="Images/Gallery/WPC2012/wpc_2012_8_small.jpg" alt="wpc 2012"/></a> </li>
                        </ul>
                        <h4 style="border: none; color: Teal">
                            <div class="float_left">
                                <b>DAY 2</b></div>
                        </h2>
                        <ul class="photos">
                            <li><a href="Images/Gallery/WPC2012/day2/wpc_2012_day2_1.jpg" rel="clearbox[gallery=wpc2012_day2]">
                                <img src="Images/Gallery/WPC2012/day2/wpc_2012_day2_1_small.jpg" alt="wpc 2012"/>
                            </a></li>
                            <li><a href="Images/Gallery/WPC2012/day2/wpc_2012_day2_2.jpg" rel="clearbox[gallery=wpc2012_day2]">
                                <img src="Images/Gallery/WPC2012/day2/wpc_2012_day2_2_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day2/wpc_2012_day2_3.jpg" rel="clearbox[gallery=wpc2012_day2]">
                                <img src="Images/Gallery/WPC2012/day2/wpc_2012_day2_3_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day2/wpc_2012_day2_4.jpg" rel="clearbox[gallery=wpc2012_day2]">
                                <img src="Images/Gallery/WPC2012/day2/wpc_2012_day2_4_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day2/wpc_2012_day2_5.jpg" rel="clearbox[gallery=wpc2012_day2]">
                                <img src="Images/Gallery/WPC2012/day2/wpc_2012_day2_5_small.jpg" alt="wpc 2012"/></a> </li>
                        </ul>
                        <h4 style="border: none; color: Teal">
                            <div class="float_left">
                                <b>DAY 3</b></div>
                        </h2>
                        <ul class="photos">
                            <li><a href="Images/Gallery/WPC2012/day3/wpc_2012_day3_1.jpg" rel="clearbox[gallery=wpc2012_day3]">
                                <img src="Images/Gallery/WPC2012/day3/wpc_2012_day3_1_small.jpg" alt="wpc 2012"/>
                            </a></li>
                            <li><a href="Images/Gallery/WPC2012/day3/wpc_2012_day3_2.jpg" rel="clearbox[gallery=wpc2012_day3]">
                                <img src="Images/Gallery/WPC2012/day3/wpc_2012_day3_2_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day3/wpc_2012_day3_3.jpg" rel="clearbox[gallery=wpc2012_day3]">
                                <img src="Images/Gallery/WPC2012/day3/wpc_2012_day3_3_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day3/wpc_2012_day3_4.jpg" rel="clearbox[gallery=wpc2012_day3]">
                                <img src="Images/Gallery/WPC2012/day3/wpc_2012_day3_4_small.jpg" alt="wpc 2012"/></a> </li>
                        </ul>
                        <h4 style="border: none; color: Teal">
                            <div class="float_left">
                                <b>DAY 4</b></div>
                        </h2>
                        <ul class="photos">
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_1.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_1_small.jpg" alt="wpc 2012"/>
                            </a></li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_2.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_2_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_3.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_3_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_4.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_4_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_5.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_5_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_6.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_6_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_7.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_7_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_8.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_8_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_9.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_9_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_10.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_10_small.jpg" alt="wpc 2012"/></a> </li>
                            <li><a href="Images/Gallery/WPC2012/day4/wpc_2012_day4_11.jpg" rel="clearbox[gallery=wpc2012_day4]">
                                <img src="Images/Gallery/WPC2012/day4/wpc_2012_day4_11_small.jpg" alt="wpc 2012"/></a> </li>
                        </ul>
                        <h2>&nbsp;
                            </h2>
                        <br />
                        <h4 style="border: none; color: Teal">
                            2011</h2>
                        <ul class="photos">
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_1.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_1_small.jpg" alt="wpc 2011"/>/>
                            </a></li>
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_2.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_2_small.jpg" alt="wpc 2011"/></a> </li>
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_3.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_3_small.jpg" alt="wpc 2011"/></a> </li>
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_4.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_4_small.jpg" alt="wpc 2011"/></a> </li>
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_5.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_5_small.jpg" alt="wpc 2011"/></a> </li>
                            <li><a href="Images/Gallery/WPC2011/wpc_2011_6.jpg" rel="clearbox[gallery=wpc2011]">
                                <img src="Images/Gallery/WPC2011/wpc_2011_6_small.jpg" alt="wpc 2011"/></a> </li>
                        </ul>
                    </div>
                </div>
                <div id="tab2" class="tab_content">
                    <div class="gallery">
                        <h1>
                            Gitex Gallery</h1>
                        <ul class="photos">
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex1.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex1_small.jpg" alt="gitex"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex2.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex2_small.jpg" alt="gitex"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex4.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex4_small.jpg" alt="gitex"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex5.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex5_small.jpg" alt="gitex"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex6.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex6_small.jpg" alt="gitex"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Gitex-Gallery/Gitex7.jpg" rel="clearbox[gallery=Gitex]"><img src="Images/Gallery/Gitex-Gallery/Gitex7_small.jpg" alt="gitex"/></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="tab3" class="tab_content">
                    <div class="gallery">
                        <h1>
                            Jits Gallery</h1>
                        <ul class="photos">
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_1.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_1_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_2.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_2_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_3.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_3_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_4.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_4_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_5.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_5_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_6.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_6_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_7.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_7_small.jpg" alt="Jits"/></a>
                            </li>
                            <li>
                                <a href="Images/Gallery/Jits-Gallery/jits_8.jpg" rel="clearbox[gallery=Jits]"><img src="Images/Gallery/Jits-Gallery/jits_8_small.jpg" alt="Jits"/></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="tab4" class="tab_content">
                    <div class="gallery">
                        <h1>
                            Engineering Expo Gallery</h1>
                        <ul class="photos">
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo1.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo1_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo10.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo10_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo2.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo2_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo3.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo3_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo4.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo4_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo5.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo5_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo6.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo6_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo7.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo7_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo8.jpg" rel="clearbox[gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo8_small.jpg" alt="engineering expo"/></a> </li>
                            <li><a href="Images/Gallery/Engineering/EngineeringExpo9.jpg" rel="clearbox[gallery=gallery=engineering]">
                                <img src="Images/Gallery/Engineering/EngineeringExpo9_small.jpg" alt="engineering expo"/></a> </li>
                        </ul>
                    </div>
                </div>
                <div id="tab5" class="tab_content">
                    <div class="gallery">
                        <h1>
                            Convergence 2012</h1>  
                        <ul class="photos">
                            <li><a href="Images/Gallery/Convergence/convergence1.jpg" rel="clearbox[gallery=convergence]">
                                <img src="Images/Gallery/Convergence/convergence_small.jpg" alt="convergence"/>
                            </a></li>
                            <li><a href="Images/Gallery/Convergence/convergence2.jpg" rel="clearbox[gallery=convergence]">
                                <img src="Images/Gallery/Convergence/convergence2_small.jpg" alt="convergence"/>
                            </a></li>
                            <li><a href="Images/Gallery/Convergence/convergence3.jpg" rel="clearbox[gallery=convergence]">
                                <img src="Images/Gallery/Convergence/convergence3_small.jpg" alt="convergence"/>
                            </a></li>
                            <li><a href="Images/Gallery/Convergence/convergence4.jpg" rel="clearbox[gallery=convergence]">
                                <img src="Images/Gallery/Convergence/convergence4_small.jpg" alt="convergence"/>
                            </a></li>
                            <li><a href="Images/Gallery/Convergence/convergence5.jpg" rel="clearbox[gallery=convergence]">
                                <img src="Images/Gallery/Convergence/convergence5_small.jpg" alt="convergence"/>
                            </a></li>
                        </ul>                      
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
