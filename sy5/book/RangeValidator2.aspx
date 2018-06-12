<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RangeValidator2.aspx.cs" Inherits="sy5_book_RangeValidator2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        成绩：<asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rvGrade" runat="server" ControlToValidate="txtGrade" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="0" Type="Double" Display="Dynamic">应输入1~100之间的数</asp:RangeValidator>
        <br />
        日期：<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rvDate" runat="server" ErrorMessage="RangeValidator" ControlToValidate="txtDate" Display="Dynamic" MaximumValue="2014-1-1" MinimumValue="2000-1-1" Type="Date">日期错误</asp:RangeValidator>
    
    </div>
    </form>
</body>
</html>
