<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chengjidengji.aspx.cs" Inherits="sy3_book_page_20_chengjidengji" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtinput" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text=" 等级" />
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
