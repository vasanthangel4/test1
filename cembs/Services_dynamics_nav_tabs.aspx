<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services_dynamics_nav_tabs.aspx.cs"
    Inherits="Services_dynamics_nav_tabs" %>

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
    <div class="container" style="width: 550px; min-height: 230px; height: auto;">
        <ul class="tabs">
            <%--</div>--%>
            <li><a href="#tab1">Financial Management</a></li>
            <li><a href="#tab2">Manufacturing</a></li>
            <li><a href="#tab3">Business intelligence and reporting</a></li>
            <li><a href="#tab4">Supply chain management</a></li>
            <li><a href="#tab5">Sales and marketing</a></li>
            <li><a href="#tab6">Project management</a></li>
            <li><a href="#tab7">Service management</a></li>
        </ul>
        <div class="tab_container" style="width: 350px;">
            <div id="tab1" class="tab_content">
                <h2>
                    Financial Management</h2>
                <ul class="arrow">
                    <li>Efficiently manage bookkeeping and inventory</li>
                    <li>Simplify cash flow management</li>
                    <li>Control fixed assets</li>
                    <li>Process bank reconciliations and collections</li>
                    <li>Work with multiple currencies, locations, legal entities, or companies</li>
                </ul>
            </div>
            <div id="tab2" class="tab_content">
                <h2>
                    Manufacturing</h2>
                <ul class="arrow">
                    <li>Boost efficiency of production orders</li>
                    <li>Improve supply planning</li>
                    <li>Stay agile and respond quickly to customer demands</li>
                    <li>Manage capacity requirements planning more effectively</li>
                </ul>
            </div>
            <div id="tab3" class="tab_content">
                <h2>
                    Business intelligence and reporting</h2>
                <ul class="arrow">
                    <li>Manage budgets</li>
                    <li>Create custom reports using step-by-step wizards</li>
                    <li>Consolidate reports easily</li>
                    <li>Look for trends and relationships</li>
                    <li>Increase collaboration and share knowledge</li>
                </ul>
            </div>
            <div id="tab4" class="tab_content">
                <h2>
                    Supply chain management</h2>
                <ul class="arrow">
                    <li>Tailor approval workflow processes</li>
                    <li>Manage inventory</li>
                    <li>Improve your responsiveness</li>
                    <li>Pursue new market opportunities</li>
                    <li>Work more efficiently with partners</li>
                </ul>
            </div>
            <div id="tab5" class="tab_content">
                <h2>
                    Sales and marketing</h2>
                <ul class="arrow">
                    <li>Manage customer and sales data</li>
                    <li>Create marketing campaigns</li>
                    <li>Organize service resources</li>
                    <li>Forecast and track parts consumption</li>
                    <li>Manage contracts and service agreements</li>
                </ul>
            </div>
            <div id="tab6" class="tab_content">
                <h2>
                    Project management</h2>
                <ul class="arrow">
                    <li>Budget for costs and time</li>
                    <li>Automate billings</li>
                    <li>Track resource costs and usage</li>
                    <li>Plan capacity</li>
                    <li>Predict availability</li>
                </ul>
            </div>
            <div id="tab7" class="tab_content">
                <h2>
                    Service management</h2>
                <ul class="arrow">
                    <li>Manage customer calls and queries</li>
                    <li>Track support tickets</li>
                    <li>Allocate resources</li>
                    <li>Create reports</li>
                </ul>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
