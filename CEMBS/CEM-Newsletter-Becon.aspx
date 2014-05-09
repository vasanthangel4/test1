<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="CEM-Newsletter-Becon.aspx.cs" Inherits="CEM_Newsletter_Beacon" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Business Solutions - Beacon</title>
    <meta name="description" content="A fortnightly release - this newsletter “Above & Beyond” unveils CEM’s client gaining forte over the last couple of weeks and also brings you the latest updates and happenings in the house CEM!" />
    <meta name="keywords" content="ax consultants, Axapta consultants, hire Axapta consultant, cfmd, Certified for Microsoft Dynamics, construction event" />
    <meta name="robots" content="index, follow" />
    <script src="clearbox.js" type="text/javascript"></script>
    <style type="text/css">
        .tab_container
        {
            font-size: 13px !important;
        }
    </style>
    <script type="text/javascript">
        //        $(document).ready(function () {
        //            //Default Action
        //            $(".tab_content").hide(); //Hide all content
        //            //$("ul.tabs li:nth-child(2)").addClass("active").show(); //Activate first tab
        //            $(".tab_content:#above-beyond").show(); //Show first tab content

        //            //On Click Event
        //            $("ul.tabs li").click(function () {
        //                $("ul.tabs li").removeClass("active"); //Remove any "active" class
        //                $(this).addClass("active"); //Add "active" class to selected tab
        //                $(".tab_content").hide(); //Hide all tab content
        //                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        //                $(activeTab).fadeIn(); //Fade in the active content
        //                return false;
        //            });
        //        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <%--<li class="active"><a href="#about">About CEM</a></li>--%>
                <li><a href="#gitex">Gitex 2013</a></li>
                <li><a href="#construct">Construct Event</a></li>
                <li><a href="#hrms">Event on HRMS</a></li>
                <li><a href="#cfmd">CfMD Certification</a></li>
                <li><a href="#cem-expansion">CEM's Expansion </a></li>
                <li><a href="#resource-expansion">Resource expansion</a></li>
                <li><a href="#dynamics-council">MS Dynamics AX Council Program</a></li>
            </ul>
            <div class="tab_container" id="aboutcontainer">
                <table width="580" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                    <tr>
                        <td align="left" valign="top" bgcolor="#9f783d">
                            <img src="images/newsletter/beacon/header.jpg" width="580" height="260" alt="Beacon" title="Beacon"
                                style="display: block; font-size: 28px; font-weight: bold; font-family: Arial, sans-serif;
                                line-height: 20px; color: #fff" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top" style="padding: 12px 8px">
                            <table width="560" border="0" align="center" cellpadding="0" cellspacing="0" style="color: #153643;
                                font-family: Arial, sans-serif; font-size: 13px; line-height: 20px">
                                <tr>
                                    <td align="left" valign="top">
                                        <div align="justify">
                                            <p style="padding: 0px; margin: 0px">
                                                <img src="images/newsletter/beacon/award.gif" alt="Fastest Growing Company" title="Fastest Growing Company"
                                                    width="137" height="117" align="right" style="display: block; float: right; padding: 10px" />CEM
                                                is undoubtedly one of the fastest-growing private software companies in India...
                                                With over 97.5% customer satisfaction and ranked by Microsoft as the Fastest Growing
                                                Company of the year (2012), the whole of CEM's last year has been diverse and interesting
                                                to say the least! It is certainly not an exaggeration to claim that CEM has grown
                                                300% over its previous year! Yes… CEM has come a long way; marching the odds, striding
                                                across successes, and battling all the stumbling blocks, the year 2013 has witnessed
                                                a sea change in CEM's venture… A decade old now, to see how far it has come, summing
                                                up of its few recent happenings might be of definite interest... Therefore, the
                                                first newsletter of the year "Beacon" tries to catch a glimpse of CEM's technological
                                                milestones, industry innovations, and its pursuit towards client expansion over
                                                the year 2013!</p>
                                            <p style="padding: 10px 0; margin: 0px">
                                                Marking the first month of the year, this newsletter gets dispatched from the house
                                                of CEM with an assurance that you are sure to receive this every month with lots
                                                of newness in thought! Wishing one and all a fabulous New Year 2014 ahead...</p>
                                            <p style="padding: 0px 0 8px 0; margin: 0px">
                                                If terrorist attacks, economic consequences, hurricanes, wars and collapses, have
                                                earmarked the world's happening in 2013 in general, CEM too has had so many important
                                                events that it is hard to choose its "top ten". It has had a jam-packed year of
                                                events around the world, all good and all newsworthy! Off the 'n' number of events
                                                that CEM pioneered, here are the details of some that turned out to be an immense
                                                hit...</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#abe1fa" style="padding: 10px;">
                                        <table id="gitex" width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="left" valign="top">
                                                    <table width="540" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="176" align="left" style="padding:0px;" valign="top" bgcolor="#00aef0">
                                                                <img src="images/newsletter/beacon/htxt_gitex.gif" width="176" height="41" style="display: block; font-size: 30px;
                                                                    color: #fff" alt="Gitex Event" title="Gitex Event" />
                                                            </td>
                                                            <td align="right" valign="middle">
                                                                <img src="images/newsletter/beacon/gitex_event.gif" width="193" height="28" align="right" style="display: block"
                                                                    alt="GITEX Technology Week" title="GITEX Technology Week" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 12px 0">
                                                    <table width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event1_01.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event1_02.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event1_03.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event1_04.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    It's the newsflash about the breakthrough event of the year - GITEX 2013!
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 8px 0 0">
                                                    CEM was at its toes for this Mega event of the year. Earmarking 20<sup>th</sup>
                                                    through 24<sup>th</sup> October, CEM showcased its certified Microsoft Dynamics
                                                    Solutions, CEM AX Construct and CEM AX HCM &amp; Payroll. The session was spiced
                                                    up with one-on-one interactive session, seminars and collective sessions with hands-on
                                                    experts that helped its participants transform their business.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#b4f7bc" style="padding: 10px;">
                                        <table width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="left" valign="top">
                                                    <table id="construct" width="540" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="232" align="left" valign="top" bgcolor="#1da72d">
                                                                <img src="images/newsletter/beacon/htxt_construct.gif" width="232" height="41" style="display: block;
                                                                    font-size: 30px; color: #fff" alt="Construct Event" title="Construct Event" />
                                                            </td>
                                                            <td align="left" valign="middle">
                                                                <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 12px 0">
                                                    <table width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event2_01.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event2_02.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event2_03.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event2_04.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 0px">
                                                    Conveying the success of the Construct event in Qatar are its pictures. Happened
                                                    in the Microsoft office, together with Microsoft, the event was a success with the
                                                    grouping of the Construction experts of the region. Here are its pictures for your
                                                    quick look through.<a href="#" target="_blank" style="color: #464a4a; text-decoration: none"><strong></strong></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#efe7d4" style="padding: 10px;">
                                        <table id="hrms" width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="left" valign="top">
                                                    <table width="540" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="195" align="left" valign="top" bgcolor="#644f20">
                                                                <img src="images/newsletter/beacon/htxt_hrm.gif" width="236" height="41" style="display: block; font-size: 30px;
                                                                    color: #fff" alt="HRMS Event" title="HRMS Event" />
                                                            </td>
                                                            <td align="left" valign="middle">
                                                                <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 12px 0">
                                                    <table width="540" border="0" align="center" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event3_01.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event3_02.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event3_03.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                            <td width="135" align="left" valign="top">
                                                                <img src="images/newsletter/beacon/event3_04.jpg" width="130" height="76" style="display: block" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    <strong>Aiming to empower Entrepreneurs in the Middle East is CEM’s very first event
                                                        of the year 2014...</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 8px 0">
                                                    Are you ready to witness a mega event on <strong>HRMS</strong> in Bahrain?
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    True is the saying that Employees can either make or break an organization, which
                                                    is why they are called the "nerve point" of an organization. With this belief in
                                                    mind CEM has planned to organize an informative event on <strong>HRMS</strong> in
                                                    Bahrain!
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top" style="padding: 12px 0 0 0">
                                                    The very first event of the year, this is slated to happen on 2nd of  February, 2014!&nbsp; This for sure is going to be a smashing hit among the companies taking
                                                    part, seeking to understand the workforce strength in order to bring an expected
                                                    income to the company. The course of the session will show you how to better the
                                                    organization's lifeline, the "employees" with a plethora of <strong>HRMS</strong>
                                                    modules. A yet another successful event that is happening alongside Microsoft, CEM
                                                    takes pride in organising one! We hope this like any other CEM's event turns a booming
                                                    one!
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="6" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td id="cfmd" align="left" valign="middle" style="color: #153643; padding: 8px 0 0">
                                        <strong>CEM earns CfMD certification!</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" style="padding: 3px 0 0 0">
                                        <p align="justify" style="padding: 0px; margin: 0px">
                                            <img src="images/newsletter/beacon/thu_01.jpg" width="125" height="75" style="display: block; float: left;
                                                padding: 5px 10px 0px 0" />A great reason to celebrate, indeed! CEM's AX Payroll
                                            is now certified for Microsoft Dynamics (CfMD), which signifies that the solution
                                            has met Microsoft Corp.'s highest standard for partner-developed software by successfully
                                            meeting all certification requirements. The bar for this certification is purposefully
                                            set very high, in order to set a small group of solutions stand apart from thousands
                                            of others. Breaking away the barricades and the certification requirements enumerated
                                            by Microsoft, our CEM AX Payroll has successfully emerged as a winner to grab this
                                            esteemed certification! This milestone also validates our dedication to provide
                                            effective software solutions for our customers.</p>
                                        <p align="justify" style="padding: 10px 0; margin: 0px">
                                            "Earning the CfMD certification is a huge accomplishment for us", says Ramki, CEO
                                            of CEM Business Solutions. "We have an outstanding talented team of people who think
                                            that to be great, software needs to be constantly improving. And this certification
                                            has certainly driven our rapid growth year over year!"</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td id="cem-expansion" align="left" valign="top" style="color: #153643; padding: 8px 0 0">
                                        <strong>Tying More Big-Business Systems Together</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" style="padding: 3px 0 10px 0">
                                        <p align="justify" style="padding: 0px; margin: 0px">
                                            <img src="images/newsletter/beacon/thu_02.jpg" width="125" height="75" style="display: block; float: left;
                                                padding: 5px 10px 0px 0" />Not an exaggeration, but CEM's client lists have
                                            been growing and CEM's customers and partners have constantly been achieving success
                                            and growth! With a whole bunch of researching, brainstorming, and chiselling gone
                                            into CEM's services and products, they are quintessentially exceptional in this
                                            competitive market! Could be an extravagant claim, but yes CEM and its products/services
                                            certainly deserve this kind of a compliment! Our solutions have always been sought
                                            after by professionals looking for a drastic change in their business. All this
                                            has contributed to CEM growing 300% bigger, both in size and in its advancement!
                                            This is the major reason why CEM's client gaining list has been growing every new
                                            day! CEM will continue to reach out to its most valued customers, now and in the
                                            future too!</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td id="resource-expansion" align="left" valign="top" style="color: #153643; padding: 8px 0 0">
                                        <strong>Hiring Talents!</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" style="padding: 3px 0 0 0">
                                        <p align="justify" style="padding: 0px; margin: 0px">
                                            <img src="images/newsletter/beacon/thu_03.jpg" width="125" height="75" style="display: block; float: left;
                                                padding: 5px 10px 0px 0" />CEM has planned to increase its resource strength
                                            in AX - adding up to 20 new resources to its work force!
                                        </p>
                                        <p align="justify" style="padding: 8px 0; margin: 0px">
                                            A company can benefit greatly by expanding its human resources. Employee management
                                            being critical to any business success, one must capably recruit, retain, motivate
                                            and optimize their workforce. CEM, a Microsoft Dynamics partner which has been providing
                                            enterprise-class software to businesses has joined the ranks of companies experiencing
                                            fast-paced growth in the software innovation and is currently in its venture of
                                            resource expansion. We are in the verge of expanding our AX resources in this New
                                            Year, which is an effective growth indicator, testifying our march on!</p>
                                        <p align="justify" style="padding: 0 0 10px; margin: 0px">
                                            "We have been growing very quickly, and it really feels great to be part of a thriving
                                            tech community here in India," said Ramki, Managing Director CEM. The company is
                                            currently cruising to surpass its decisive goal of building up its existing team.
                                            With 100+ employees already employed at its office in India, we will be hiring 20
                                            more, closely in the days to come.</p>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="#4dc3e1">
                                        <img src="images/newsletter/beacon/spacer.gif" width="1" height="1" style="display: block" />
                                    </td>
                                </tr>
                                <tr>
                                    <td id="dynamics-council" align="left" valign="top" style="color: #153643; padding: 8px 0 0">
                                        <strong>Microsoft Dynamics AX Council Program</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" style="padding: 3px 0 0 0">
                                        <p align="justify" style="padding: 0px; margin: 0px">
                                            <img src="images/newsletter/beacon/thu_04.jpg" width="125" height="75" style="display: block; float: left;
                                                padding: 5px 10px 0px 0" />Elated is the entire CEM family to share with you
                                            all that CEM has been accepted into the Microsoft Dynamics AX Council Program! This
                                            is a proven indication that month-by-month CEM is achieving and chiseling its own
                                            identity in this competitive market.</p>
                                        <p align="justify" style="padding: 8px 0 0; margin: 0px">
                                            As a council participant, CEM used to receive monthly issues of Microsoft Dynamics
                                            AX Feedback programs and as a part of very selective audience who continuously influence
                                            the decisions of Dynamics AX R&D, CEM has received this communication.</p>
                                        <p align="justify" style="padding: 8px 0 0; margin: 0px">
                                            "Receiving this privilege is a huge accomplishment for us," said Ramki, CEO of CEM.
                                            "This recognition is a witness that we are constantly improving technologically
                                            year over year."</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" style="padding: 12px 0">
                                        <div align="justify">
                                            With this list of significant technology milestones, events, innovations, acquisitions
                                            CEM is sure to end up fully shaping the future for itself, as well as for its customers!
                                            With over 10 years of mastery in the software field, combining technology and elegance,
                                            CEM is sure to become a bigger hit in the years to come... To learn more about CEM,
                                            do visit <a href="http://www.cembs.com/" target="_blank" style="color: #de456b">www.cembs.com</a>.</div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
