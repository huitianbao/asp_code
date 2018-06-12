<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableCss.aspx.cs" Inherits="sy2_shiyanshu_TableCss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 332px;
        }
        .auto-style4 {
            width: 101px;
        }
        .auto-style5 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td rowspan="2" class="auto-style4">
                    <asp:Image ID="ImgLogo" runat="server" DescriptionUrl="~/imge/Logo.gif" Height="40px" ImageUrl="~/imge/Logo.gif" Width="103px" />
                </td>
                <td class="auto-style5">
                    <asp:LinkButton ID="LnkbtnDefault" runat="server" OnClick="LinkButton1_Click">首页</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="lnkbtnReset" runat="server">个性重置</asp:LinkButton>
                </td>
                <td class="navigation">
                    <asp:LinkButton ID="lnkbtnRegister" runat="server">注册</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="3">登录状态</td>
            </tr>
            <tr>
                <td colspan="4">您的位置</td>
            </tr>
        </table>
    </form>
   
</body>
</html>
