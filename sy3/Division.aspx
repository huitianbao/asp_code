<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Division.aspx.cs" Inherits="sy3_Division" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDivsor" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="被除数"></asp:Label>
        <br />
        <asp:TextBox ID="txtDividend" runat="server" Width="170px"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="除数"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Height="29px" OnClick="btnSubmit_Click" Text="提交" />
    
    </div>
    </form>
</body>
</html>
