﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SampleV3.aspx.cs" Inherits="SampleV3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CEM Business Solutions</title><meta name="description" content="CEM has been implementing Microsoft Dynamics ERP and CRM since the last 10 years. We service customers in 19 industries which include projects, construction, oil and gas, retail, manufacturing and distribution & logistics.  " /><meta name="keywords" content="cem, cembs, crm, erp, microsoft dynamics, customer relationship management, erp software, erp system, navision, crm software, enterprise resource planning, microsoft dynamics crm, microsoft crm" /><meta name="robots" content="index, follow" /><meta http-equiv="Content-type" content="text/html;charset=UTF-8" /><link rel="icon" href="Images/titlelogo.png" type="image/png"/><link href="autocomplete_src/demos.css" rel="stylesheet" type="text/css"/><link href="autocomplete_src/jquery.ui.autocomplete.css" rel="stylesheet" type="text/css"/><link href="Styles/jquery.ui.accordion.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="Styles/v3/common-style.css" rel="stylesheet" type="text/css" />
<link href="Styles/v3/home-style.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="Styles/v3/jquery.feedback_me.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

</head>
<body class="size-980">
<div class="wrap">
	<!-- HEADER -->
	<header>
      <div class="line">
      <!-- TOP NAV Starts here-->
        <div class="top-nav">
			<div class="nav-container">
              <div>
              <label class="responsive_menu" for="responsive_menu">
              <span>&nbsp;</span>
              </label>
              <input id="responsive_menu" type="checkbox">
              <ul class="menu">
              <li><a href="#">Home</a></li>
              <li class="dropdown">
              <a href="Industries.aspx">Industries<!--ˇ--></a>
              <div class="columndrop">
                <div class="col">
                  <ul>
                  	<h5>&nbsp;</h5>
                    <li><a href="Construction-Management.aspx">Construction</a></li>
					<li><a href="Contract-Software.aspx">Contracting</a></li>
                    <li><a href="Project-Management-Software.aspx">Projects</a></li>
                    <li><a href="Retail-Management.aspx">Retail</a></li>
                    <li><a href="Oil-companies.aspx">Oil &amp; Gas</a></li>
                  </ul>
                </div>
                <div class="col">
                  <ul>
                  <h5>&nbsp;</h5>
                    <li><a href="Trading.aspx">Trading</a></li>
                    <li><a href="Logistics.aspx">Logistics / Distribution</a></li>
                    <li><a href="ProfessionalServices.aspx">Professional Services</a></li>
                    <li><a href="ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                    <li><a href="Group-Companies.aspx">Group Companies</a></li>
                  </ul>
                </div>
                
              </div>
              </li>
              <li class="dropdown"><a href="#">Dynamics Products</a>
                <ul>
                  <li><a href="Microsoft-Dynamics-AX.aspx">Dynamics AX</a></li>
                  <li><a href="Microsoft-Dynamics-Nav.aspx">Dynamics NAV</a></li>
                  <li><a href="Microsoft-Dynamics-GP.aspx">Dynamics GP</a></li>
                  <li><a href="Microsoft-Dynamics-SL.aspx">Dynamics SL</a></li>
                  <li><a href="Microsoft-Dynamics-CRM.aspx">Dynamics CRM</a></li>
                </ul>
              </li>
              <li class="dropdown">
              <a href="#">CEM Services</a>
              <div class="columndrop">
                <div class="col">
                  <ul>
                  	<h5>&nbsp;</h5>
                    <li><a href="Implementation-Services.aspx">ERP &amp; CRM Implementation</a></li>
                    <!--<li><a href="Manpower-Staffing.aspx">Manpower augmentation</a></li>-->
                    <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                    <li><a href="ERP-and-CRM-Support.aspx">ERP &amp; CRM Support</a></li>
                    <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>

                  </ul>
                </div>
                <div class="col">
                  <ul>
                  <h5>&nbsp;</h5>
                    <li><a href="Project-Management.aspx">Project Management</a></li>
                    <li><a href="Outsourcing.aspx">Outsourcing</a></li>
                    <li><a href="Product-Selection.aspx">Product Selection</a></li>
                    <li><a href="Optimization.aspx">Optimization</a></li>
                    <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud Services</a></li>-->
                  </ul>
                </div>
                
              </div>
              </li>
              <li class="dropdown"><a href="#">CEM Products</a>
                <ul>
                  <li><a href="Construction-Management-Software.aspx">CEM AX Construct</a></li>
                  <li><a href="Construction-Project-Management-Software.aspx">CEM AX ProjectPro</a></li>
                  <li><a href="Microsoft-Dynamics-RMS.aspx">CEM AX Retail</a></li>
                  <li><a href="Human-Capital-Management.aspx">CEM AX HCM</a></li>
                  <li><a href="Payroll-Software.aspx">CEM AX Payroll</a></li>
                </ul>
              </li>
              <li><a href="About-CEM.aspx">About CEM</a></li>
              <li><a href="Contactus.aspx">Contact Us</a></li>
          </ul> 
        </div>
      </div>
