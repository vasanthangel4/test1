<%@ Page Title="" Language="C#" MasterPageFile="Layout.master" AutoEventWireup="true"
    CodeFile="Userdownloads.aspx.cs" Inherits="Userdownloads" %>

<%@ Register TagName="usercontrol_quicklinks" TagPrefix="quicklinks" Src="~/UserControls/quicklinks.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="layout_head" runat="Server">
    <title>Microsoft dynamics case studies India</title>
    <meta name="description" content="Case studies" />
    <meta name="keywords" content="downloads, case studies, presentation, videos" />
    <meta name="robots" content="index, follow" />
    <link href="Styles/gallery_style.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="Scripts/uiTabsFirstItem.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            alert('Thank you! Please click the Download button to download');
            $(".tab_content").hide(); //Hide all content
            var child1 = $("ul.tabs li:nth-child(1)").find("a").attr("href");
            var child2 = $("ul.tabs li:nth-child(2)").find("a").attr("href");
            var child3 = $("ul.tabs li:nth-child(3)").find("a").attr("href");
            if (window.location.href.indexOf("CaseStudies") > -1) {
                $("ul.tabs li:nth-child(1)").addClass("active");
                $(child1).fadeIn();
            }
            else if (window.location.href.indexOf("Presentations") > -1) {
                $("ul.tabs li:nth-child(2)").addClass("active");
                $(child2).fadeIn();
            }
            else if (window.location.href.indexOf("Brochures") > -1) {
                $("ul.tabs li:nth-child(3)").addClass("active");
                $(child3).fadeIn();
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
    <style type="text/css">
        #tab1 a.downloadlink
        {
            float: right;
            color: #7e9c1a;
        }
        a.downloadlink
        {
            float:left;
            color: #7e9c1a;
        }
    </style>
    <style type="text/css">
        td
        {
            text-align: left;
        }
        .ltd
        {
            width: 150px;
            padding-right: 10px;
        }
        .mtd
        {
            width: 300px;
        }
        .rtd
        {
            width: 200px;
        }
        td
        {
            padding: 3px 0 3px 0;
        }
    </style>
    <!-- end request form -->
    <style type="text/css">
        img
        {
            border: none;
        }
        .style1
        {
            width: 118px;
        }
        .style2
        {
            width: 261px;
        }
        .request_form
        {
            margin: 0 auto;
            padding-left: 15px;
            border: 0;
        }
    </style>
    <link href="Styles/OthersPages/MaskPopup.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/OtherPages/MaskPopup.js"></script>
    <!-- using service for checking mail ids -->
    <script type="text/javascript" src="Scripts/OtherPages/RestrictEmail.js"></script>
    <!-- end mail ids -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="layout_ContentPlaceholder" runat="Server">
    <%--<div class="common_banners">
        <img src="Images/showcase.jpg" alt="showcase"/>
    </div>--%>
    <div id="boxes">
        <div id="dialog1" class="window">
            Thank you for your interest in CEM Business Solutions.
            <br />
            Now click the download button to start your downloads.
        </div>
    </div>
    <!-- Mask to cover the whole screen -->
    <div id="mask">
    </div>
    <div class="content_div">
        <div class="container">
            <ul class="tabs">
                <li><a href="#tab1">Case-Studies</a></li>
                <li><a href="#tab2">Presentations</a></li>
                <li><a href="#tab3">Brochures</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <h1 style="border: none; display: none;">
                        Downloads</h1>
                    <a href="downloads/case_studies/Abela.pdf" target="_blank" class="downloadlink">Download</a>
                    <h2>
                        Abela</h2>
                    <p>
                        “Our business has substantially grown over time and it has become increasingly difficult
                        to manage and administer with our current predominantly manual systems. We wanted
                        the new systems to improve the accuracy and speed of the information generated by
                        different departments and ensure its consistency and standardization across the
                        board.” says Mr. Abed Hannawi (CEO) at ABELA & Co.
                    </p>
                    <a href="downloads/case_studies/ABIflow.pdf" target="_blank" class="downloadlink">Download</a>
                    <h2>
                        ABI Flow</h2>
                    <p>
                        “Our out-dated business management software was not able to provide the accuracy
                        and efficiency which we expected. Inventory management was a big problem for us.
                        We were not able to do proper production planning over a period of time”.</p>
                    <a href="downloads/case_studies/Bhatia_Traders.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Bhatia Traders</h2>
                    <p>
                        “Sales growth year on year in the UAE due to the economic slowdown is not a reliable
                        indicator, but since deploying Microsoft Dynamics GP, net profit has increased from
                        3.5 per cent to 4.5 per cent.” Dr. R. Durgadoss, Finance Director, Bhatia Traders</p>
                    <a href="downloads/case_studies/GraniteConstructionCompany.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Granite Construction Company</h2>
                    <p>
                        Granite Construction Company is one of the known organizations in the Construction
                        field of Oil &amp; Gas, Power &amp; Water, Industrial and Commercial Sectors. The
                        company was founded in 1973, with an entrepreneurial leadership and vision, to establish
                        a leading construction company, a goal which is being achieved due to Technical
                        Expertise, Strategic Planning skills and Stringent Quality Management / HSE policies
                        over 35 years of experience.</p>
                    <a href="downloads/case_studies/MourjanMarinas.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Mourjan Marinas</h2>
                    <p>
                        “The software solution used by Mourjan Marinas IGY in the past was not geared to
                        help us manage the company’s diverse operation. This was mostly due to the software
                        not catering to our type of business, and we had to revert to a lot of manual work-arounds.
                        As a result, time required to enter data and produce reports increased. We were
                        spending a substantial amount of time collating data and compiling manual reports.
                        In addition, the previous software solution ran on unstable database software that
                        required constant vigilance from the IT department, which sometimes put our business
                        transactions on hold for hours at a time.” explains Prajosh Karunakaran - Regional
                        Finance Director.</p>
                    <a href="downloads/case_studies/SPT.pdf" target="_blank" class="downloadlink">Download</a>
                    <h2>
                        SPT MiddleEase LLC</h2>
                    <p>
                        Established in 1994, SPT’s journey so far has witnessed winning the confidence of
                        both suppliers & customers. Today, the company takes pride in being associated with
                        some of world’s most renowned manufacturers and equally prominent customers who
                        are leaders in their respective fields.SPT’s core strengths are a reflection of
                        the efforts invested by a professional management system ensuring that the pursuit
                        of excellence is guided by the vision for market leadership.</p>
                    <a href="downloads/case_studies/SupraIndustrialCo.LLC.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Supra Industrial Co.Ltd</h2>
                    <p>
                        Supra Industrial Co .Ltd. is a part of Jumbo Group . Supra Industrial Co.Ltd. (SICO)
                        is an ISO 9001 certified manufacturing company based in Jebel Ali Industrial Area
                        in Dubai. SICO is in the business of manufacturing wide range of freezers-- hard-tops,
                        glass-tops, curved glass, and verticals - for two decades and has earned an excellent
                        reputation as a supplier of high quality products. SICO also supplies gas cooking
                        ranges and air conditioners, as well as special purpose freezers like table tops.
                        The primary business of the company is to manufacture for other OEMs.</p>
                    <a href="downloads/CaseStudies/Euro-Coffee-llc.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Euro Coffee LLC</h2>
                    <p>
                        Established in 1900, established through more than 100 years of experience in the
                        coffee business, is at your service every day. The guarantee of our brand comes
                        from the dedicated work of people and the innovative use of technology. For us,
                        quality isn't controlled' but 'developed', through a strict system of procedures
                        overseeing the selection of the beans, proper roasting, assembling the right blend
                        and putting our product in packages that are meant to last. Each and every production
                        phase is checked by specialized operators, using state-of-the-art technologies.</p>
                    <a href="downloads/CaseStudies/Arabtec-Envirogreen-faciltiy-management-services.pdf"
                        target="_blank" class="downloadlink">Download</a>
                    <h2>
                        Arabtec Envirogreen Facility Management Services</h2>
                    <p>
                        The emergence of ArabtecEnvirogreenFacility Management Services LLC follows thenatural
                        progression of Arabtec’s 37 yearsparticipation in the growth and success ofboth
                        the Middle East Construction andMaintenance sectors. The Partnership of theArabtec
                        Holding PJSC, Envirogreen Ltd ofIreland and Emirates Falcon Electromechanical Company
                        businessesprovides a truly unique facilities managementcompany unrivalled within
                        the Middle East FMmarket.</p>
                    <a href="downloads/CaseStudies/APL-Management-JLT.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        APL Management JLT</h2>
                    <p>
                        APL Management APL Management is a group of three companies, Aerovista, Noble Design
                        Solutions, APL management. The business of Aerovista is to offer expert wet lease
                        and charter solutions as well as related ancillary services to clients in fast-growing,
                        emerging markets. Noble Design Solutions LLC is a multi-faceted interior design
                        company mainly focusing on interior design, architectural, supply of decorative
                        materials for commercial, private, hotels and high rise projects.</p>
                    <a href="downloads/CaseStudies/Worldwide-Oilfield-Machine-M.E.pdf" target="_blank"
                        class="downloadlink">Download</a>
                    <h2>
                        Worldwide Oilfield Machine M.E</h2>
                    <p>
                        Worldwide Oilfield Machine (WOM) is a globally recognized multinational company
                        that was established in 1980 with its headquarters based in Houston, Texas with
                        over 2,500 employees, WOM group of companies is strategically located worldwide
                        with manufacturing facilities, engineering centers, sales offices, and assembly/
                        testing workshop in Houston-Texas, Pune-India, Dubai-UAE and Singapore.</p>
                    <a href="downloads/CaseStudies/Swan-Enterprises-Pvt-Ltd.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Swan enterprises pvt ltd</h2>
                    <p>
                        Swan Enterprises was established in 1969 in Bombay, with the purpose of carrying
                        out import substitution activity for refineries, petrochemicals and fertilizers.
                        In the span of 5 years a lot of items were developed like trays, hexmesh, orifice
                        plates, thermowells etc. Swan is specialized in providing emergency service during
                        plant trunarounds shutdowns without compromising in quality.</p>
                    <a href="downloads/CaseStudies/Radio-Holland.pdf" target="_blank" class="downloadlink">
                        Download</a>
                    <h2>
                        Radio Holland</h2>
                    <p>
                        Radio Holland is the leading Quality Provider of Navigation / Communication Electronics
                        and Services to the Maritime, Oil & Gas and Land Communications Industries with
                        25 years of operations. Radio Holland Middle East is a part of Radio Holland Group,
                        a specialized company in the supply, installation, integration and service of maritime
                        electronics.</p>
                    <a href="downloads/CaseStudies/CATS.pdf" target="_blank" class="downloadlink">Download</a>
                    <h2>
                        Control &amp; Applications Technology Solutions LLC (CATS)</h2>
                    <p>
                        Control & Applications Technology Solutions LLC (CATS) is a specialized supplier,
                        installation and maintenance company. It delivers solutions and services to its
                        clients in different industries such as metals and mining, oil and gas, as well
                        as the power and water industries in the Middle East. Implementing Microsoft Dynamics
                        AX 2012 has given the company comprehensive visibility over its projects, resulting
                        in better execution and more efficient financial control.</p>
                    <a href="downloads/CaseStudies/SIGED.pdf" target="_blank" class="downloadlink">Download</a>
                    <h2>
                        SiGED Emirates</h2>
                    <p>
                        As a leading mechanical engineering contractor, SiGED Emirates specializes in the
                        design, manufacture, installation and maintenance of steel structures and industrial
                        piping in the oil and gas sector. It needed an ERP solution that would provide a
                        comprehensive overview of each project, particularly relating to procurement and
                        resource management. Implementing Microsoft Dynamics AX 2012 allowed the firm to
                        meet its business requirements and more.</p>
                </div>
                <div id="tab2" class="tab_content">
                    <div class="video_div">
                        <%--<div class="video_thumb">
                            <img src="Images/video_customersmeet2010.jpg" alt="customersmeet" />
                        </div>--%>
                        <div class="text_link">
                            <h2>
                                CEM Corporate Profile</h2>
                            <a href="presentations/CEM-Corporate-Profile.pptx" target="_blank" class="downloadlink"
                                >Download</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="text_link">
                            <h2>
                                Construct
                            </h2>
                            <a href="presentations/CEM-Construct.pptx" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="text_link">
                            <h2>
                                Human Capital Management
                            </h2>
                            <a href="presentations/CEM-HCM.pptx" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="text_link">
                            <h2>
                                AX Retail Plus</h2>
                            <a href="presentations/CEM-AX-Retail-plus.pptx" target="_blank" class="downloadlink">Download</a>
                        </div>
                    </div>
                    <div class="video_div">
                        <div class="text_link">
                            <h2>
                                Project Pro</h2>
                            <a href="presentations/CEM-Project-Pro.pptx" target="_blank" class="downloadlink">Download</a>
                        </div>
                    </div>
                </div>
                <div id="tab3" class="tab_content">
                    <div class="video_div" id="payroll">
                        <div class="text_link">
                            <h2>
                                CEM AX Payroll</h2>
                            <a href="brochures/CEMAXPayroll.pdf" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div" id="payroll-us">
                        <div class="text_link">
                            <h2>
                                CEM AX Payroll United States</h2>
                            <a href="brochures/CEMAXPayroll-US.pdf" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div" id="retail">
                        <div class="text_link">
                            <h2>
                                CEM AX Retail Plus
                            </h2>
                            <a href="brochures/CEMAXRetailPlus.pdf" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div" id="construct">
                        <div class="text_link">
                            <h2>
                                CEM AX Construct</h2>
                            <a href="brochures/CEMConstruct.pdf" target="_blank" class="downloadlink">
                                Download</a>
                        </div>
                    </div>
                    <div class="video_div" id="hcm">
                        <div class="text_link">
                            <h2>
                                CEM AX HCM</h2>
                            <a href="brochures/CEMHCM.pdf" target="_blank" class="downloadlink">Download</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <quicklinks:usercontrol_quicklinks ID="quicklinks" runat="server" />
    </div>
</asp:Content>
