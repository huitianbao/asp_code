﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDSGrid 7-1.aspx.cs" Inherits="chap7_LinqDSGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" TableName="Category">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