</div>
<!-- Logo Section -->
	<div class="logo-section">
    	<div class="cem_logo">
        	<a href="/"><img src="images/v3/logo.png" width="193" height="62" alt="CEM Business Solutions, ERP Consultant, MS Dynamics"/></a>
        </div>
        <div class="logo_rsec">
        	<img src="images/v3/microsoft_gold_partner.jpg" id="gold" width="120" height="56" alt="Gold partner" style="margin-right: 30px;" />
            <img src="images/v3/cfmd_logo.png" id="CFMD" width="123" height="64" alt="CFMD"/>
        </div>
    </div>
      </div>
      <!-- Banner Section -->
        
      
    </header>
    <section>
    	<div class="line">
        	<div class="slider">
			<div class="flexslider home">
				<ul class="slides">				
					<li><img src="images/v3/slide-ban-construct.jpg" alt="" /></li>					
                    <li><img src="images/v3/slide-ban-retail.jpg" alt="" /></li>
                    <li><img src="images/v3/slide-ban-payroll.jpg" alt="" /></li>
                    <!--<li><img src="images/v3/slider-img-02.jpg" alt="" /></li>
                    <li><img src="images/v3/slider-img-04.jpg" alt="" /></li>
                    <li><img src="images/v3/slider-img-05.jpg" alt="" /></li>-->
				</ul>
			</div></div>
    		<!--<div class="slider"><img src="images/v3/slider.jpg"></div> -->       
        	<div class="news-ticker-sec">
            	<div class="tic_lef">OUR Implementations</div>
                <div class="tic_rig">
                <ul id="ticker01">
                  <li><span>*Take our ERmP financial audit and win an iPad mini*</span></li>
                  <li><span>*AX 2012 is Microsoft Dynamics most powerful*</span></li>
                  <li><span>*CEM Human Capital Management is the most intuitive and modern suite of HCM and Payroll Management solution*</span></li>
                  <li><span>*CEM AX for Retail is a powerful end-to-end retail solution*</span></li>
                  <li><span>*The payroll manageme  becomes easier with your CEM AX Payroll. The integrated payroll module*</span></li>
                  <li><span>*Successful construction manage professionals*</span></li>
                  <li><span>*Take our ERmP financial audit and win an iPad mini*</span></li>
                  <li><span>*AX 2012 is Microsoft Dynamics most powerful*</span></li>
                  <li><span>*CEM Human Capital Management is the most intuitive and modern suite of HCM and Payroll Management solution*</span></li>
                  <li><span>*CEM AX for Retail is a powerful end-to-end retail solution*</span></li>
                  <li><span>*The payroll manageme  becomes easier with your CEM AX Payroll. The integrated payroll module*</span></li>
                  <li><span>*Successful construction manage professionals*</span></li>
                 </ul>

    <!-- eccetera -->
