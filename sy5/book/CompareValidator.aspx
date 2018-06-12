<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompareValidator.aspx.cs" Inherits="sy5_book_cv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <!--有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题有问题-->

    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;
            密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            确认密码：<asp:TextBox ID="txtxPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtxPasswordAgain" Display="Dynamic">确认密码与密码不一致</asp:CompareValidator>
        </p>
        
        <p>
            &nbsp;&nbsp;&nbsp;
            答案：<asp:TextBox ID="txtAnswer" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <asp:CompareValidator ID="cvAnswer" runat="server" ControlToCompare="txtAnswer" 
                ValueToCompare="A" Display="Dynamic" ErrorMessage="CompareValidator" ControlToValidate="txtAmount">答案错误</asp:CompareValidator>
        </p>
        
        
        <p>
            &nbsp;&nbsp;&nbsp;
            金额：<asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvAmount" runat="server" ControlToCompare="txtAmount" Display="Dynamic" ErrorMessage="CompareValidator" Operator="DataTypeCheck"
                 Type="Currency" ControlToValidate="txtAnswer">必须输入Currency类型

            </asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="Button" runat="server" OnClick="Button_Click" Text="确定" />
        </p>
        
        
    </form>
</body>
</html>
