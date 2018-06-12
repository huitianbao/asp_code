<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DivLayoult.aspx.cs" Inherits="sy1_book_1_page_11_DivLayoult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top">
        <div id="logo_navi_stat">
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/sy1/book 1 page 11/image/IMG_20170106_150223.jpg" />
            <div id="logo" style="float:left;width 30%">

            </div>
            <div id="navi" style="background-color:#99CCFF;height:30px">

                <asp:LinkButton ID="InkbtnDefault" runat="server" OnClick="imgLogo_Click">首页</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InkbtnReset" runat="server"> 个性重置</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InkbtnRegister" runat="server">注册</asp:LinkButton>

            </div>
            <div id="stat" style="background-color:#CCFFFF;height:30px">

                登录状态</div>
        </div>

        <div id="postion" style="background-color:#33CCCC">

            你的位置</div>
    
    </div>
    </form>
</body>
</html>
