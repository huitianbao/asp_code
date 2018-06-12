<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompareValidator2.aspx.cs" Inherits="sy5_book_CompareValidator2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp; 密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        确认密码确认密码：<asp:TextBox ID="txtPasswordAgain" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" ErrorMessage="CompareValidator">密码与确认密码不一致</asp:CompareValidator>
        <br />
        答案：&nbsp;&nbsp; 
        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvAnswer" runat="server" ControlToCompare="txtAnswer"
            ErrorMessage="CompareValidator">答案错误</asp:CompareValidator>
        <br />
        金额：&nbsp;&nbsp; <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvAmount" runat="server" ErrorMessage="CompareValidator" ControlToValidate="txtAmount" Operator="DataTypeCheck" Type="Currency">必须输入Current类型</asp:CompareValidator>
    
    </div>
    </form>
</body>
</html>
