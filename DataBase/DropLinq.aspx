<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropLinq.aspx.cs" Inherits="DataBase_sy8_DropLinq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="43px" Width="515px">
        </asp:DropDownList>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
