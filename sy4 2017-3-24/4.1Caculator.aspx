<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4.1Caculator.aspx.cs" Inherits="sy4_2017_3_24_4_1Caculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     简易计算器
    </div>
        <asp:TextBox ID="txtDisplay" runat="server" ReadOnly="True" Width="235px"></asp:TextBox>
        <br />
        <asp:Button ID="btnOne" runat="server" OnClick="btnOne_Click" Text="1     " />
        <asp:Button ID="btnTwo" runat="server" OnClick="btnTwo_Click" Text="2    " Width="87px" />
        <asp:Button ID="btnthree" runat="server" OnClick="Button3_Click" Text="3" Width="73px" />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="+" Width="82px" />
        <asp:Button ID="btnSubstract" runat="server" OnClick="btnSubstract_Click" Text="-" Width="87px" />
        <asp:Button ID="btnEqual" runat="server" OnClick="btnEqual_Click" Text="=" Width="71px" />
    </form>
</body>
</html>
