<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomValidator    Client.aspx.cs" Inherits="sy5_book_CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        function clientValidate(source, args) { 
            if ((args.Value % 2) == 0) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        数值：<asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="cvInput" runat="server" 
            ErrorMessage="CustomValidator" 
            ClientValidationFunction="ClientValidate" 
            ControlToValidate="txtInput" OnServerValidate="cvInput_ServerValidate">不是一个偶数</asp:CustomValidator>
    
    </div>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="确定" />
&nbsp;
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
