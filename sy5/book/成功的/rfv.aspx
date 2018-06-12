<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rfv.aspx.cs" Inherits="sy5_book_rfv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户名：<asp:TextBox ID="TextBox1" runat="server" Width="186px">您的姓名</asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="不能与初始值相同" InitialValue="您的姓名">不能与初始值相同</asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
