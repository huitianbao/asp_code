<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegularExpressionValidator.aspx.cs" Inherits="sy5_book_RegularExpressionValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Email :&nbsp;&nbsp;
        <asp:TextBox ID="txtMail" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 0px; margin-bottom: 0px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Emali 地址错误</asp:RegularExpressionValidator>
    
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="确定" />
&nbsp;
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
