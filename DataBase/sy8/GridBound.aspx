<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridBound.aspx.cs" Inherits="sy8_GridBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        </asp:GridView>
        <br />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" Select="new (Product)" TableName="Category">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
