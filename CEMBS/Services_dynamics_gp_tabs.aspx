<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services_dynamics_gp_tabs.aspx.cs"
    Inherits="Services_dynamics_gp_tabs" %>

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
            <li><a href="#tab5">Service & Project management</a></li>
        </ul>
        <div class="tab_container" style="width: 350px;">
            <div id="tab1" class="tab_content">
                <p class="bold">
                    Financial management</p>
                <ul class="ul_arrow">
                    <li>Automate payables and receivables management.</li>
                    <li>Better manage cash flow, improve collections,</li>
                    <li>and control fixed assets.</li>
                    <li>Streamline expense management.</li>
                    <li>Simplify electronic bank reconciliation and funds transfer.</li>
                    <li>Work with multiple currencies, locations, and companies. </li>
                </ul>
            </div>
            <div id="tab2" class="tab_content">
                <p class="bold">
                    Manufacturing</p>
                <ul class="ul_arrow">
                    <li>Track production costs and manage work orders more effectively.</li>
                    <li>Collect, organize, and review changes to orders before they are authorized.</li>
                    <li>Better manage materials, components, and assemblies.</li>
                    <li>Improve controls and enhance quality assurance. </li>
                </ul>
            </div>
            <div id="tab3" class="tab_content">
                <p class="bold">
                    Business intelligence and reporting</p>
                <ul class="ul_arrow">
                    <li>Easily create and manage budgets.</li>
                    <li>Access key business metrics in the Executive Center.</li>
                    <li>Increase insight with more than 225 built-in customizable and refreshable Microsoft
                        Excel® spreadsheet reports.</li>
                    <li>Use real-time notifications and alerts.</li>
                    <li>Look for trends and relationships<strong> </strong>with predictive modeling capabilities.
                    </li>
                </ul>
            </div>
            <div id="tab4" class="tab_content">
                <p class="bold">
                    Supply chain management</p>
                <ul class="ul_arrow">
                    <li>Stay ahead of demand, speed fulfillment, and reduce lead times.</li>
                    <li>Streamline purchasing and sales order processing.</li>
                    <li>Improve inventory management.</li>
                    <li>Connect with customers and suppliers to improve service. </li>
                    <li>&nbsp;</li>
                    <li>Human resources and payroll management</li>
                    <li>Manage payroll in-house or share data with leading payroll providers.</li>
                    <li>Streamline hiring processes.</li>
                    <li>Implement and track benefit programs.</li>
                    <li>Equip employees with self-service tools.</li>
                    <li>Track injury incidents. </li>
                </ul>
            </div>
            <div id="tab5" class="tab_content">
                <p class="bold">
                    Service &amp; Project management</p>
                <ul class="ul_arrow">
                    <li>Strengthen customer relationships, empower field employees, and increase sales.</li>
                    <li>Better manage the cost of providing field service.</li>
                    <li>Capture, review, and approve project time and expense data. </li>
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
