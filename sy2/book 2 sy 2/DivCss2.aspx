﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DivCss2.aspx.cs" Inherits="sy2_book_2_sy_2_DivCss2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../Styles/TableDiv.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
        <div id="logo_navi_stat">
            <div id="logo">

                <asp:Image ID="Image1" runat="server" Height="43px" ImageUrl="~/imge/Logo.gif" Width="160px" />

            </div>

            <div id="navigation">

                <asp:LinkButton ID="lnkbtnDefault" runat="server">首页</asp:LinkButton>
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnReset" runat="server">个性重置</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnRegister" runat="server">注册</asp:LinkButton>

            </div>

            <div id="status">

                登录状态</div>

        </div>

        <div id="position">

            您的位置</div>
      
    </div>
    </form>
</body>
</html>