</ul></div>
	        </div>
            <div class="clear"></div>
        <div class="flip_section">
           	<div class="tab_mcon">
            	<h1>CEM AX Construct</h1>
        		<div class="tab_sec">
					<img src="images/v3/flip-01.jpg" />
					<div class="con">AX 2012 is Microsoft Dynamics most powerful, robust ERP platform to date and CEM AX Construct harnesses all this power with several custom add-ons tailored Industry.</div>
					<div class="btn"><a href="#">More</a></div>
				</div>
             </div>
             <div class="tab_mcon">
            	<h1>CEM AX HCM</h1>
        		<div class="tab_sec">
					<img src="images/v3/flip-02.jpg" />
					<div class="con">CEM's Human Capital Manage  is the most intuitive and modern suite of HCM and Payroll Management solution. It is integrated with Microsoft time meet...</div>
					<div class="btn"><a href="#">More</a></div>
				</div>
             </div>
             <div class="tab_mcon">
            	<h1>CEM AX Retail</h1>
        		<div class="tab_sec">
					<img src="images/v3/flip-03.jpg" />
					<div class="con">CEM AX for Retail is a powerful end-to-end retail solution that delivers vision for both midsize and enterprise specialty retailers through real-time visibility control...</div>
					<div class="btn"><a href="#">More</a></div>
				</div>
             </div>
             <div class="tab_mcon">
            	<h1>CEM AX Payroll</h1>
        		<div class="tab_sec">
					<img src="images/v3/flip-04.jpg" />
					<div class="con">The payroll manageme  becomes easier with your CEM's AX Payroll. The integrated payroll module is the tailor made for organizations to manage.</div>
					<div class="btn"><a href="#">More</a></div>
				</div>
             </div>
             <div class="tab_mcon_la">
            	<h1>CEM AX ProjectPro</h1>
        		<div class="tab_sec">
					<img src="images/v3/flip-05.jpg" />
					<div class="con">Successful construction manage professionals have a reputation for delivering projects on time and on budget. Contractors who invest in the right financial.</div>
					<div class="btn"><a href="#">More</a></div>
				</div>
             </div>
            </div>
            
            <div id="smart_tab_section">
  <div style="width:490px; float:left"><ul id="tabs">
      <li><a href="#" name="#tab1">Blogs</a></li>
      <li><a href="#" name="#tab2">Latest News</a></li>
      <li><a href="#" name="#tab3">Client Testimonials</a></li>
      <li><a href="#" name="#tab4">Video</a></li>    
  </ul>

  <div id="content">
      <div id="tab1">
        <div class="blog_cont">
          <h2>Lorem ipsum sit amet</h2>
          <div class="blog_cont_s">
            <p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam. Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. Mauris turpis tortor, mollis non vulputate sit amet, rhoncus vitae purus.</p>
          </div>
          <p class="link_t"><a href="#">[Read More]</a></p>
        </div>
        <div class="blog_cont">
          <h2>Lorem ipsum sit amet</h2>
          <div class="blog_cont_s">
            <p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam. Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. Mauris turpis tortor, mollis non vulputate sit amet, rhoncus vitae purus.</p>
          </div>
          <p class="link_t"><a href="#">[Read More]</a></p>
        </div>
            
      </div>
      <div id="tab2">
          <h2>Vivamus fringilla suscipit justo</h2>
          <p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id odio. Donec dictum gravida feugiat.</p>
          <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras pretium elit et erat condimentum et volutpat lorem vehicula</p>

          <p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut leo nec dolor tempor eleifend.</p>  
           <p class="link_t"><a href="#">[Read More]</a></p>  
      </div>
      <div id="tab3">
          <h2>Phasellus non nibh</h2>
          <p>Non erat laoreet ullamcorper. Pellentesque magna metus, feugiat eu elementum sit amet, cursus sed diam. Curabitur posuere porttitor lorem, eu malesuada tortor faucibus sed.</p>
          <h3>Duis pulvinar nibh vel urna</h3>
          <p>Donec purus leo, porttitor eu molestie quis, porttitor sit amet ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec accumsan ornare elit id imperdiet. </p>
          <p>Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. </p>
           <p class="link_t"><a href="#">[Read More]</a></p>
      </div>
      <div id="tab4">
          <h2>Cum sociis natoque penatibus</h2>
          <p>Magnis dis parturient montes, nascetur ridiculus mus. Nullam ac massa quis nisi porta mollis venenatis sit amet urna. Ut in mauris velit, sed bibendum turpis.</p>
          <p>Nam ornare vulputate risus, id volutpat elit porttitor non. In consequat nisi vel lectus dapibus sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent bibendum sagittis libero.</p>
          <h3>Imperdiet sem interdum nec</h3>
          <p>Mauris rhoncus tincidunt libero quis fringilla.</p>    
      </div>
  </div></div>
 <div style="width:490px; float:left">
  <ul id="tabs2">
      <li><a href="#" name="#tab21">Case Studies</a></li>
      <li><a href="#" name="#tab22">PResentation</a></li>
      <li><a href="#" name="#tab23">Brouchers</a></li>
      <li><a href="#" name="#tab24">Social</a></li>    
  </ul>
  <div id="content2">
      <div id="tab21">
        <div class="case_cont">
          <h2>Lorem ipsum sit amet</h2>
          <div class="case_cont_s">
            <p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam. Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. Mauris turpis tortor, mollis non vulputate sit amet, rhoncus vitae purus.</p>
          </div>
          <p class="link_t"><a href="#">[Read More]</a></p>
        </div>
        <div class="blog_cont">
          <h2>Lorem ipsum sit amet</h2>
          <div class="blog_cont_s">
            <p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam. Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. Mauris turpis tortor, mollis non vulputate sit amet, rhoncus vitae purus.</p>
          </div>
          <p class="link_t"><a href="#">[Read More]</a></p>
        </div>
            
      </div>
      <div id="tab22">
          <h2>Vivamus fringilla suscipit justo</h2>
          <p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id odio. Donec dictum gravida feugiat.</p>
          <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras pretium elit et erat condimentum et volutpat lorem vehicula</p>
          <p>Morbi tincidunt pharetra orci commodo molestie. Praesent ut leo nec dolor tempor eleifend.</p> 
          <p class="link_t"><a href="#">[Read More]</a></p>   
      </div>
      <div id="tab23">

          <h2>Phasellus non nibh</h2>
          <p>Non erat laoreet ullamcorper. Pellentesque magna metus, feugiat eu elementum sit amet, cursus sed diam. Curabitur posuere porttitor lorem, eu malesuada tortor faucibus sed.</p>
          <h3>Duis pulvinar nibh vel urna</h3>
          <p>Donec purus leo, porttitor eu molestie quis, porttitor sit amet ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec accumsan ornare elit id imperdiet. </p>
          <p>Suspendisse ac libero mauris. Cras lacinia porttitor urna, vitae molestie libero posuere et. </p>
          <p class="link_t"><a href="#">[Read More]</a></p>
      </div>
      <div id="tab24">
          <h2>Cum sociis natoque penatibus</h2>
          <p>Magnis dis parturient montes, nascetur ridiculus mus. Nullam ac massa quis nisi porta mollis venenatis sit amet urna. Ut in mauris velit, sed bibendum turpis.</p>
          <p>Nam ornare vulputate risus, id volutpat elit porttitor non. In consequat nisi vel lectus dapibus sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent bibendum sagittis libero.</p>
          <h3>Imperdiet sem interdum nec</h3>
          <p>Mauris rhoncus tincidunt libero quis fringilla.</p>  
          <p class="link_t"><a href="#">[Read More]</a></p>  
      </div>
  </div>
 </div>
 </div>
          <div class="miceleneaus_sec">
            	<div class="tab_mcon">
           	    <img src="images/v3/micel-01.jpg" />
                
                <div class="con"><h1>About CEM</h1>
                <ul>
                	<li><a href="#">Microsoft relationship</a></a></li>
                    <li><a href="#">Customers</a></li>
                    <li><a href="#">Our values</a></li>
                    <li><a href="#">Geographies</a></li>
                    <li><a href="#">CSR</a></li>
                    <li><a href="#">CFMD</a></li>
                </ul>
                </div>
                <div class="btn"><a href="#">[More]</a></div>
                </div>
      <div class="tab_mcon">
           	    <img src="images/v3/micel-02.jpg" />
                <div class="con"><h1>Services</h1>
                <ul>
                	<li><a href="#">ERP & CRM implementation</a></li>
                    <li><a href="#">Upgrade</a></li>
                    <li><a href="#">Migration</a></li>
                    <li><a href="#">Outsourcing</a></li>
                    <li><a href="#">Optimization</a></li>
                    <li><a href="#">Manpower augmentation</a></li>
                </ul>
                </div>
                <div class="btn"><a href="#">[More]</a></div>
                </div>
      <div class="tab_mcon">
           	    <img src="images/v3/micel-03.jpg" />
                <div class="con"><h1>Industries</h1>
                <ul>
                	<li><a href="#">Construction</a></li>
                    <li><a href="#">Professional services</a></li>
                    <li><a href="#">Migration</a></li>
                    <li><a href="#">Oil & Gas</a></li>
                    <li><a href="#">Retail</a></li>
                    <li><a href="#">Manufacturing</a></li>
                </ul>
                </div>
                <div class="btn"><a href="#">[More]</a></div>
                </div>
      
      <div class="tab_mcon_la">
           	    <img src="images/v3/micel-04.jpg" />
                <div class="con"><h1>Carrers</h1>
                <ul>
                	<li><a href="#">Senior AX Consultant - Chennai</a></li>
                    <li><a href="#">Senior Content Writer - Chennai</a></li>
                    <li><a href="#">CRM - Practice Manager - Dubai</a></li>
                    <li><a href="#">Sales Executive - Dubai</a></li>
                    <li><a href="#">Graphics Designer -Chennai</a></li>
                    <li><a href="#">Marketing Executive - Chennai</a></li>

                </ul>
                </div>
                <div class="btn"><a href="#">[More]</a></div>
                </div>
            </div>
        </div>
    </section>
    
    
    
	<footer id="footer">
    	<div class="container">
        	<div class="tab">
            	<h3>Industries</h3>
                <ul>
                  <li><a href="Construction-Management.aspx">Construction</a></li>
                  <li><a href="Contract-Software.aspx">Contracting</a></li>
                  <li><a href="Project-Management-Software.aspx">Projects</a></li>
                  <li><a href="ProfessionalServices.aspx">Professional services</a></li>
                  <li><a href="Oil-companies.aspx">Oil &amp; Gas</a></li>
                  <li><a href="Retail-Management.aspx">Retail</a></li>
                  <li><a href="Trading.aspx">Trading</a></li>
                  <li><a href="Logistics.aspx">Logistics / Distribution</a></li>
                  <li><a href="ERP-for-Manufacturing.aspx">Manufacturing</a></li>
                  <li><a href="Group-Companies.aspx">Group companies</a></li>
        		</ul>
            </div>
            <div class="tab">
            	<h3>Dynamic Products</h3>
                <ul>
                    <li><a href="Microsoft-Dynamics-AX.aspx">Microsoft Dynamics AX</a></li>
                    <li><a href="Microsoft-Dynamics-Nav.aspx">Microsoft Dynamics NAV</a></li>
                    <li><a href="Microsoft-Dynamics-GP.aspx">Microsoft Dynamics GP</a></li>
                    <li><a href="Microsoft-Dynamics-SL.aspx">Microsoft Dynamics SL</a></li>
                    <li><a href="Microsoft-Dynamics-CRM.aspx">Microsoft Dynamics CRM</a></li>
                </ul>
            </div>
            <div class="tab">
            	<h3>CEM Services</h3>
                <ul>
                    <li><a href="Implementation-Services.aspx">ERP &amp; CRM implementation</a></li>
                    <li><a href="Upgrading-Microsoft-Dynamics.aspx">Upgrade</a></li>
                    <li><a href="CRM-ERP-Migration-Services.aspx">Migration</a></li>
                    <li><a href="Outsourcing.aspx">Outsourcing</a></li>
                    <li><a href="Optimization.aspx">Optimization</a></li>
                    <!--<li><a href="Manpower-Staffing.aspx">Manpower augmentation</a></li>-->
                    <li><a href="ERP-and-CRM-Support.aspx">ERP &amp; CRM support</a></li>
                    <li><a href="Project-Management.aspx">Project management</a></li>
                    <li><a href="Product-Selection.aspx">Product selection</a></li>
                    <!--<li><a href="http://www.cemcloudservices.com" target="_blank">Cloud services</a></li>-->
                </ul>
            </div>
            <div class="tab">
            	<h3>CEM Products</h3>
                <ul>
                    <li><a href="Construction-Management-Software.aspx">CEM AX Construct</a></li>
                    <li><a href="Construction-Project-Management-Software.aspx">CEM AX Project Pro</a></li>
                    <li><a href="Microsoft-Dynamics-RMS.aspx">CEM AX Retail</a> </li>
                    <li><a href="Human-Capital-Management.aspx">CEM AX HCM</a> </li>
                    <li><a href="Payroll-Software.aspx">CEM AX Payroll</a> </li>
                </ul>
            </div>            
            <div class="tab">
            	<h3>About CEM</h3>
                <ul>
                    <li><a href="About-CEM.aspx">About CEM</a></li>
                    <li><a href="Customers.aspx">Customers </a></li>
                    <li><a href="Values.aspx">Our values</a></li>
                    <li><a href="Geo.aspx">Geographies</a></li>
                    <li><a href="CSR.aspx">CSR</a></li>
                    <li><a href="OurAwards.aspx">Awards</a></li>
                    <li><a href="Relationship.aspx">Microsoft relationship</a></li>
                    <li><a href="CFMD.aspx">CFMD</a></li>
                </ul>
            </div>
            <div class="tab">
            	<h3>Share this</h3>
                <div class="sharethis">
                    <span class='st_facebook_hcount' displaytext='Facebook'></span><span class='st_twitter_hcount'
                        displaytext='Tweet'></span><span class='st_linkedin_hcount' displaytext='LinkedIn'>
                    </span><span class='st_googleplus_hcount' displaytext='Google +'></span><span class='st_email_hcount'
                        displaytext='Email'></span>
                </div>
            </div>
        </div>
        
    </footer>
    <div id="sitemapfooter_div">
            <div class="sitemap">
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="Careers/">Jobs</a></li>
                    <li><a href="CEMSitemap.aspx">Sitemap</a></li>
                    <li><a rel="clearbox[width=800,,height=600]" href="PrivacyPolicy.aspx">Privacy Policy</a></li>
                    <li><a href="News.aspx">News</a></li>
                    <li><a href="blog/">Blog</a></li>
                </ul>
            </div>
    <div class="social">
        <div class="icons">
            <a href="http://www.facebook.com/cembs"
                id="facebook" target="_blank">
                <img src="images/v3/facebook.png" width="25" height="43" alt="Facebook" /></a></div>
        <div class="icons">
            <a href="https://plus.google.com/u/0/105840593372061158513/posts" id="google" target="_blank">
                <img src="images/v3/google.png" width="25" height="43" alt="Google" /></a></div>
        <div class="icons">
            <a href="http://www.linkedin.com/company/cem-business-solutions-pvt.-ltd.?trk=nav_account_sub_nav_company_admin"
                id="linkedin" target="_blank">
                <img src="images/v3/linkedin.png" width="25" height="43" alt="Linked In" /></a></div>
        <div class="icons">
            <a href="https://twitter.com/CEMBSglobal" id="twitter" target="_blank">
                <img src="images/v3/twitter.png" width="25" height="43" alt="Twitter" /></a></div>
    </div>
</div>
<div class="copyrights_div">© 2014 CEM Business Solutions. All rights reserved.</div>
<span class="scrollup"></span>
</div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="Scripts/v3/flexslider.js"></script>
<script src="Scripts/v3/jquery.li-scroller.1.0.js"></script>
<script src="Scripts/v3/jquery.feedback_me.js"></script>
<script>
    $(document).ready(function () {
        $("ul#ticker01").liScroll();
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
<script>
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
  <script type="text/javascript">      var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
</body>
</html>