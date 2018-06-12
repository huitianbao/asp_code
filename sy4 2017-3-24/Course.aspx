<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="sy4_2017_3_24_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        学年：<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp; 学期<asp:DropDownList ID="ddlTerm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTerm_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp; 分院<asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp; 教师<asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
