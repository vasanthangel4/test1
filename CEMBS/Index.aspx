<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Debug="true"
    Inherits="Index" %>

<%@ Register TagPrefix="uhead" TagName="userhead" Src="~/UserControls/header.ascx" %>
<%@ Register TagPrefix="footer" TagName="cem_footer" Src="~/UserControls/footer.ascx" %>
<%@ Register TagName="extended" TagPrefix="menu" Src="~/UserControls/ExtendedMenu.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CEM Business Solutions</title>
    <meta name="description" content="CEM has been implementing Microsoft Dynamics ERP and CRM since the last 10 years. We service customers in 19 industries which include projects, construction, oil and gas, retail, manufacturing and distribution & logistics.  " />
    <meta name="keywords" content="cem, cembs, crm, erp, microsoft dynamics, customer relationship management, erp software, erp system, navision, crm software, enterprise resource planning, microsoft dynamics crm, microsoft crm" />
    <meta name="robots" content="index, follow" />
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <link rel="icon" href="Images/titlelogo.png" type="image/png" />
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
    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script type="text/javascript" src="Scripts/jquery.min.js"></script>


</head>
<body class="size-980">
    <div class="wrap">
        <div id="fb-root">
        </div>
        <script type="text/javascript">            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                js.async = "true";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));</script>
        <!-- Customize -->
        <!-- HEADER -->
        <header>
            <uhead:userhead ID="cemheader" runat="server" />
            <form runat="server">
                <menu:extended ID="extended" runat="server" />
            </form>      
            <!-- Banner Section -->        
        </header>
        <section>
    	    <div class="line">
        	    <div class="slider">
			        <div class="flexslider home">
				<ul class="slides">				
					<li><a href="Construction-Management-Software.aspx"><img src="images/v3/slide-ban-construct.jpg" width="981" height="370" alt="" /></a></li>	
                    <li><a href="Payroll-Software.aspx"><img src="images/v3/slide-ban-payroll.jpg" width="981" height="370" alt="" /></a></li>				
                    <li><a href="Microsoft-Dynamics-RMS.aspx"><img src="images/v3/slide-ban-retail.jpg" width="981" height="370" alt="" /></a></li>
                    <%--<li><a href="News#QatarImplementations"><img src="images/v3/slide-ban-qatar.jpg" width="981" height="370" alt="" /></a></li>--%>
                    <!--<li><img src="images/v3/slider-img-02.jpg" alt="" /></li>
                    <li><img src="images/v3/slider-img-04.jpg" alt="" /></li>
                    <li><img src="images/v3/slider-img-05.jpg" alt="" /></li>-->
				</ul>
			</div>
                </div>
    		    <!--<div class="slider"><img src="images/v3/slider.jpg"></div> -->       
        	    <div class="news-ticker-sec">
            	    <div class="tic_lef">CEM Accomplishments</div>
                    <div class="tic_rig">
                        <ul id="ticker01">
                            <li><span><a href="News#QatarImplementations"><span style="vertical-align: bottom; line-height: 15px;">*</span> Successful projects <span style="vertical-align: bottom; line-height: 13px;">*</span></a></span></li>
                            <li><span><a href="News#cfmd" target="_blank"><span style="vertical-align: bottom; line-height: 15px;">*</span> CEM Earns CfMD Certification <span style="vertical-align: bottom; line-height: 13px;">*</span></a></span></li>
                         </ul>
                    </div>
	            </div>
                <div class="clear"></div>
                <div class="flip_section">
           	<div class="tab_mcon">
            	<h1>CEM AX Construct</h1>
        		<div class="tab_sec">
					<img width="189" height="161" src="images/v3/flip-01.jpg">
					<div class="con">Designed to meet the ERP needs of construction companies, sub-contracting and general contracting companies using Microsoft Dynamics AX.</div>
					<div class="btn"><a href="Construction-Management-Software.aspx">More</a></div>
				</div>
             </div>
             <div class="tab_mcon">
            	<h1>CEM AX HCM</h1>
        		<div class="tab_sec">
					<img width="189" height="161" src="images/v3/flip-02.jpg">
					<div class="con">Integrates seamlessly with AX 2012 to automate much of the HR process and provides tools for finding, developing, motivating and managing talent strategically.</div>
					<div class="btn"><a href="Human-Capital-Management.aspx">More</a></div>
				</div>
             </div>
             
             <div class="tab_mcon">
            	<h1>CEM AX Payroll</h1>
        		<div class="tab_sec">
					<img width="189" height="161" src="images/v3/flip-04.jpg">
					<div class="con">CfMD certified to manage the complete payroll process. Monitors performance and deploys personnel resources strategically across the organization via AX 2012.</div>
					<div class="btn"><a href="Payroll-Software.aspx">More</a></div>
				</div>
             </div>
             <div class="tab_mcon">
            	<h1>CEM AX ProjectPro</h1>
        		<div class="tab_sec">
					<img width="189" height="161" src="images/v3/flip-05.jpg">
					<div class="con">Rides on top of AX 2012 to help deliver projects on-time and on-budget. Integrates project data into modules for fixed assets, inventory, budget validation and more.</div>
					<div class="btn"><a href="Construction-Project-Management-Software.aspx">More</a></div>
				</div>
             </div>
             <div class="tab_mcon_la">
            	<h1>CEM AX Retail</h1>
        		<div class="tab_sec">
					<img width="189" height="161" src="images/v3/flip-03.jpg">
					<div class="con">A powerful, end-to-end AX2012 ERP solution for mid-sized and enterprise retailers. Supports point-of-sale, store management, merchandising and more.</div>
					<div class="btn"><a href="Microsoft-Dynamics-RMS.aspx">More</a></div>
				</div>
             </div>
            </div>            
                <div id="smart_tab_section">
                    <div class="firsttab"><ul id="tabs">
      <li><a href="#" name="#tab1">Blogs</a></li>
      <li><a href="#" name="#tab2">Latest News</a></li>
      <li><a href="#" name="#tab3">Client Testimonials</a></li>
      <li><a href="#" name="#tab4">Demo Video</a></li>    
  </ul>

  <div id="content">
      <div id="tab1">
      	<ul id="vertical-ticker">
          <li><div class="blog_cont">
          <h2>
