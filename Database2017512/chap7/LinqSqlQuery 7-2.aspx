<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqSqlQuery 7-2.aspx.cs" Inherits="chap7_LinqSqlQuery" %>

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
        <br />
        <br />
        <br />
    
        <asp:Button ID="ButtonProject" runat="server" OnClick="ButtonProject_Click" Text="投影" />
    
        <br />
        <br />
        <br />
        <asp:GridView ID="gv2" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="选择" />
        <br />
        <br />
        <br />
        <asp:GridView ID="gvOrder" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click" Text="排序" />
    
        <br />
        <br />
        <asp:GridView ID="gvGroup" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnGroup" runat="server" OnClick="btnGroup_Click" Text="分组" />
        <br />
        <br />
        <asp:GridView ID="gvPoly" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnPoly" runat="server" OnClick="btnPoly_Click" Text="聚合" />
        <br />
        <br />
        <br />
        <asp:GridView ID="gvQuote" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnQuote" runat="server" OnClick="btnQuote_Click" Text="连接" />
        <br />
        <br />
        <asp:GridView ID="gvJoin" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnJoin" runat="server" OnClick="btnJoin_Click" Text="Join" />
    
    </div>
    </form>
</body>
</html>
