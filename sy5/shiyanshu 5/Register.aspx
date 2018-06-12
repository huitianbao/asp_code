<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="sy5_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div aria-sort="none">
    
        用户名：<asp:TextBox ID="txtName" runat="server">您的姓名</asp:TextBox>
        

    
        <asp:RequiredFieldValidator ID="rfvName" runat="server" BackColor="Red" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="请输入用户名" ForeColor="White" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
&nbsp; 密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="晴输入密码" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        确认密码：<asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="请确认密码" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="密码与确认密码不一致" SetFocusOnError="True"></asp:CompareValidator>
        <br />
&nbsp; 生日：<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        

    
    </div>
    </form>
</body>
</html>
