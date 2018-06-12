<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryString1.aspx.cs" Inherits="sy6_QueryString1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/sy6/QueryString2.aspx?username=张三&age=23">传递字符串到Query2中</asp:HyperLink>
    <div>
    
    </div>
    </form>
</body>
</html>