How to squeeze more life out of your AX 2009 solution.</h2>
          <div class="blog_cont_s">
            <p>There’s a lot of buzz these days about the upcoming R3 Upgrade for AX. And deservedly so. For those ready to upgrade, they’ll see enhanced mobile capabilities, as well as improvements in e-procurement, budget planning, warehouse management, retail, and much more with the release of R3.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/blog/post/How-to-squeeze-more-life-out-of-your-AX-2009-solution.aspx" target="_blank">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Is your Ready Mix Concrete (RMC) a leaky bucket?</h2>
          <div class="blog_cont_s">
            <p>Most contractors are paying too much for their concrete. Ready Mix Concrete (RMC) poses a completely unique set of problems for most general contractors. First, there’s the matter of reconciling blanket purchase orders against partial deliveries.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/blog/post/Is-your-Ready-Mix-Concrete-%28RMC%29-a-leaky-bucket.aspx" target="_blank">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>What is CfMD*? And why should I care?</h2>
          <div class="blog_cont_s">
            <p>Don’t expect every ERP solution to work for every business, right out-of-the-box. ERP solutions are by nature, huge, complex systems designed to integrate all the intricate process previously handled by specialty software packages. So, where a business once had an accounting package, and customer contact software</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/blog/post/What-is-CfMD-And-why-should-I-care.aspx" target="_blank">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>The new AX 2012 R3 reality – are you ready??</h2>
          <div class="blog_cont_s">
            <p>Hyped after by many, at last here it is – the online launch of Microsoft Dynamics AX 2012 R3! Promisingly befitting and packed with an array of functionalities, Microsoft has scheduled to take-off the webinar of Dynamics AX 2012 R3 on April 10, 2014.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/blog/post/2014/04/07/the-new-ax-2012-r3-reality-are-you-ready" target="_blank">[Read More]</a></p>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0"></a> <a href="#" id="ticker-previous"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0"></a> <!--/ <a id="stop" href="#">Stop</a> / <a id="start" href="#">Start</a>--></p></div>
        
        
      </div>
      <div id="tab2">
          <ul id="vertical-ticker2">
           <li><div class="blog_cont">
          <h2>CEM Business Solutions on a success mission in Qatar</h2>
          <div class="blog_cont_s">
            <p>Just one year after being launched in the Qatar market, CEM has managed to complete three successful implementations and is now gearing up to complete a few more. The recently completed implementations were for QSL (Qatar Sports League)</p>
          </div>
          <p class="link_t"><a href="News#QatarImplementations">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Our new decennium! </h2>
          <div class="blog_cont_s">
            <p>A decade of unbelievable laurels, innovation, collaboration, and amazing discoveries…
