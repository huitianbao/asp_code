﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choice.aspx.cs" Inherits="sy4_2017_3_24_Choice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:PlaceHolder ID="plhChoice" runat="server"></asp:PlaceHolder>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="提交" />
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
