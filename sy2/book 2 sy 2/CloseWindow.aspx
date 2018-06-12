<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseWindow.aspx.cs" Inherits="sy2_book_2_sy_2_CloseWindow" %>

<!DOCTYPE html>



     <!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" OnClientClick="“javascript:window.close();return false;" Text="Button" />
    <a href="/" onclick="javascript:window.close();return false;">关闭</a>
    </div>
    </form>
</body>
</html>
