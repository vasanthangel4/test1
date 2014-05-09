<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Financial-ScoreCard.aspx.cs"
    Async="true" Inherits="Financial_ScoreCard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scorecard</title>
    <meta name="description" content=" CEM AX payroll is designed to meet all the payroll related requirements of your organization and allows you to manage your payroll process across multiple positions in multiple entities across the globe. " />
    <meta name="keywords" content="payroll, ax payroll, microsoft dynamics ax payroll, microsoft payroll, erp payroll, payroll software, payroll services, payroll online, payroll management, payroll accounting, payroll solutions, payroll systems" />
    <meta name="robots" content="index, follow" />
    <style type="text/css">
        #dialog
        {
            font-family: Segoe UI;
            font-size: 13px;
        }
        .button
        {
            background-color: #f0f5fe;
            border: 1px solid #7dc0eb;
            margin: 10px 0;
            padding: 12px 60px;
            font-size: 30px;
            cursor: pointer;
        }
        p
        {
            margin: 0 !important;
            line-height: 1.3em !important;
        }
        .MyTable, .scoringcard
        {
            border-collapse: collapse;
            width: 100%;
            margin: 0 0 10px 0;
        }
        .MyTable td, #customers th
        {
            border: 1px solid #7dc0eb;
            font-size: 1.0em;
            padding: 7px 5px 7px 7px;
            vertical-align: top;
        }
        .MyTable th
        {
            background-color: #4E90FF;
            color: #FFFFFF;
            font-size: 1.4em;
            padding-bottom: 4px;
            padding-top: 5px;
            text-align: left;
        }
        .MyTable tr.alt td
        {
            background-color: #f0f5fe;
            color: #434343;
            vertical-align: top;
        }
        
        input[type='radio']
        {
            margin: 5px;
            position: relative;
            top: 2px;
        }
        .MyTable td.rtd
        {
            width: 370px;
        }
        .textbox
        {
            width: 400px;
            border: 1px solid #7dc0eb;
            background: #fff;
            color: #505050;
            margin: 3px 0 3px 10px;
            padding: 5px 10px;
            line-height: 18px;
            text-align: left;
        }
        .scoringcard
        {
            border-collapse: collapse;
            width: 100%;
            margin: 10px 0;
        }
        .scoringcard td, #customers th
        {
            border: 1px solid #4E90FF;
            font-size: 13px;
            padding: 7px 5px 7px 7px;
            vertical-align: top;
        }
        .scoringcard th
        {
            border: 1px solid #4E90FF;
            background-color: #4E90FF;
            color: #000;
            font-size: 13px;
            padding-bottom: 4px;
            padding: 7px 5px 7px 7px;
            text-align: left;
        }
        .scoringcard tr.alt td
        {
            background-color: #4E90FF;
            color: #434343;
            vertical-align: top;
        }
        #dialog .ui-dialog-titlebar-close
        {
            display: none !important;
        }
        #dialog .ui-dialog-buttonpane
        {
            display: none !important;
        }
        /*table
        {
            background: none repeat scroll 0 0 #EAEBEC;
            border: 1px solid #CCCCCC;
            border-radius: 3px;
            box-shadow: 0 1px 2px #D1D1D1;
            color: #666666;
            font-family: Arial,Helvetica,sans-serif;
            font-size: 12px;
            margin: 20px;
            text-shadow: 1px 1px 0 #FFFFFF;
        }
        table th
        {
            background: -moz-linear-gradient(center top , #EDEDED, #EBEBEB) repeat scroll 0 0 rgba(0, 0, 0, 0);
            border-bottom: 1px solid #E0E0E0;
            border-top: 1px solid #FAFAFA;
            padding: 21px 25px 22px;
        }
        table th:first-child
        {
            padding-left: 20px;
            text-align: left;
        }
        table tr:first-child th:first-child
        {
            border-top-left-radius: 3px;
        }
        table tr:first-child th:last-child
        {
            border-top-right-radius: 3px;
        }
        table tr
        {
            padding-left: 20px;
            text-align: center;
        }
        table td:first-child
        {
            border-left: 0 none;
            padding-left: 20px;
            text-align: left;
        }
        table td
        {
            background: -moz-linear-gradient(center top , #FBFBFB, #FAFAFA) repeat scroll 0 0 rgba(0, 0, 0, 0);
            border-bottom: 1px solid #E0E0E0;
            border-left: 1px solid #E0E0E0;
            border-top: 1px solid #FFFFFF;
            padding: 18px;
        }
        table tr.even td
        {
            background: -moz-linear-gradient(center top , #F8F8F8, #F6F6F6) repeat scroll 0 0 rgba(0, 0, 0, 0);
        }
        table tr:last-child td
        {
            border-bottom: 0 none;
        }
        table tr:last-child td:first-child
        {
            border-bottom-left-radius: 3px;
        }
        table tr:last-child td:last-child
        {
            border-bottom-right-radius: 3px;
        }
        table tr:hover td
        {
            background: -moz-linear-gradient(center top , #F2F2F2, #F0F0F0) repeat scroll 0 0 rgba(0, 0, 0, 0);
        }*/
    </style>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="CustomClearBox/clearbox/core/cb_core.js" type="text/javascript"></script>
    <script type="text/javascript">
        function getdate() {
            var d = new Date();
            var n = d.getHours();
            if (n < 10) {
                return "Good morning";
            }
            else if (n < 20) {
                return "Good day";
            }
            else {
                return "Good evening";
            }
        }
        $(document).ready(function () {
            $("#greeting").html(getdate() + "!");
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="dialog" title="Scoring Card">
        <span class="greeting" id="greeting"></span>
        <div class="score" runat="server" id="score">
        </div>
        <br />
        <br />
        <p style="border-bottom: 1px dotted #dddddd; padding-bottom: 4px;">
            <strong>Result Criteria</strong>
        </p>
        <table class="scoringcard">
            <tr>
                <th>
                    Score
                </th>
                <th>
                    Result
                </th>
            </tr>
            <tr>
                <td>
                    14-20
                </td>
                <td>
                    Your current ERP system is probably adequate
                </td>
            </tr>
            <tr>
                <td>
                    21-25
                </td>
                <td>
                    You might want to begin thinking about a new ERP system
                </td>
            </tr>
            <tr>
                <td>
                    26-34
                </td>
                <td>
                    You would probably benefit from a new ERP system
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
