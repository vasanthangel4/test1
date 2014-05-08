<%@ Page Title="" Language="C#" MasterPageFile="master_Careers.master" AutoEventWireup="true"
    CodeFile="CurrentOpportunities.aspx.cs" Inherits="Careers_CurrentOpportunities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../clearbox.js" type="text/javascript"></script>
    <link href="Styles/Careers.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //        function SupportsWebpageStorage() {
        //            return ('localstorage' in window) && window['localstorage'] !== null;
        //        }
        //        if (SupportsWebpageStorage()) {
        //            alert("supports");
        //        }
        //        else {
        //            alert("doesnot support");
        //        }

        function alertme(key) {
            //debugger
            var keycode = (key.which) ? key.which : key.keyCode;
            //alert(keycode);
            var textbox = document.getElementById('ctl00_ContentPlaceHolder1_ExperienceText');

            if (keycode >= 48 && keycode <= 57) {
                if (textbox.value.length < 2) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else if (keycode == 8 || keycode == 46 || keycode == 9) {
                return true;
            }
            else if (keycode == 25) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <style type="text/css">
        #wrapper .content_div .div_content_left .CEMButton
        {
            text-align: right;
        }
         #wrapper .content_div .div_content_left table.grid td
        {
            text-align:left;
        }
         #wrapper .content_div .div_content_left table.grid td span
         {
             color:#000;
         }
        .CEMButton input[type='button']
        {
            background:#1A6081;
            border: none;
            color: #fff;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            font-size: 12px;
            padding: 5px;
            cursor: pointer;
            margin-top: 5px;
        }
        .caps
        {
            text-transform:uppercase;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function openNewWin(url) {
            var iMyWidth;
            var iMyHeight;
            //half the screen width minus half the new window width (plus 5 pixel borders).
            iMyWidth = (window.screen.width / 2) - (75 + 10);
            //half the screen height minus half the new window height (plus title and status bars).
            iMyHeight = (window.screen.height / 2) - (100 + 50);

            var x = window.open(url, 'mynewwin', 'width=700,height=500,toolbar=0,scrolling=no,resizable=no');
            x.focus();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="div_content_left" style="width: 945px; padding-bottom: 30px;">
            <h1>
                Current Job Openings in CEM</h1>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cembs_connectionstring %>"
                    SelectCommand="SELECT [JobCategory], [ID] FROM [JobCategories] ORDER BY [ID]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cembs_connectionstring %>"
                    SelectCommand="SELECT * FROM [JobOpenings] ORDER BY [PostedDate] DESC"></asp:SqlDataSource>
            </p>
            <table style="width: 400px; margin-left: -7px;">
                <tr>
                    <td>
                        <h2>
                            Filter</h2>
                    </td>
                    <td>
                        <asp:DropDownList ID="categories_list" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="JobCategory" OnSelectedIndexChanged="categories_list_SelectedIndexChanged"
                            DataValueField="ID" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="posts_lists" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PostsSelected">
                            <asp:ListItem>Posts by Categories</asp:ListItem>
                            <asp:ListItem>Today</asp:ListItem>
                            <asp:ListItem>Yesterday</asp:ListItem>
                            <asp:ListItem>7 Days</asp:ListItem>
                            <asp:ListItem>2 Weeks</asp:ListItem>
                            <asp:ListItem>1 Month</asp:ListItem>
                            <asp:ListItem>2 Months</asp:ListItem>
                            <asp:ListItem>3 Months</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <%--<table style="background: #ece5e3; width: 940px; margin-left: 0px; position: relative;
                padding: 18px 0px 0px 10px; height: 105px;">
                <tr style="height: 45px;">
                    <td>
                        <strong>Job Title
                            <asp:TextBox ID="JobTitleText" runat="server" Style="width: 180px;"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        <strong>Skills,Knowledge,etc,
                            <asp:TextBox ID="SkillsText" runat="server" Style="width: 290px"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        <strong>Experience</strong>
                        <input type="text" id="ExperienceText" onkeydown="return alertme(event)" runat="server" />
                        <label style="position: absolute; top: 22px; right: 35px;">
                            <strong>years</strong>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Location
                            <asp:TextBox ID="LocationText" runat="server" Style="position: absolute; top: 65px;
                                width: 180px; left: 68px;"></asp:TextBox>
                        </strong>
                    </td>
                    <td>
                        <asp:ImageButton ID="JobsSearchButton" ImageUrl="Images/search_btn_careers.png" runat="server"
                            Style="border-width: 0px; position: absolute; top: 65px; left: 275px;" OnClick="JobsSearchButton_Click" />
                    </td>
                    <td>
                    </td>
                </tr>
            </table>--%>
            <%--<asp:GridView ID="Jobs_Grid1" runat="server" AutoGenerateColumns="False" Style="width: 940px;
                margin-top: 20px;" OnRowCommand="OnEventFired" AutoPostback="False" 
                DataKeyNames="JobID" DataSourceID="SqlDataSource2">
                <EmptyDataTemplate>
                    No Records Found.
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <table id="Jobs_Results" style="height: 30px; color: #fff;" cellpadding="0" cellspacing="0">
                                <tr style="">
                                    <th style="width:47px">
                                        <asp:Label ID="hjobcode" Text="JobCode" runat="server"></asp:Label>
                                    </th>
                                    <th class="jobtitle">
                                        <asp:Label ID="htitle_label" Text="Title" runat="server"></asp:Label>
                                    </th>
                                    <th class="careerlevel">
                                        <asp:Label ID="hcareer_label" Text="Career Level" runat="server"></asp:Label>
                                    </th>
                                    <th class="category">
                                        <asp:Label ID="hcategory_label" Text="Category" runat="server"></asp:Label>
                                    </th>
                                    <th class="skills">
                                        <asp:Label ID="hskill_label" Text="Skills" runat="server"></asp:Label>
                                    </th>
                                    <th class="location">
                                        <asp:Label ID="hlocation_label" Text="Location" runat="server"></asp:Label>
                                    </th>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table id="Jobs_Results" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
                                <tr>
                                    <td style="width: 65px;">
                                        <asp:Label ID="myjobid" runat="server" Text='<%# Eval("JobID") %>' Style="text-align: center;
                                             display: block; padding-bottom: 12px;"></asp:Label>
                                    </td>
                                    <td class="jobtitle" style="text-align: center; padding-bottom: 12px; width:120px;">
                                        <asp:Label ID="title" runat="server" Text='<%# Eval("JobTitle") %>'></asp:Label>
                                    </td>
                                    <td class="careerlevel" style="text-align: center; padding-bottom: 12px;">
                                        <asp:Label ID="career" runat="server" Text='<%# String.Concat(Eval("MinimumExperience")+"-", Eval("MaximumExperience")+" years") %>'></asp:Label>
                                    </td>
                                    <td class="category" style="text-align: center; padding-bottom: 12px;">
                                        <asp:Label ID="category" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                    </td>
                                    <td class="skills" style="text-align: center; padding-bottom: 12px;">
                                        <asp:Label ID="skill_label" Text='<%# Eval("Skills") %>' runat="server"></asp:Label>
                                    </td>
                                    <td class="location" style="text-align: center; padding-bottom: 12px;">
                                        <asp:Label ID="location_label" Text='<%# Eval("Location") %>' runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField HeaderText="" Text="Apply this Job" ItemStyle-CssClass="CEMButton"
                        ButtonType="Button" CommandName="apply" />
                </Columns>
            </asp:GridView>--%>
            <asp:GridView ID="Jobs_Grid" CssClass="grid" runat="server" Style="width: 940px; padding-left: 10px;
                margin-top: 20px;" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                DataKeyNames="JobID" OnRowCommand="OnEventFired" AutoPostback="False" 
                DataSourceID="SqlDataSource3" onrowdatabound="Jobs_Grid_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EmptyDataTemplate>
                    No Records Found.
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="JobCode" InsertVisible="False" SortExpression="JobID">
                        <EditItemTemplate>
                            <asp:Label ID="myjobid1" runat="server" Text='<%# Eval("JobID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="myjobid" runat="server" Text='<%# Bind("JobID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="JobTitle" SortExpression="JobTitle">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("JobTitle") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="title" runat="server" Text='<%# Bind("JobTitle") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:TextBox ID="min" runat="server" Visible="false" Text='<%# Eval("MinimumExperience") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="min" runat="server" Visible="false" Text='<%# Eval("MinimumExperience") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:TextBox ID="max" runat="server" Visible="false" Text='<%# Eval("MaximumExperience") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="max" runat="server" Visible="false" Text='<%# Eval("MaximumExperience") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CareerLevel" SortExpression="CareerLevel">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CareerLevel") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="career" runat="server" Text='<%# String.Concat(Eval("MinimumExperience")+"-", Eval("MaximumExperience")+" years") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="Category">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="category" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="caps" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Skills" SortExpression="Skills">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Skills") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="skill_label" runat="server" Text='<%# Bind("Skills") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location" SortExpression="Location">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="location_label" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Job Description" SortExpression="JD">
                        <EditItemTemplate>
                            <asp:TextBox ID="JD" runat="server" Text='<%# Bind("JD") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <a href='<%# String.Concat("JD.aspx?jobid="+Eval("JobID")) %>' rel="clearbox[width=800,,height=600]"
                                runat="server" id="JobLink">View Job Description</a>
                            <%--<asp:Label ID="JD_label" runat="server" Text='<%# Bind("JD") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField HeaderText="" Text="Apply to this Job" ItemStyle-CssClass="CEMButton"
                        ButtonType="Button" CommandName="apply">
                        <ItemStyle CssClass="CEMButton" VerticalAlign="Middle" HorizontalAlign="Right"></ItemStyle>
                    </asp:ButtonField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#584C47" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1A6081" Font-Bold="True" ForeColor="White" Height="30px"
                    HorizontalAlign="Left" Width="200px" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#000000" Height="40px" HorizontalAlign="Left"
                    VerticalAlign="Middle" CssClass="mart10 blackfont" Width="200px" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cembs_connectionstring %>"
                SelectCommand="SELECT * FROM [JobOpenings] ORDER BY [PostedDate] DESC"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
