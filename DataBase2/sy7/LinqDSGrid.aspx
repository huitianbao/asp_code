<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDSGrid.aspx.cs" Inherits="sy7_LinqDSGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
        </asp:LinqDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="LinqDataSource1">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
