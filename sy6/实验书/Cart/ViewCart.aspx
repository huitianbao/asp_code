<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="sy6_实验书_Cart_ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
        <asp:CheckBoxList ID="chklsPet" runat="server">
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnClear" runat="server" OnClick="Button1_Click" Text="清空购物车" />
&nbsp;<asp:Button ID="btnContinue" runat="server" OnClick="Button2_Click" Text="继续购物" />
    
    </div>
    </form>
</body>
</html>
