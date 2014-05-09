<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="CEM-Newsletter-051213.aspx.cs" Inherits="CEM_Newsletter_051213" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>CEM Newsletter 051213</title>
    <meta name="description" content="A fortnightly release - this newsletter “Above & Beyond” unveils CEM’s client gaining forte over the last couple of weeks and also brings you the latest updates and happenings in the house CEM!" />
    <meta name="keywords" content="ax consultants, Axapta consultants, hire Axapta consultant, cfmd, Certified for Microsoft Dynamics, construction event" />
    <meta name="robots" content="index, follow" />
    <script src="clearbox.js" type="text/javascript"></script>
    <style type="text/css">
       .tab_container{font-size:13px !important;}
       table td{padding:2%;}
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
                <li><a href="#above-beyond">Above & Beyond!</a></li>
                <li><a href="#what-going">New workforce</a></li>
                <li><a href="#certification">CfMD certification</a></li>
                <li><a href="#event">HRMS Event</a></li>
            </ul>
            <div class="tab_container" id="aboutcontainer">
                <div id="above-beyond" class="tab_content">
                    <h2>
                        Above &amp; Beyond!</h2>
                    <p>
                        A fortnightly release – this newsletter &ldquo;Above &amp; Beyond&rdquo; unveils
                        CEM&rsquo;s client gaining forte over the last couple of weeks and also brings you
                        the latest updates and happenings in the house CEM!<br />
                        CEM affirms the fact that without the influx of consumers for our products or services,
                        its business growth is a nightmare! A quick run-down of our client gaining forte
                        in the last week… CEM signs up with a non-profit organization, a leading private
                        manufacturer, Media and Broadcasting Company, all just in a week&rsquo;s time!!
                        <strong></strong>
                    </p>
                    <table border="1" cellspacing="0"  style="width:100%; border-color:#505050;" cellpadding="0">
                        <tr>
                            <td width="69" valign="top">
                                <p>
                                    <strong>S.No</strong></p>
                            </td>
                            <td width="104" valign="top">
                                <p>
                                    <strong>Industry</strong></p>
                            </td>
                            <td width="84" valign="top">
                                <p>
                                    <strong>Location</strong></p>
                            </td>
                            <td width="138" valign="top">
                                <p>
                                    <strong>Project</strong></p>
                            </td>
                            <td width="227" valign="top">
                                <p>
                                    <strong>Update</strong></p>
                            </td>
                        </tr>
                        <tr>
                            <td width="69" valign="top">
                                <p>
                                    1</p>
                            </td>
                            <td width="104" valign="top">
                                <p>
                                    Non-profit organisation
                                </p>
                            </td>
                            <td width="84" valign="top">
                                <p>
                                    Dubai
                                </p>
                            </td>
                            <td width="138" valign="top">
                                <p>
                                    CRM Implementation
                                </p>
                            </td>
                            <td width="227" valign="top">
                                <p>
                                    A philanthropic organization working to improve children's primary education in
                                    developing countries
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="69" valign="top">
                                <p>
                                    2</p>
                            </td>
                            <td width="104" valign="top">
                                <p>
                                    Leading Private manufacturer
                                </p>
                            </td>
                            <td width="84" valign="top">
                                <p>
                                    Iran
                                </p>
                            </td>
                            <td width="138" valign="top">
                                <p>
                                    Support
                                </p>
                            </td>
                            <td width="227" valign="top">
                                <p>
                                    Iran&rsquo;s largest privately owned&nbsp;family-run business that is renowned worldwide
                                    for the quality, design and the functionality
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="69" valign="top">
                                <p>
                                    3</p>
                            </td>
                            <td width="104" valign="top">
                                <p>
                                    Media and Broadcasting Industry
                                </p>
                            </td>
                            <td width="84" valign="top">
                                <p>
                                    Qatar
                                </p>
                            </td>
                            <td width="138" valign="top">
                                <p>
                                    MS Dynamics GP
                                </p>
                            </td>
                            <td width="227" valign="top">
                                <p>
                                    This Media and Broadcasting Industry is a popular Arabic-language sports channel
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        Successful projects begin with great kick-off! Initiation meetings were started
                        to discuss the plan and strategy of all these projects successfully!</p>
                </div>
                <div id="whats-going" class="tab_content">
                    <h2>
                        What&rsquo;s going on in at CEM?</h2>
                    <p>
                        Increasing our resource strength in AX – adding up to 20 new resources to our work
                        force!
                    </p>
                    <p>
                        A company can benefit greatly by expanding its human resources. Employee management
                        being critical to any business success, one must capably recruit, retain, motivate
                        and optimize their workforce. CEM, a Microsoft Dynamics partner which has been providing
                        enterprise-class software to businesses has joined the ranks of companies experiencing
                        fast-paced growth in the software innovation and is currently in its venture of
                        resource expansion. We are expanding our AX resources by the end of the year- an
                        effective growth indicator, which testifies our march on!</p>
                    <p>
                        &ldquo;We have been growing very quickly, and it really feels great to be part of
                        a thriving tech community here in India,&rdquo; said Ramki, Managing Director CEM.
                        The company is currently cruising to surpass its decisive goal of building up its
                        existing team. With 100+ employees already employed at its office in India, we will
                        be hiring 20 more, closely in the days to come.</p>
                </div>
                <div id="certification" class="tab_content">
                    <h2>
                        Another feather to our cap – CEM earns CfMD certification!</h2>
                    <p>
                        A great reason to celebrate, indeed! CEM&rsquo;s AX Payroll is now certified for
                        Microsoft Dynamics (CfMD), which signifies that the solution has met Microsoft Corp.&rsquo;s
                        highest standard for partner-developed software by successfully meeting all certification
                        requirements.
                    </p>
                    <p>
                        Very recently our CEM AX Payroll was Certified for Microsoft Dynamics (CfMD), which
                        implies that our in-house Dynamics AX add-on solution has met Microsoft Corp.&rsquo;s
                        highest standard for partner-developed software. The bar for this certification
                        is purposefully set very high, in order to set a small group of solutions apart
                        from thousands of others. Breaking away the barricades and the certification requirements
                        enumerated by Microsoft, our CEM AX Payroll has successfully emerged as a winner
                        to grab this esteemed certification! This milestone also validates our dedication
                        to provide effective software solutions for our customers.</p>
                </div>
                <div id="event" class="tab_content">
                    <h2>
                        Aiming to empower the HR directors in the Middle East…</h2>
<p>Are you ready to witness a mega event on HRMS in Bahrain?</p>
                    <p>True  is the saying that Employees can either make or break an organization, which is  why they are called the &ldquo;nerve point&rdquo; of an association. With this belief in  mind CEM has planned to organize an informative event on <strong><em>HRMS </em></strong>in Bahrain!</p>
<p>The very  first event of the year, this is slated to happen in the second week of  January, 2014! With talent taking on more strategic importance than ever  before, this event for sure will empower employers and their organizations  stand on their own and create a vision of the future. The course of the session  will show you how to better the organization&rsquo;s lifeline, the &ldquo;employees&rdquo; with a  plethora of <strong><em>HRMS</em></strong> modules.</p>
<p>A yet another successful event that is happening alongside  Microsoft, CEM takes pride in organising one! We hope this like any other CEM&rsquo;s  event turns a fruitful one! </p>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
