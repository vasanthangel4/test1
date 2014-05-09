<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services_dynamics_sl_tabs.aspx.cs"
    Inherits="Services_dynamics_sl_tabs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- ajax tabs -->
    <link href="Styles/tabmenu.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
   <script src="Scripts/uiTabsFirstItem.js" type="text/javascript"></script>
    <!-- end ajax tabs -->
    <link href="Styles/services.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="width: 550px; min-height: 250px; height: auto;">
        <ul class="tabs">
            <%--</div>--%>
            <li><a href="#tab1">Project Management</a></li>
            <li><a href="#tab2">Financial Management</a></li>
            <li><a href="#tab3">Business intelligence and reporting</a></li>
        </ul>
        <div class="tab_container" style="width: 350px;">
            <div id="tab1" class="tab_content">
                <p class="bold">
                    Project management</p>
                <ul class="ul_arrow">
                    <li>Set up projects to fit your business, and effectively manage revenue and cost information.
                    </li>
                    <li>Gain control of profitability, create budgets, track results, and preview the impact
                        of changes. </li>
                    <li>Streamline labor reporting, time sheets, and expense reports. </li>
                    <li>Improve cash flow by quickly converting unbilled receivables to revenues. </li>
                    <li>Track documents, handle change orders, manage subcontractor performance, and link
                        payments to successful delivery. </li>
                    <li>Manage project finances with customized rate structures, automatic allocation of
                        charges and revenues, work-in-process tracking, and accurate project data for billing
                        and posting.</li>
                </ul>
            </div>
            <div id="tab2" class="tab_content">
                <p class="bold">
                    Financial management</p>
                <ul class="ul_arrow">
                    <li>Automate payables and receivables management. </li>
                    <li>Better manage cash flow and improve collections. </li>
                    <li>Streamline expense management. </li>
                    <li>Gain support for multiple currencies, locations, legal entities, and companies.
                    </li>
                    <li>Work in multiple companies at the same time.</li>
                </ul>
            </div>
            <div id="tab3" class="tab_content">
                <p class="bold">
                    Business intelligence and reporting</p>
                <ul class="ul_arrow">
                    <li>View dashboards and access key business metrics and key performance indicators in
                        the Business Portal. </li>
                    <li>Access more than 100 built-in customizable reports. </li>
                    <li>Use real-time notifications and alerts. </li>
                    <li>Gain advanced analytics and predictive modelling capabilities.</li>
                </ul>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
