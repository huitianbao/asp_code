﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cross1.aspx.cs" Inherits="sy6_Cross1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        密码 ：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" PostBackUrl="~/sy6/Cross2.aspx" Text="Button" />
    
    </div>
    </form>
</body>
</html>
