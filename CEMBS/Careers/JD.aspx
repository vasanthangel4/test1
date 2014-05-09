<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JD.aspx.cs" Inherits="Careers_JD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            padding:10px;
            font-family:Segoe UI;
            font-size:13px;
            background:#f8f8f8;
        }
        #GridView1
        {
            
        }
        #GridView1 th
        {
            border: 1px solid #f8f8f8;
        }
        #GridView1 td
        {
            border: 1px solid #f8f8f8;
        }
        .CEMButton
        {
            background:#534C4A;
            border: none;
            color: #fff;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            font-size: 12px;
            padding: 5px;
            cursor:pointer;
            margin-top:5px;
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="border: 1px solid #fff;"
        DataSourceID="LinqDataSource1">
       <EmptyDataTemplate>
          No Job Description for this Position
        </EmptyDataTemplate>
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("JD") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>                
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("JobTitle") %>' style="font-weight:bold;font-size:medium;"></asp:Label>
                    <p></p>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("JD") %>'></asp:Label>
                    <p></p>
                    <asp:Label ID="Label3" runat="server" Visible="false" Text='<%# Bind("JobID") %>'></asp:Label>
                    <asp:Label id="Label4" runat="server" Visible="false" Text='<%# Bind("Skills") %>'></asp:Label><p></p><br />
                    <a href='<%# String.Concat("SubmitProfile.aspx?jobid="+Eval("JobID")) %>' rel="clearbox[width=800,,height=600]" class="CEMButton" runat="server"  id="JobLink">Apply to this Job</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="helperDataClassesDataContext"
        EntityTypeName="" Select="new (JD, JobTitle, JobID, Category, Skills)" TableName="JobOpenings"
        Where="JobID == @JobID">
        <WhereParameters>
            <asp:QueryStringParameter Name="JobID" QueryStringField="jobid" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    </form>
</body>
</html>
