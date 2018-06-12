<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="sy6_实验书_ChatRoom_Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../../../Scripts/jquery-3.1.1.min.js"></script>
    
        <!-- refresh() 函数以500毫秒为间隔，连续地局部刷新div层divMsg,其中$.ajax()调用jQuery提供的ajax()方法，用于执行异步请求-->
    <script type="text/javascript">
        function refresh() {
            $.ajax({
                url: "Ajax.aspx",   //发送异步请求的页面地址
                cache: false,        //不缓存异步请求的页面
                success: function (text) {
                    //设置div层的divMsg 的innerHTML属性，其中text为异步请求页面返回的数据
                    document.getElementById("divMsg").innerHTML = text;
                },
                //异步请求成功时的函数
                error: function (jqXHR, textStatus, errorThrown) {
                    alert()

                }

            })
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblName" runat="server"></asp:Label>
        <br />
        <asp:TextBox ID="txtMessage" runat="server" Height="135px" TextMode="MultiLine" Width="260px"></asp:TextBox>
        <br />
        <asp:Button ID="btnSend" runat="server" Text="发送" />
        <br />
    
    </div>
    </form>
</body>
</html>