Two keywords that flash into our mind when thinking about CEM are diligence and consistency! Having carved out a special place for itself in this competitive software sphere</p>
          </div>
          <p class="link_t"><a href="News#decennium">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>CEM Earns CfMD Certification</h2>
          <div class="blog_cont_s">
            <p>CEM AX Payroll is now Certified for Microsoft Dynamics (CfMD), which signifies that the solution has met Microsoft Corp.’s highest standard for partner-developed software by successfully meeting all certification requirements.</p>
          </div>
          <p class="link_t"><a href="News#cfmd">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Microsoft Dynamics AX Council Program</h2>
          <div class="blog_cont_s">
            <p>Elated is the entire CEM family to share with you all that CEM has been accepted into the Microsoft Dynamics AX Council Program! This is a proven indication that month-by-month CEM is achieving and chiseling its own identity in this competitive market.</p>
          </div>
          <p class="link_t"><a href="News#axcouncil">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Microsoft Tech Updates</h2>
          <div class="blog_cont_s">
            <p>SharePoint as an ECM solution: Forester rates Microsoft a “Strong Performer”:
Forrester's latest assessment of Enterprise Content Management (ECM) vendors paints a picture of a rapidly changing landscape that's being driven both by vendor innovations and user needs.</p>
          </div>
          <p class="link_t"><a href="News#techupdates">[Read More]</a></p>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next2"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0"></a> <a href="#" id="ticker-previous2"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0"></a> <!--/ <a id="stop2" href="#">Stop</a> / <a id="start2" href="#">Start</a>--></p></div> 
      </div>
      <div id="tab3">
          <ul id="vertical-ticker3">
          <li>
            <div class="blog_cont">
              <h2>DR.R.Durgadoss, <span class="h2span">Bhatia Traders</span></h2>
              <div class="blog_cont_s">
                <p>“I want to take a moment and personally thank CEM Business Solutions for their hard work and efforts for implementing Microsoft Dynamics GP &amp; RMS. We were looking for a suitable business management software...."</p>
              </div>
              <p class="link_t"><a href="Customers#durgadoss">[Read More]</a></p>
            </div>
          </li>
          <li><div class="blog_cont">
          <h2>Mr.Prajosh Karunakaran, <span class="h2span">Ghanim bin Saad Al Saad & Sons Group Holdings L.L.C</span></h2>
          <div class="blog_cont_s">
            <p>"With the help of CEM Support, today we have got all our companies under Microsoft Dynamics GP. Our investors are extremely happy with the timely reports and analysis that GP can provide..."</p>
          </div>
          <p class="link_t"><a href="Customers#prajosh">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Mr.Irfan Dhankot, <span class="h2span">APL Managment JLT</span></h2>
          <div class="blog_cont_s">
            <p>"CEM had a pool of consultants and developers available locally with experience in the Aviation, Projects and Construction Industry, defined our project needs and goals to streamline the deployment process as much as possible."</p>
          </div>
          <p class="link_t"><a href="Customers#irfan">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Mr. Roy Nasr, <span class="h2span">Abela & Co</span></h2>
          <div class="blog_cont_s">
            <p>"“CEM Business Solutions and we’ve put in place an integrated solution that will help us to achieve our long-term strategic growth plans. Microsoft Dynamics GP has given us the tools to approach every......." </p>
          </div>
          <p class="link_t"><a href="Customers#roy">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Mr. Raymond J Paganini, <span class="h2span">Cornerstone IT. United Sates of America</span></h2>
          <div class="blog_cont_s">
            <p>"CEM is a very knowledgeable, trustworthy and flexible partner. They were very meticulous and well planned in the execution of the project. They went above and beyond to accomplish the objectives of this demanding project."</p>
          </div>
          <p class="link_t"><a href="Customers#raymond">[Read More]</a></p>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next3"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0" /></a> <a href="#" id="ticker-previous3"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0" /></a> <!--/ <a id="stop3" href="#">Stop</a> / <a id="start3" href="#">Start</a>--></p></div>
      </div>
      <div id="tab4">
          <div><a href="https://www.youtube.com/watch?v=y4SliGO4e5I&list=PLdmEYgLsa8gq56TUfAnZLdrAUFXN2F7ZK" target="_blank"><img src="Images/v3/youtube.jpg" alt="youtube" height="238" width="458" /></a></div>   
      </div>
  </div></div>
                    <div class="lasttab">
  <ul id="tabs2">
      <li><a href="#" name="#tab21">Case Studies</a></li>
      <li><a href="#" name="#tab22">Presentations</a></li>
      <li><a href="#" name="#tab23">Brochures</a></li>
      <li><a href="#" name="#tab24">Social</a></li>    
  </ul>
  <div id="content2">
      <div id="tab21">
        
        <ul id="vertical-ticker4">
        <li><div class="blog_cont">
          <h2>SiGED Emirates</h2>
          <div class="blog_cont_s">
            <p>As a leading mechanical engineering contractor, SiGED Emirates specializes in the
                        design, manufacture, installation and maintenance of steel structures and industrial
                        piping in the oil and gas sector. </p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#siged">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Control & Applications Technology Solutions LLC (CATS)</h2>
          <div class="blog_cont_s">
            <p>Control & Applications Technology Solutions LLC (CATS) is a specialized supplier, installation and maintenance company. It delivers solutions and services to its clients in different industries such as metals and mining, oil and gas, as well as the power and water industries in the Middle East.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#cats">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Radio Holland</h2>
          <div class="blog_cont_s">
            <p>Radio Holland is the leading Quality Provider of Navigation / Communication Electronics and Services to the Maritime, Oil & Gas and Land Communications Industries with 25 years of operations. </p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#radio-holland">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Swan enterprises pvt ltd</h2>
          <div class="blog_cont_s">
            <p>Swan Enterprises was established in 1969 in Bombay, with the purpose of carrying out import substitution activity for refineries, petrochemicals and fertilizers. In the span of 5 years a lot of items were developed like trays, hexmesh, orifice plates, thermowells etc.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#swan">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>Worldwide Oilfield Machine M.E</h2>
          <div class="blog_cont_s">
            <p>Worldwide Oilfield Machine (WOM) is a globally recognized multinational company that was established in 1980 with its headquarters based in Houston, Texas with over 2,500 employees, WOM group of companies is strategically located worldwide with manufacturing facilities,</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#worldwide-oilfield">[Read More]</a></p>
        </div></li>
          <li><div class="blog_cont">
          <h2>APL Management JLT</h2>
          <div class="blog_cont_s">
            <p>APL Management APL Management is a group of three companies, Aerovista, Noble Design Solutions, APL management. The business of Aerovista is to offer expert wet lease and charter solutions as well as related ancillary services to clients in fast-growing, emerging markets.</p>
          </div>
          <p class="link_t"><a href="http://www.cembs.com/Download-CaseStudies#APL">[Read More]</a></p>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next4"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0"></a> <a href="#" id="ticker-previous4"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0"></a> <!--/ <a id="stop4" href="#">Stop</a> / <a id="start4" href="#">Start</a>--></p></div>
            
      </div>
      <div id="tab22">
          <ul id="vertical-ticker5">
          <li style="height:auto;">
          
          <div class="blog_cont" style="height:140px;">
            <div style="float:left;"><img src="Images/v3/corporate_thumb.jpg" width="209" height="132" alt="corporate" /></div>
            <div style="float:left;"><h2>CEM Corporate Profile</h2>
          <%--<div class="blog_cont_s">
          </div>--%>
          <p class="link_t"><a href="http://cembs.com/Download-Presentations#profile" target="_blank">[Read More]</a></p></div>
          
            
        </div></li>
          <li style="height:auto;">
          <div class="blog_cont" style="height:140px;">
          <div style="float:left;"><img src="Images/v3/construct_thumb.jpg" width="209" height="132" alt="corporate" /></div>
          <div style="float:left;">
          <h2>Construct</h2>
          <p class="link_t"><a href="http://cembs.com/Download-Presentations#construct" target="_blank">[Read More]</a></p>
          </div>
        </div></li>
          <li style="height:auto;"><div class="blog_cont" style="height:140px;">
          <div style="float:left;"><img src="Images/v3/hcm_thumb.jpg" width="209" height="132" alt="corporate" /></div>
          <h2>Human Capital Management</h2>
          <div style="float:left;">
          <p class="link_t"><a href="http://cembs.com/Download-Presentations#hcm" target="_blank">[Read More]</a></p>
          </div>
        </div></li>
          <li style="height:auto;"><div class="blog_cont" style="height:140px;">
          <div style="float:left;"><img src="Images/v3/projectpro_thumb.jpg" width="209" height="132" alt="corporate" /></div>
          <h2>Project Pro</h2>
          <div style="float:left;">
          <p class="link_t"><a href="http://cembs.com/Download-Presentations#projectpro" target="_blank">[Read More]</a></p>
          </div>
        </div></li>
          <li style="height:auto;"><div class="blog_cont" style="height:140px;">
          <div style="float:left;"><img src="Images/v3/retail_thumb.jpg" width="209" height="132" alt="corporate" /></div>
          <div style="float:left;">
          <h2>AX Retail Plus</h2>
          <p class="link_t"><a href="http://cembs.com/Download-Presentations#retail" target="_blank">[Read More]</a></p>
          </div>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next5"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0"></a> <a href="#" id="ticker-previous5"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0"></a> <!--/ <a id="stop5" href="#">Stop</a> / <a id="start5" href="#">Start</a>--></p></div> 
      </div>
      <div id="tab23">
          <ul id="vertical-ticker6">
            <li>
                <div class="blog_cont">
                    <h2>CEM AX Payroll</h2>
                    <div class="blog_cont_s">
                        <p>The payroll management becomes easier with your CEM’s AX Payroll. The integrated payroll module is the tailor made for organizations to manage the payroll in-house and provides you a complete control and visibility for your payroll process.</p>
                    </div>
                    <p class="link_t"><a href="Download-Brochures#payroll">[Read More]</a></p>
                </div>
            </li>
            <li>
                <div class="blog_cont">
                    <h2>CEM AX Payroll - United States</h2>
                      <div class="blog_cont_s">
                        <p>The payroll management becomes easier with your CEM’s AX Payroll. The integrated payroll module is the tailor made for organizations to manage the payroll in-house and provides you a complete control and visibility for your payroll process.</p>
                      </div>
                    <p class="link_t"><a href="Download-Brochures#payroll-us">[Read More]</a></p>
                </div>
            </li>
            <li>
                <div class="blog_cont">
                    <h2>CEM AX Retail Plus</h2>
                    <div class="blog_cont_s">
                        <p>CEM AX for Retail is a powerful end-to-end retail solution that delivers vision for both midsize and enterprise specialty retailers through real-time visibility to critical data and complete central control of all critical activity at the retail stores.</p>
                    </div>
                    <p class="link_t"><a href="Download-Brochures#retail">[Read More]</a></p>
                </div>
            </li>
            <li>
                <div class="blog_cont">
                    <h2>CEM AX Construct</h2>
                    <div class="blog_cont_s">
                        <p>CEM AX Construct - an industry centric ready-made ERP solution that integrates seamlessly into various functional processes of a construction company.</p>
                    </div>
                    <p class="link_t"><a href="Download-Brochures#construct">[Read More]</a></p>
                </div>
            </li>          
          <li><div class="blog_cont">
          <h2>CEM AX HCM</h2>
          <div class="blog_cont_s">
            <p>CEM’s AX HCM acts as a frontline solution for all these challenges as well as changes and ensures that your organization has the talent you need to drive your business.</p>
          </div>
          <p class="link_t"><a href="Download-Brochures#hcm">[Read More]</a></p>
        </div></li>
          </ul>
         <div style="float:right"> <p><a href="#" id="ticker-next6"><img src="images/v3/tick-next.gif" width="22" height="22" alt="Next" border="0"></a> <a href="#" id="ticker-previous6"><img src="images/v3/tick-pre.gif" width="22" height="22" alt="Previous" border="0"></a> <!--/ <a id="stop6" href="#">Stop</a> / <a id="start6" href="#">Start</a>--></p></div>
      </div>
      <div id="tab24">
      <div class="fb-like-box" data-href="https://www.facebook.com/cembs" data-width="460" data-height="240" data-show-border="false" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="true" data-show-border="true"></div>
          <%--<div class="fb-activity" data-site="cembs.com" data-action="likes, recommends" data-width="460" data-height="210" data-colorscheme="light" data-header="true"></div>--%>
      </div>
  </div>
 </div>
                </div>
                <div class="miceleneaus_sec">
            	    <div class="tab_mcon">
           	    <img src="images/v3/micel-01.jpg" width="241" height="147" />
                
                <div class="con"><h1>About CEM</h1>
                <ul>
                	<li><a href="Global.aspx">Global Installations</a></li>
                    <li><a href="Customers.aspx">Customers</a></li>
                    <li><a href="OurAwards.aspx">Awards</a></li>
                    <li><a href="Geo.aspx">Geographies</a></li>
                    <li><a href="CFMD.aspx">CFMD</a></li>
                </ul>
                </div>
                <div class="btn"><a href="About-CEM.aspx">[More]</a></div>
                </div>
                    <div class="tab_mcon">
           	    <img src="images/v3/micel-02.jpg" width="241" height="147" />
                <div class="con"><h1>Services</h1>
                <ul>
                	<li><a href="Implementation-Services.aspx">ERP & CRM implementation</a></li>
                    <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                    <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                    <li><a href="Outsourcing.aspx">Outsourcing</a></li>
                    <li><a href="Optimization.aspx">Optimization</a></li>
                </ul>
                </div>
                <div class="btn"><a href="Implementation-Services.aspx">[More]</a></div>
                </div>
                    <div class="tab_mcon">
           	    <img src="images/v3/micel-03.jpg" width="241" height="147" />
                <div class="con"><h1>Industries</h1>
                <ul>
                	<li><a href="Construction-Management.aspx">Construction</a></li>
                    <li><a href="ProfessionalServices.aspx">Professional services</a></li>
                    <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                    <li><a href="Retail-Management.aspx">Retail</a></li>
                    <li><a href="ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                </ul>
                </div>
                <div class="btn"><a href="Industries.aspx">[More]</a></div>
                </div>      
                    <div class="tab_mcon_la">
           	    <img src="images/v3/micel-04.jpg" width="241" height="147" />
                <div class="con"><h1>Careers</h1>
                <ul>
                	<li><a href="Careers/JD.aspx?jobid=1" target="_blank">Senior AX Consultant - Chennai</a></li>
                    <li><a href="Careers/JD.aspx?jobid=15" target="_blank">Senior Content Writer - Chennai</a></li>
                    <li><a href="Careers/JD.aspx?jobid=13" target="_blank">Sales Executive - Dubai</a></li>
                    <li><a href="Careers/JD.aspx?jobid=14" target="_blank">Marketing Executive - Chennai</a></li>
                    <li><a href="Careers/JD.aspx?jobid=2" target="_blank">AX Functional Consultant - Chennai</a></li>
                </ul>
                </div>
                <div class="btn"><a href="Careers/">[More]</a></div>
                </div>
                </div>
            </div>
        </section>
        <footer:cem_footer ID="footer" runat="server" />
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/v3/flexslider.min.js"></script>
    <script type="text/javascript" src="Scripts/v3/jquery.li-scroller.1.0.js"></script>
    <script type="text/javascript" src="Scripts/v3/jquery.feedback_me.js"></script>
    <script type="text/javascript" src="Scripts/v3/jquery.totemticker.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			 $("ul#ticker01").liScroll();
			$('#vertical-ticker').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next',
				previous	:	'#ticker-previous',
				stop		:	'#stop',
				start		:	'#start',
				mousestop	:	true,
			});
			$('#vertical-ticker2').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next2',
				previous	:	'#ticker-previous2',
				stop		:	'#stop2',
				start		:	'#start2',
				mousestop	:	true,
			});
			$('#vertical-ticker3').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next3',
				previous	:	'#ticker-previous3',
				stop		:	'#stop3',
				start		:	'#start3',
				mousestop	:	true,
			});
			$('#vertical-ticker4').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next4',
				previous	:	'#ticker-previous4',
				stop		:	'#stop4',
				start		:	'#start4',
				mousestop	:	true,
			});
			$('#vertical-ticker5').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next5',
				previous	:	'#ticker-previous5',
				stop		:	'#stop5',
				start		:	'#start5',
				mousestop	:	true,
			});
			$('#vertical-ticker6').totemticker({
				row_height	:	'115px',
				next		:	'#ticker-next6',
				previous	:	'#ticker-previous6',
				stop		:	'#stop6',
				start		:	'#start6',
				mousestop	:	true,
			});
        //$("ul#ticker02").liScroll({travelocity: 0.15});
    });

    fm_options = {
        position: "left-bottom",
        name_required: true,
        /*name_placeholder:"please enter your name",
        email_placeholder:"please enter your work email",
        phone_placeholder:"please enter your work phone",*/
        message_placeholder: "Go ahead, include all the details you can...",
        message_required: true,
        phone_required: true,
        show_asterisk_for_required: true//,
        //feedback_url: "send_feedback_clean",
        //custom_params: {
        //csrf: "my_secret_token",
        //user_id: "john_doe",
        //feedback_type: "clean"
        //}
    };
    //init feedback_me plugin
    fm.init(fm_options);

    $(window).scroll(function () { if ($(window).scrollTop() > 200) { $('.scrollup').fadeIn(); } else { $('.scrollup').fadeOut(); } }); $('.scrollup').click(function () { $("html, body").animate({ scrollTop: 0 }, 600); return false; });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#m_home').addClass('bluebg');
            $('#footer').hide();
            $('.sitemapdiv').css('display', 'none');
        });
        function resetTabs() {
            $("#content > div").hide(); //Hide all content
            $("#tabs a").attr("id", ""); //Reset id's    
        }

        function resetTabs2() {
            $("#content2 > div").hide();
            $("#tabs2 a").attr("id", "");
        }


        var myUrl = window.location.href; //get URL
        var myUrlTab = myUrl.substring(myUrl.indexOf("#")); // For localhost/tabs.html#tab2, myUrlTab = #tab2     
        var myUrlTabName = myUrlTab.substring(0, 4); // For the above example, myUrlTabName = #tab

        var myUrl2 = window.location.href; //get URL
        var myUrlTab2 = myUrl2.substring(myUrl2.indexOf("#")); // For localhost/tabs.html#tab2, myUrlTab = #tab2     
        var myUrlTabName2 = myUrlTab2.substring(0, 4); // For the above example, myUrlTabName = #tab

        (function () {
            $("#content > div").hide(); // Initially hide all content
            $("#tabs li:first a").attr("id", "current"); // Activate first tab
            $("#content > div:first").fadeIn(); // Show first tab content

            $("#tabs a").on("click", function (e) {
                e.preventDefault();
                if ($(this).attr("id") == "current") { //detection for current tab
                    return
                }
                else {
                    resetTabs();
                    $(this).attr("id", "current"); // Activate this
                    $($(this).attr('name')).fadeIn(); // Show content for current tab
                }
            });

            for (i = 1; i <= $("#tabs li").length; i++) {
                if (myUrlTab == myUrlTabName + i) {
                    resetTabs();
                    $("a[name='" + myUrlTab + "']").attr("id", "current"); // Activate url tab
                    $(myUrlTab).fadeIn(); // Show url tab content        
                }
            }

            $("#content2 > div").hide(); // Initially hide all content
            $("#tabs2 li:first a").attr("id", "current"); // Activate first tab
            $("#content2 > div:first").fadeIn(); // Show first tab content

            $("#tabs2 a").on("click", function (e) {
                e.preventDefault();
                if ($(this).attr("id") == "current") { //detection for current tab
                    return
                }
                else {
                    resetTabs2();
                    $(this).attr("id", "current"); // Activate this
                    $($(this).attr('name')).fadeIn(); // Show content for current tab
                }
            });

            for (i = 1; i <= $("#tabs2 li").length; i++) {
                if (myUrlTab2 == myUrlTabName2 + i) {
                    resetTabs2();
                    $("a[name='" + myUrlTab2 + "']").attr("id", "current"); // Activate url tab
                    $(myUrlTab2).fadeIn(); // Show url tab content        
                }
            }
        })()
    </script>
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <script type="text/javascript">        stLight.options({ publisher: "5ff7f6c6-c278-4c6c-ad11-772b1fe01c40", doNotHash: false, doNotCopy: false, hashAddressBar: false });</script>
    <script src="clearbox.js" type="text/javascript"></script>    
</body>
</html>
