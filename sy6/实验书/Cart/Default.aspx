﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="sy6_实验书_Cart_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBoxList ID="chklsPet" runat="server">
            <asp:ListItem>盲鱼</asp:ListItem>
            <asp:ListItem>波斯猫</asp:ListItem>
            <asp:ListItem>斑马</asp:ListItem>
            <asp:ListItem>绵羊</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="放入购物车" />
&nbsp;
        <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="查看购物车" />
    
    </div>
    </form>
</body>
</html>
