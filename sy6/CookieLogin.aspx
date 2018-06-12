<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CookieLogin.aspx.cs" Inherits="sy6_Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户名：<asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="确定" />
    
    </div>
    </form>
</body>
</html>
