<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqSqlQuery.aspx.cs" Inherits="LinqSqlQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="gvProduct" runat="server">
        </asp:GridView>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="投影" />
        <br />
        <br />
        <asp:GridView ID="gvProduct2" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="选择" />
        <br />
        <br />
        <br />
        <asp:GridView ID="gvProduct3" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="排序" />
    
        <br />
        <br />
        <br />
        <asp:GridView ID="gvGroup" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnGroup" runat="server" OnClick="btnGroup_Click" Text="分组" />
    
    </div>
    </form>
</body>
</html>
