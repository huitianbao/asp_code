<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="sy1_sy1_test_7_1_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        分类Id：<asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
        <br />
        分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
&nbsp;描述：<asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="修改" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnReturn" runat="server" OnClick="Button2_Click" Text="返回" />
    
    </div>
    </form>
</body>
</html>
