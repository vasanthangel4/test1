<%@ Control Language="C#" AutoEventWireup="true" CodeFile="location_tabs.ascx.cs"
    Inherits="location_tabs" %>
<script type="text/javascript">
    function getUrlVars() {
        var vars = [], hash;
        var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars.push(hash[0]);
            vars[hash[0]] = hash[1];
        }
        return vars;
    }
    $(document).ready(function () {

        var querystring = getUrlVars();
        //Default Action
        $(".tab_content").hide(); //Hide all content
        if (querystring == "success") {
            $("ul.tabs li:nth-child(2)").addClass("active").show(); //Activate first tab
            $(".tab_content:#ourlocations").show(); //Show first tab content
        }
        else {
            $("ul.tabs li:nth-child(1)").addClass("active").show(); //Activate first tab
            $(".tab_content:#quote").show(); //Show first tab content
        }
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
<style>
		.location_text span a,.location_text span,.location_text p span,.location_text p span a,#t1 .location_text span a,#t1 .location_text span,#t2 .location_text span a,#t2 .location_text span,
#t3 .location_text span a,#t3 .location_text span,#t4 .location_text span a,#t4 .location_text span,
#t5 .location_text span a,#t5 .location_text span
{
    color:#000  !important;	
    text-underline:none;
    background-image:none !important;
}

#t1 .location_text span img,#t2 .location_text span img,#t3 .location_text span img,#t4 .location_text span img,#t5 .location_text span img
{
    display:none !important;
}


</style>
<div class="h_container">
    <ul class="h_tabs">
        <li><a href="#t4">United States</a></li>
        <li><a href="#t1">India</a></li>
        <li><a href="#t2">MiddleEast</a></li>
        <li><a href="#t3">United Kingdom</a></li>
        <li><a href="#t5">Singapore</a></li>
      
    </ul>
    <div class="h_tab_container">
    <div id="t4" class="h_tab_content">
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        United States</h3>
                    <p>
                        CEM Business Solutions Inc,
                        <br />
                        50 Tice Blvd
                        <br />
                        Suite 340,
                        <br />
                        Woodcliff Lake ,<br />
                        NJ -07677.<br />
                        Mobile (201) 355 7987, <br />
                        Phone (201) 391-5345
                        <br />
                        Email: <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/UnitedStates.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_us.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        California</h3>
                    <p>
                        CEM Business Solutions Inc,
                        <br />
                        4944 Sunrise Blvd. Suite B-4,
                        <br />
                        Fair Oaks, California,
                        <br />
                        USA - 95628<br />
                        Email: <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/California.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_california.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
        </div>
        <div id="t1" class="h_tab_content">
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Chennai</h3>
                    <p>
                        CEM Business Solutions (P) Ltd
                        <br />
                        No:85, Babu Street,
                        <br />
                        Vellala, Teynampet,
                        <br />
                        Chennai - 620086
                        <br />
                        TamilNadu, INDIA.<br />
                        Tel : +91 44 33083800.
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/chennai.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_chennai.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
            <%--<div class="location_div">
                <div class="location_text">
                    <h3>
                        Mumbai</h3>
                    <p>
                        CEM Business Solutions (P) Ltd
                        <br />
                        A – 5/6, Manav Kalyan
                        <br />
                        Bangur Nagar
                        <br />
                        Goregaon – West<br />
                        Mumbai – 420 090
                        <br />
                        Tel : +993 0707 999
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/mumbai.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_mumbai.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>--%>
        </div>
        <div id="t2" class="h_tab_content">
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Dubai</h3>
                    <p>
                        CEM Business Solutions Fz LLC
                        <br />
                        119, Building No. 10
                        <br />
                        Dubai Internet City
                        <br />
                        P.O. Box 502270<br />
                        Dubai, U.A.E.
                        <br />
                        Tel : +971 4 3911683
                        <br />
                        Fax : +971 4 3904427
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/dubai.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_dubai.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Sharjah</h3>
                    <p>
                        CEM Computer Business Solutions
                        <br />
                        1403, Al Zahra Tower
                        <br />
                        King Faisal Street
                        <br />
                        Sharjah, U.A.E.<br />
                        Tel : +971 6 5734700<br />
                        Fax : +971 6 5734701
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/sharjah.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_sharjah.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Kuwait</h3>
                    <p>
                        CEM Business Solutions
                        <br />
                        P.O. Box 36380
                        <br />
                        Al Rass 24754
                        <br />
                        Kuwait.<br />
                        Tel : +965 22610023 | +965 55 749499 <br /> 
                        Fax : +965 22625335
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/kuwait.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_kuwait.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>

            

            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Abu Dhabi</h3>
                    <p>
                        No:903,<br />
                        UTS Carrier Building,<br />
                        Electra Street,<br />
                        Abu Dhabi, UAE.<br />
                        Tel : +971 226210011
                        <br />
                        Fax : +971 226210022
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/abudhabi.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_abudhabi.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Qatar</h3>
                    <p>
                        CEM Business Solutions<br />
                        P.O.Box #51<br />
                        Doha Qatar<br />
                        Tel: +974 300 75 145<br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/qatar.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_qatar.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
     
 <div class="location_div">
                <div class="location_text">
                    <h3>
                        Kingdom of Saudi Arabia </h3>
                    <p>
                        CEM Business Solutions
                        <br />
                       
                        Kingdom of Saudi Arabia.<br />
                      

                        Tel :  +971 508711015 | +974 30075145
                     
                        <br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/ksa.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_saudi_arabia.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div></div>



        <div id="t3" class="h_tab_content">
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        United Kingdom</h3>
                    <p>
                        CEM Business Solutions (P) Ltd
                        <br />
                        4 Morel Mews
                        <br />
                        Dagenham RM8 1BW
                        <br />
                        Essex<br />
                        Tel : +44 207 993 6483<br />
                        Email : <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/uk.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_uk.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
        </div>
        
        <div id="t5" class="h_tab_content">
            <div class="location_div">
                <div class="location_text">
                    <h3>
                        Singapore</h3>
                    <p>
                        CEM Business Solutions Ptd Ltd,
                        <br />
                        10 Anson Road,
                        <br />
                        #26-04 International Plaza,
                        <br />
                        Singapore-079903<br />
                        Email: <a href="mailto:info@cembs.com">info@cembs.com</a>
                    </p>
                </div>
                <div class="location_map">
                    <a href="Maps/singapore.htm"
                        rel="clearbox[height=420,,width=620,,scrolling=no]">
                        <img src="Images/map_singapore.jpg" alt="CEM Business Solutions" />
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
