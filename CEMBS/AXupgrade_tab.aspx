<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AXupgrade_tab.aspx.cs" Inherits="AXupgrade_tab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MS Dynamics AX 2012</title>
    <script src="clearbox.js" type="text/javascript"></script>
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
            <li><a href="#tab2">Procurement & Supply Chain Management</a></li>
            <li><a href="#tab3">Sales Orders & Customer Service</a></li>
            <li><a href="#tab4">Inventory Management and Warehousing</a></li>
            <li><a href="#tab5">Production-Manufacturing</a></li>
            <li><a href="#tab6">Expense Management</a></li>
            <li><a href="#tab7">HR Management and Payroll</a></li>
            <li><a href="#tab8">Project Management</a></li>
        </ul>
        <div class="tab_container" style="width: 350px;">
            <div id="tab1" class="tab_content">
                <h2>
                    Financial Management</h2>
                <ul class="ul_reasons">
                    <li>General Ledger and Chart of Accounts Setup </li>
                    <li>Financial Dimension with Dimensional hierarchy </li>
                    <li>Bank Management and Setup </li>
                    <li>Bank Reconciliation </li>
                    <li>Accounts Payables </li>
                    <li>Vendor Check Runs and Electronic Payments </li>
                    <li>Accounts Receivables </li>
                    <li>Budgeting with Revisions and Approvals </li>
                    <li>Journal Approvals and workflow </li>
                </ul>
            </div>
            <div id="tab2" class="tab_content">
                <h2>
                    Procurement & Supply Chain Management
                </h2>
                <ul class="ul_reasons">
                    <li>Vendor Management </li>
                    <li>Purchasing </li>
                    <li>Purchase Requisitions </li>
                    <li>Vendor RFQ and Quotes </li>
                    <li>Workflow for Purchase Approvals </li>
                    <li>Automated Purchase Orders </li>
                    <li>MRP and Master Planning </li>
                    <li>Vendor Managed Inventory </li>
                    <li>Automated Vendor notifications for Drop ship </li>
                    <li>Automated 3 way matching of PO, Invoice and Goods Receipt Note/ Vendor Packing Slip</li>
                    <li>Vendor Statistics and Performance Management </li>
                </ul>
            </div>
            <div id="tab3" class="tab_content">
                <h2>
                    Sales Orders & Customer Service</h2>
                <ul class="ul_reasons">
                    <li>Customer Management </li>
                    <li>Credit Limits and Customer Profile Management </li>
                    <li>Sales Order Management with notes for customer service </li>
                    <li>Order fulfilment </li>
                    <li>Customer Rebate Management </li>
                    <li>Sales Commissions Setup and automated calculation </li>
                    <li>Multiple deliveries per order </li>
                </ul>
            </div>
            <div id="tab4" class="tab_content">
                <h2>
                    Inventory Management and Warehousing</h2>
                <ul class="ul_reasons">
                    <li>Item Master configuration with Attributes and SKUs </li>
                    <li>Item Dimensions including Lot Number, Batch, Serial Number and Location control
                    </li>
                    <li>Bill of Materials (BOMs) &amp; Formulas </li>
                    <li>Bar-Coding Support in Microsoft Dynamics AX </li>
                    <li>Min Max and Requirements Management </li>
                    <li>UNSPSC and other commodity classifications </li>
                    <li>Inventory Costing including LIFO, FIFO, Standard Costing, Weighted Average Costing
                        and FEFO </li>
                    <li>Bin, Location, Aisle and Pallet Management </li>
                    <li>Directed Pick and Directed Put-away </li>
                    <li>Yard Management &amp; Cross-docking </li>
                </ul>
            </div>
            <div id="tab5" class="tab_content">
                <h2>
                    Production and Manufacturing</h2>
                <ul class="ul_reasons">
                    <li>Production</li>
                    <li>Routes and Operations Configuration</li>
                    <li>Work Centers and Route Planning</li>
                    <li>Job Costing</li>
                    <li>Production Planning</li>
                    <li>Shop Floor Control</li>
                </ul>
            </div>
            <div id="tab6" class="tab_content">
                <h2>
                    Expense Management</h2>
                <ul class="ul_reasons">
                    <li>Business Policies and Expense rules</li>
                    <li>Workflow for multi-level expense approvals</li>
                    <li>Employee web portal for expense entry</li>
                    <li>Ability to attach and view expense receipts</li>
                    <li>Integration with General Ledger and Accounts Payable</li>
                </ul>
            </div>
            <div id="tab7" class="tab_content">
                <h2>
                    HR Management and Payroll</h2>
                <ul class="ul_reasons">
                    <li>Balanced Scorecard </li>
                    <li>Business Process Management</li>
                    <li>Human Resource Management</li>
                    <li>Payroll</li>
                </ul>
            </div>
            <div id="tab8" class="tab_content">
                <h2>
                    Project Management and Project Accounting
                </h2>
                <ul class="ul_reasons">
                    <li>Project Budgeting</li>
                    <li>Tracking of Project Costs such as Labor, Vendor Purchases</li>
                    <li>Expense Tracking to Projects</li>
                </ul>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
