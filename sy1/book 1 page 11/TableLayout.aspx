<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableLayout.aspx.cs" Inherits="sy1_book_1_page_11_TableLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
        }

        .auto-style3 {
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td rowspan="2" style="width: 100px">
                    <asp:Image ID="ImageLogo" runat="server" Height="92px" ImageUrl="~/sy1/book 1 page 11/image/IMG_20170106_150223.jpg" Width="165px" />
                </td>
                <td style="text-align: center; background-color: #99CCFF">
                    <asp:LinkButton ID="InkbtnDefault" runat="server" OnClick="InkbtnDefault_Click">首页</asp:LinkButton>
                </td>
                <td style="text-align: center; background-color: #99CCFF">
                    <asp:LinkButton ID="InkbtnReset" runat="server" OnClick="InkbtnReset_Click">个性重置</asp:LinkButton>
                </td>
                <td style="text-align: center; background-color: #99CCFF">
                    <asp:LinkButton ID="InkbtnRegister" runat="server">注册</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCFFFF">登录状态</td>
            </tr>
            <tr>
                <td style="background-color: #33CCCC">您的位置</td>
            </tr>
        </table>
    </form>
</body>
</html>
