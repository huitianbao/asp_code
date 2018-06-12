<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatLogin.aspx.cs" Inherits="sy6_实验书_ChatRoom_ChatLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我的聊天室<br />
        用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfName" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        <br />
        密码：&nbsp; 
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" Text="登录" ID="btnLogin" OnClick="btnLogin_Click" />
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
