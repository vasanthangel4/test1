<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services_dynamics_CRM_tabs.aspx.cs"
    Inherits="Services_dynamics_CRM_tabs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- ajax tabs -->
    <link href="Styles/tabmenu_horizontal.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Default Action
            $(".h_tab_content").hide(); //Hide all content
            $("ul.h_tabs li:first").addClass("active").show(); //Activate first tab
            $(".h_tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.h_tabs li").click(function () {
                $("ul.h_tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".h_tab_content").hide(); //Hide all tab content
                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active content
                return false;
            });
        });
    </script>
    <!-- end ajax tabs -->
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="h_container">
        <ul class="h_tabs">
            <%--</div>--%>
            <li><a href="#t1">Sales force automation</a></li>
            <li><a href="#t2">Customer service</a></li>
            <li><a href="#t3">Marketing</a></li>
        </ul>
        <div class="h_tab_container" style="width: 530px;">
            <div id="t1" class="h_tab_content">
                <p>
                    Optimize your sales efforts with the familiar and intelligent features of Microsoft
                    Dynamics CRM. Take advantage of a highly intuitive interface and embedded Microsoft
                    Office capabilities to increase time with customers, shorten sales cycles, increase
                    close rates, and achieve real-time insight.
                </p>
                <p>
                    <a href="#" onclick="window.open('Services_CRM_sales_demo.aspx','CRM Sales Demo','left=0,top=0,status=no,toolbar=no,location=no,menubar=no,titlebar=no')">
                        View Demo</a></p>
                <br />
            </div>
            <div id="t2" class="h_tab_content">
                <p>
                    Microsoft Dynamics CRM meets the changing expectations of customers with a service
                    solution that is robust and flexible. Users find familiar functionality and an interface
                    that let them work in a personal, natural way. This intelligent solution informs
                    customer service professionals with guidance that is insightful and actionable.
                    The result is a connected, collaborative, and integrated organization.</p>
                <p>
                    <a href="#" onclick="window.open('Services_CRM_customer_demo.aspx','CRM Customer Service Demo','left=0,top=0,status=no,toolbar=no,location=no,menubar=no,titlebar=no')">
                        View Demo</a></p>
            </div>
            <div id="t3" class="h_tab_content">
                <p>
                    Get a CRM marketing solution that is flexible, easy to use, and engineered to fit
                    your business. Transform every touch point into a marketing opportunity and harness
                    the undiscovered potential within your customer base. With familiar and intelligent
                    marketing capabilities in Microsoft Dynamics CRM, you can market more effectively,
                    improve productivity, and gain actionable insight into your marketing efforts.</p>
                <p>
                    <a href="#" onclick="window.open('Services_CRM_marketing_demo.aspx','CRM Marketing Demo','left=0,top=0,status=no,toolbar=no,location=no,menubar=no,titlebar=no')">
                        View Demo</a></p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
