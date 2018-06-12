<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RangeValidator.aspx.cs" Inherits="sy5_book_RangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题-->

    
        成绩：<asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rvGrade" runat="server" 
            ControlToValidate="txtGrade" 
            ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="0" Type="Integer">
            应输入1~100之间的数</asp:RangeValidator>
        <br />
        日期：<asp:TextBox ID="txtDate" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:RangeValidator ID="rvDate" runat="server" 
            ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="RangeValidator"
             MaximumValue="2017-3-31" MinimumValue="2000-1-1" Type="Date">日期错误</asp:RangeValidator>
    
        <br />
        <asp:Button ID="queding" runat="server" OnClick="Button1_Click" Text="确定" />
    
    </div>
    </form>
</body>
</html>
