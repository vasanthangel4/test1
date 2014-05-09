<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPage.master" AutoEventWireup="true" Async="true"
    CodeFile="Upgrade-AX2012.aspx.cs" Inherits="Upgrade_AX2012" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>AX2012 Upgrade | CEM Business Solutions</title>
    <meta name="description" content=" CEM AX payroll is designed to meet all the payroll related requirements of your organization and allows you to manage your payroll process across multiple positions in multiple entities across the globe. " />
    <meta name="keywords" content="payroll, ax payroll, microsoft dynamics ax payroll, microsoft payroll, erp payroll, payroll software, payroll services, payroll online, payroll management, payroll accounting, payroll solutions, payroll systems" />
    <meta name="robots" content="index, follow" />
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    
    <style type="text/css">
        .qmtd{width:48%;}
        .MyTable p {text-align:left;}
        .MyTable .ltd p{text-align:center;}
        #dialog1
        {
            display:none;
            margin-top:20px;
            
        }
        #landing_ContentPlaceholder_axchoice label
        {
            color: #0B76BA;
            font-size: 14px;
            font-weight: 600;
            margin: 0 20px 0 0;
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
            border:0;
            padding-top:20px;
            padding-bottom:20px;
        }
        .request_form input[type='text']
        {
            height:27px;
            margin:3px 0;
        }
        .smallbutton
        {
            background-color: #f0f5fe;
            border: 1px solid #7dc0eb;
            padding: 5px 15px;
            font-size: 16px;
            cursor: pointer;
            font-family: Segoe UI;
            text-decoration:none;
        }
        .button
        {
            background-color: #f0f5fe;
            border: 1px solid #7dc0eb;
            margin: 10px 0;
            padding: 12px 60px;
            font-size: 30px;
            cursor: pointer;
            font-family: Segoe UI;
            text-decoration:none;
        }
        p
        {
            margin: 0 !important;
            line-height: 1.6em !important;
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
            width: 100px;
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
        .CB_TextNav
        {
            display: none !important;
        }
        #scorecardlink
        {
            color: #000000;
            font-family: segoe ui;
            font-size: 32px;
            text-decoration: none !important;
        }
        
    </style>
    
    <script type="text/javascript">
        function GetRadioValues() {
            var form = document.getElementById("form1");
            inputs = form.getElementsByTagName("input");
            arr = [];

            for (var i = 0, max = inputs.length; i < max; i += 1) {
                // Take only those inputs which are checkbox
                if (inputs[i].type === "radio" && inputs[i].checked) {
                    arr.push(inputs[i].value);
                }
            }
            return arr;
        }
        function GetCheckBoxValues() {
            var form = document.getElementById("form1");
            inputs = form.getElementsByTagName("input");
            arr = [];

            for (var i = 0, max = inputs.length; i < max; i += 1) {
                // Take only those inputs which are checkbox
                if (inputs[i].type === "checkbox" && inputs[i].checked) {
                    arr.push(inputs[i].value);
                }
            }
            return arr;
        }       

        function CountRadioButtons() {
            var count = 0;
            var radio_groups = {}
            $(document).ready(function () {
                $(":radio").each(function () {
                    radio_groups[this.name] = true;
                })
                for (group in radio_groups) {
                    count = $("input[@name=" + group + "]:checked").length;
                }
            });
            return count;
        }
                       
        $(document).ready(function () {
            $("input[type=radio]").change(function () {
                var radiovalue = $(this).val();
                if (radiovalue.toString() == "2009") {
                    $('#landing_ContentPlaceholder_axchoice').hide();
                    $('#getaxversion_btn').hide();
                    $('#2009').fadeIn();
                    $('#AX2012').fadeOut();
                    $('#goback').css('display', 'block');
                    return false;
                }
                else if (radiovalue.toString() == "2012") {
                    $('#landing_ContentPlaceholder_axchoice').hide();
                    $('#getaxversion_btn').hide();
                    $('#AX2009-Ans').fadeOut();
                    $('#2009').fadeOut();
                    //$('#Get2009Answers').fadeOut();
                    $('#2012').fadeIn();
                    $('#AX2012').fadeIn();
                    $('#goback').css('display', 'block');
                    return false;
                }
                else {
                    alert("Please select atleast one version");
                    return false;
                }
            });
            function getValueUsingParentTag() {
                var chkArray = [];

                /* look for all checkboes that have a parent id called 'checkboxlist' attached to it and check if it was checked */
                $("#AX2009 input:checked").each(function () {
                    chkArray.push($(this).attr('id'));
                });

                /* we join the array separated by the comma */
                var selected;
                selected = chkArray.join(',') + ",";

                /* check if there is selected checkboxes, by default the length is 1 as it contains one single comma */
                if (selected.length > 1) {
                    return chkArray;
                    //alert("You have selected " + selected);
                } else {
                    alert("Please at least one of the checkbox");
                    return false;
                }
            }

            $('#AX2009-Ans tr').css('display', 'none');
            $('#AX2012-Ans tr').css('display', 'none');

            /* Get the checkboxes values based on the parent div id */
            $("#Get2009Answers").click(function () {
                var chkArray2009 = [];
                /* look for all checkboes that have a parent id called 'checkboxlist' attached to it and check if it was checked */
                $("#AX2009 input:checked").each(function () {
                    chkArray2009.push($(this).attr('id'));
                    if (chkArray2009.length > 0) {
                        $('#Get2009Answers').css('display', 'none');
                        $('#AX2009').fadeOut('fast');
                        $('#AX2009-Ans tr.2009head').attr('style', '').fadeIn();
                        $('#AX2009-Ans tr.' + $(this).attr('id')).attr('style', '').fadeIn();
                        $('#AX2009-Ans').fadeIn('slow');
                        $('#dialog1').fadeIn('slow');
                    }
                });
                if (chkArray2009.length < 1) {
                    $("#Get2009Answers").show();
                    alert("Please select atleast one question");
                }
                return false;
            });

            $("#Get2012Answers").click(function () {
                var chkArray2012 = [];
                /* look for all checkboes that have a parent id called 'checkboxlist' attached to it and check if it was checked */
                $("#AX2012 input:checked").each(function () {
                    chkArray2012.push($(this).attr('id'));
                    if (chkArray2012.length > 0) {
                        $('#Get2012Answers').css('display', 'none');
                        $('#AX2012').fadeOut('fast');
                        $('#AX2012-Ans tr.2012head').attr('style', '').fadeIn();
                        $('#AX2012-Ans tr.' + $(this).attr('id')).attr('style', '').fadeIn();
                        $('#AX2012-Ans').fadeIn('slow');
                        $('#dialog1').fadeIn('slow');
                    }
                });
                if (chkArray2012.length < 1) {
                    $("#Get2012Answers").show();
                    alert("Please select atleast one question");
                }
                return false;
            });

            var radiobutton = [];

            $("#getaxversion_btn").click(function () {
                radiobutton = GetRadioValues();
                if (radiobutton[0].toString() == "2009") {
                    $('#landing_ContentPlaceholder_axchoice').hide();
                    $('#getaxversion_btn').hide();
                    $('#2009').fadeIn();
                    $('#AX2012').fadeOut();
                    $('#goback').css('display', 'block');
                    return false;
                }
                else if (radiobutton[0].toString() == "2012") {
                    $('#landing_ContentPlaceholder_axchoice').hide();
                    $('#getaxversion_btn').hide();
                    $('#AX2009-Ans').fadeOut();
                    $('#2009').fadeOut();
                    //$('#Get2009Answers').fadeOut();
                    $('#2012').fadeIn();
                    $('#AX2012').fadeIn();
                    $('#goback').css('display', 'block');
                    return false;
                }
                else {
                    alert("Please select atleast one version");
                    return false;
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="landing_ContentPlaceholder" runat="Server">
    <div class="content_div">
        <div class="common_banners" style="margin: 0; padding: 0; height: 250px !important">
            <img src="Images/upgrade-ax2012.jpg" style="height: 250px !important" alt="upgrade to ax2012"
                width="980" height="250" />
        </div>
        <div class="container" style="float: left; padding: 0px 15px 20px 20px; width: 945px;">
            <h1 style="color: #0B76BA;">
                How to Upgrade Your Microsoft Dynamics AX…Without Upgrading.</h1>
            <p>
                Welcome! If you’re here, you’re probably interested in some tips and tricks to add
                functionality to your AX system – without actually investing in an upgrade. We’ve
                compiled a list of frequently requested functions in both AX 2009 and AX2012. Just
                identify the Version of AX you are using, then click on the desired functions to
                find out what’s possible, and how to make it happen.
            </p>
            <a href="javascript:location.href=window.location" id="goback" style="margin:20px 0 0 0; display:none;">Click here to check again</a>
            <div style="margin: 20px 0; color: #000;">
                <asp:RadioButtonList ID="axchoice" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value="2009">I am using AX 2009</asp:ListItem>
                    <asp:ListItem Value="2012">I am using AX 2012</asp:ListItem>
                </asp:RadioButtonList>
                <%--<input type="submit" id="getaxversion_btn" value="Submit" class="smallbutton" />--%>
            </div>
            <p>
                &nbsp;</p>
            <div id="2009" style= "display:none;">
            <table id="AX2009" width="750" style="border: 1px solid #505050;" class="MyTable"
                cellspacing="0" cellpadding="5">
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            1</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I print financial statements in Excel?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="91" />
                        <label for="1">
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            2</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I slice procurement and sales activities?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="92" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            3</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I share data (chart or item master) between organizations?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="93" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            4</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I create organizational hierarchies?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="94" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            5</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I use dimensions from &ldquo;Account Structure&rdquo; in the chart for Accounts
                            &amp; Budget Control?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="95" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            6</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I create a budget cycle - that includes other budget cycles - that can all
                            be used across legal entities?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="96" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            7</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I select the default &ldquo;over-budget&rdquo; permissions for different
                            user groups?
                        </p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="97" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            8</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I set up budget transaction workflows?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="98" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            9</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I distribute an amount by using various allocation factors?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009"" id="99" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            10</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I support accounting for intercompany transactions?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="910" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            11</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I standardize items by using product definition templates?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="911" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            12</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I categorize products by using an &ldquo;n-level deep&rdquo; category hierarchy,
                            so that I can more efficiently categorize my retail products?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2009" id="912" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            </p>
                    </td>
                    <td class="mtd">
                        <div style="margin: 7px auto; width: 230px;">
                            <input type="submit" id="Get2009Answers" class="smallbutton" name="modal" value="Submit " />
                            <%--<a href="#dialog1" id="Get2009Answers" class="smallbutton" name="modal">Submit</a>--%>
                        <%--<a href="Financial-ScoreCard.aspx" rel="clearbox[width=480,,height=300]" class="button"
                        id="scorecardlink">Submit</a>--%>
                    </div>
                    </td>
                    <td class="rtd">
                    </td>
                </tr>                
            </table>
            <table id="AX2009-Ans" width="814" style="border: 1px solid #505050; display:none;"
                class="MyTable" cellspacing="0" cellpadding="5">
                <tr class="2009head">
                    <td class="ltd" width="3">
                        <p><strong>S.No</strong>
                            </p>
                    </td>
                    <td width="236" class="mtd"><p><strong>Questions</strong></p></td>
                    <td width="236" class="mtd">
                        <p>
                            <strong>What&rsquo;s possible with AX 2009</strong></p>
                    </td>
                    <td width="289">
                        <p>
                            <strong>What&rsquo;s possible with AX 2012</strong></p>
                    </td>
                </tr>
                <tr class="91">
                    <td class="ltd" width="3">
                        <p>
                            1</p>
                    </td>
                    <td class="mtd"><p> How can I print financial statements in Excel?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            AX 2009 uses the X++ reports but you can still save the file as Excel. However you&rsquo;ll
                            have to delete the headers and sub-headers.</p>
                    </td>
                    <td width="289">
                        <p>
                            AX 2012 uses SSRS for reporting and exports al data into Excel for full sorting
                            and analysis of the data. This is very useful for those exports to the auditor&rsquo;s
                            Excel.</p>
                    </td>
                </tr>
                <tr class="92">
                    <td class="ltd" width="3">
                        <p>
                            2</p>
                    </td>
                    <td class="mtd"><p> How can I slice procurement and sales activities?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not supported in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            The sales and procurement category dimension slices measures in the purchasing and
                            sales cubes. Category hierarchy levels adapt to the provided hierarchy data.</p>
                    </td>
                </tr>
                <tr class="93">
                    <td class="ltd" width="3">
                        <p>
                            3</p>
                    </td>
                    <td class="mtd"><p> How can I share data (chart or item master) between organizations?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Possible by using virtual companies</p>
                    </td>
                    <td width="289">
                        <p>
                            Many tables are shared by all organizations, so users can access data in those tables,
                            regardless of the company or organization context.</p>
                    </td>
                </tr>
                <tr class="94">
                    <td class="ltd" width="3">
                        <p>
                            4</p>
                    </td>
                    <td class="mtd"><p> How can I create organizational hierarchies?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Possible by using some reports or minor customizations. Each organization in the
                            business was created as a &ldquo;company,&rdquo; regardless of the organization
                            hierarchy.</p>
                    </td>
                    <td width="289">
                        <p>
                            You can create legal entities and several types operational organizations.</p>
                    </td>
                </tr>
                <tr class="95">
                    <td class="ltd" width="3">
                        <p>
                            5</p>
                    </td>
                    <td class="mtd"><p> How can I use dimensions from &ldquo;Account Structure&rdquo; in the chart for Accounts
                      &amp; Budget Control?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not possible in AX 2009. The budget was always available at a main account level,
                            with the option of adding dimensions.</p>
                    </td>
                    <td width="289">
                        <p>
                            Users can specify dimension values to hold budget amounts, without regard to their
                            specific usage in main accounts.</p>
                    </td>
                </tr>
                <tr class="96">
                    <td class="ltd" width="3">
                        <p>
                            6</p>
                    </td>
                    <td class="mtd"><p> How can I create a budget cycle - that includes other budget cycles - that can all
                      be used across legal entities?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            Users can map the budget cycle time span to a fiscal year or specify the number
                            of accounting periods that each budget cycle represents.</p>
                    </td>
                </tr>
                <tr class="97">
                    <td class="ltd" width="3">
                        <p>
                            7</p>
                    </td>
                    <td class="mtd"><p> How can I select the default &ldquo;over-budget&rdquo; permissions for different
                      user groups? </p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            Users can assign options for user groups to allow or prevent over-budget procession
                            of source documents and accounting journals.</p>
                    </td>
                </tr>
                <tr class="98">
                    <td class="ltd" width="3">
                        <p>
                            8</p>
                    </td>
                    <td class="mtd"><p> How can I set up budget transaction workflows?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not Available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            Budget register entries associated with a workflow are automatically routed for
                            review.</p>
                    </td>
                </tr>
                <tr class="99">
                    <td class="ltd" width="3">
                        <p>
                            9</p>
                    </td>
                    <td class="mtd"><p> How can I distribute an amount by using various allocation factors?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not Available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            An amount can be distributed by amount, by percentage, by quantity or equally.</p>
                    </td>
                </tr>
                <tr class="910">
                    <td class="ltd" width="3">
                        <p>
                            10</p>
                    </td>
                    <td class="mtd"><p> How can I support accounting for intercompany transactions?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Possible. But accounting for intercompany transactions was available on in journals</p>
                    </td>
                    <td width="289">
                        <p>
                            If a source document supports intercompany transactions, the appropriate due to/due
                            from account entries are created in the sub leger journal entry.</p>
                    </td>
                </tr>
                <tr class="911">
                    <td class="ltd" width="3">
                        <p>
                            11</p>
                    </td>
                    <td class="mtd"><p> How can I standardize items by using product definition templates?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            A product definition record can be saved as a template.</p>
                    </td>
                </tr>
                <tr class="912">
                    <td class="ltd" width="3">
                        <p>
                            12</p>
                    </td>
                    <td class="mtd"><p> How can I categorize products by using an &ldquo;n-level deep&rdquo; category hierarchy,
                      so that I can more efficiently categorize my retail products?</p></td>
                    <td width="236" class="mtd">
                        <p>
                            Not available in AX 2009</p>
                    </td>
                    <td width="289">
                        <p>
                            Available in AX 2012 Feature Pack.</p>
                    </td>
                </tr>
            </table>
            </div>
            <div id="2012" style= "display:none;">
            <table id="AX2012" width="750" style="border: 1px solid #505050;" class="MyTable"
                cellspacing="0" cellpadding="5">
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            1</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I generate intercompany project    invoicing?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="21" />
                        <label for="1">
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            2</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I import budget values directly from WBS estimates?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="22" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            3</p>
                    </td>
                    <td class="mtd">
                        <p>
                           How can I add-in Project Management and    Accounting?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="23" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            4</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I create a WBS template for    Microsoft Dynamics AX by using Microsoft Project (client)?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="24" />
                    </td>
                </tr>
                <tr class="alt">
                    <td class="ltd">
                        <p>
                            5</p>
                    </td>
                    <td class="mtd">
                        <p>
                            How can I prepay 100 percent of a    purchase order amount?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="25" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            6</p>
                    </td>
                    <td class="mtd">
                        <p>
                           How can I add freight and other charges    to each line in a free text invoice, and distribute charges to dimensions and    ledger lines?</p>
                    </td>
                    <td class="rtd">
                        <input type="checkbox" class="q2012" id="26" />
                    </td>
                </tr>
                <tr>
                    <td class="ltd">
                        <p>
                            </p>
                    </td>
                    <td class="mtd">
                        <div style="margin: 0 auto; width: 230px;">
                            <input type="submit" id="Get2012Answers" class="smallbutton" name="Get2012Answers" value="Submit" />
                            <%--<a href="#dialog1" id="Get2012Answers" class="smallbutton" name="modal">Submit</a>--%>
                        <%--<a href="Financial-ScoreCard.aspx" rel="clearbox[width=480,,height=300]" class="button"
                        id="scorecardlink">Submit</a>--%>
                    </div>
                    </td>
                    <td class="rtd">
                    </td>
                </tr>                
            </table>
            <table id="AX2012-Ans" width="750" style="border: 1px solid #505050; display: none;"
                class="MyTable" cellspacing="0" cellpadding="5">
                <tr class="2012head">
                    <td class="ltd">
                        <p><strong>S.No</strong>
                            </p>
                    </td>
                    <td class="qmtd"><p><strong>Questions</strong></p></td>
                    <td class="mtd">
                        <p>
                            <strong>What&rsquo;s possible in AX 2012?</strong></p>
                    </td>
                </tr>
                <tr class="21">
                    <td class="ltd">
                        <p>
                            1</p>
                    </td>
                    <td class="qmtd"><p> How can I generate intercompany project    invoicing?</p></td>
                    <td class="mtd">
                        <p>
                           Possible in AX 2012 R3. In the 2012    Feature Pack, users were able to report time against projects in other legal    entities. In the R2 release, there was the ability to resource projects with    employees of other companies. In R3, legal entities can invoice each other    for time, employee expenses and vendor expenses. This is especially important    when a company has subsidiaries in multiple countries and has tax liability    for sharing resources. </p>
                    </td>
                </tr>
                <tr class="22">
                    <td class="ltd">
                        <p>
                            2</p>
                    </td>
                    <td class="qmtd"><p> How can I import budget values directly from WBS estimates?</p></td>
                    <td class="mtd">
                        <p>
                            Previously, you first had to copy the WBS    estimates to &ldquo;project forecasts&rdquo; and then import them into the budget. A new    option combines the two steps into one.</p>
                    </td>
                </tr>
                <tr class="23">
                    <td class="ltd">
                        <p>
                            3</p>
                    </td>
                    <td class="qmtd"><p> How can I add-in Project Management and    Accounting?</p></td>
                    <td class="mtd">
                        <p>
                           Integration with the accounting modules    is available after AX 2012 Feature Pack.</p>
                    </td>
                </tr>
                <tr class="24">
                    <td class="ltd">
                        <p>
                            4</p>
                    </td>
                    <td class="qmtd"><p> How can I create a WBS template for    Microsoft Dynamics AX by using Microsoft Project (client)?</p></td>
                    <td class="mtd">
                        <p>
                            Possible in CU7. Excellent WBS    capabilities.</p>
                    </td>
                </tr>
                <tr class="25">
                    <td class="ltd">
                        <p>
                            5</p>
                    </td>
                    <td class="qmtd"><p> How can I prepay 100 percent of a    purchase order amount?</p></td>
                    <td class="mtd">
                        <p>
                           Possible in CU6</p>
                    </td>
                </tr>
                <tr class="26">
                    <td class="ltd">
                        <p>
                            6</p>
                    </td>
                    <td class="qmtd"><p> How can I add freight and other charges    to each line in a free text invoice, and distribute charges to dimensions and    ledger lines?</p></td>
                    <td class="mtd">
                        <p>
                           Available in AX 2012 R2</p>
                    </td>
                </tr>               
            </table>
            </div>
            <div id="dialog1" class="window" style="display:inherit;">
            <p>If you have a specific question, please state it on the form below. Or if you’d just like to chat about how to get MORE out of your AX system, just complete the form below and submit. We’d love to get to know you.</p>
            <table class="request_form" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <%--<h1>
                            Submit your details</h1>--%>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="NameTextBox" runat="server" CausesValidation="True" Width="280px" Height="30"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" Display="Dynamic" ErrorMessage="Name Required"
                            ControlToValidate="NameTextBox" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Company*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="CompanyTextBox" runat="server" CausesValidation="True" Width="280px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="CompanyValidator" runat="server" Display="Dynamic"
                            ErrorMessage="Company name required" SetFocusOnError="True" ControlToValidate="CompanyTextBox"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Email address*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="MailTextBox" CssClass="mailtext" runat="server" CausesValidation="True"
                            Width="280px" Height="30"></asp:TextBox><br />
                        <div style="color: #ff0000; display: none;" id="maildiv">
                            Only official mailid</div>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" Display="Dynamic" ErrorMessage="Enter your mail ID"
                            SetFocusOnError="True" ControlToValidate="MailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MailExpressionValidator" runat="server" ControlToValidate="MailTextBox"
                            Display="Dynamic" ErrorMessage="Enter a valid mail ID" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Telephone*
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="ContactTextBox" runat="server" CausesValidation="True" Width="280px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ContactValidator" runat="server" Display="Dynamic"
                            ErrorMessage="Contact number required" SetFocusOnError="True" ControlToValidate="ContactTextBox"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="ContactIntegerValidator" runat="server" ControlToValidate="ContactTextBox"
                            Display="Dynamic" ErrorMessage="Enter valid phone number" SetFocusOnError="True"
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                            ForeColor="Red"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                <td class="style1" style="padding-top:10px" valign="top">
                    Question*
                </td>
                <td class="style2">
                    <asp:TextBox ID="QuestionTextBox" runat="server" TextMode="MultiLine" CausesValidation="True" Width="280px" Height="90px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="QuestionValidator" runat="server" Display="Dynamic"
                        ErrorMessage="Enter question" ControlToValidate="QuestionTextBox"
                        SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>
                
                
                <tr>
                    <td class="style1" style="padding-top:5px;">
                    </td>
                    <td class="style2">
                        <asp:Button ID="submit" CssClass="smallbutton" style="margin:5px 0px" runat="server" Text="Submit" OnClick="submit_Click" />&nbsp;
                        <%--<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" CausesValidation="False" /> --%>
                    </td>
                    <td>
                        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#729106"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">&nbsp;
                        
                    </td>
                    <td class="style2">
                        &nbsp; * Kindly fill all the information.
                    </td>
                    <td>&nbsp;
                        
                    </td>
                </tr>
            </table>
        </div>
        </div>
    </div>
    
    <!-- google analytics -->
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-36372906-1']); _gaq.push(['_setDomainName', 'cembs.com']); _gaq.push(['_setAllowLinker', true]); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <!-- end google analytics -->    
</asp:Content>
