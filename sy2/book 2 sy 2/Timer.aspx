<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timer.aspx.cs" Inherits="sy2_book_2_sy_2_Timer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


    <!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题--><!--有问题-->
    <script src="../../Scripts/jquery-2.1.0.min.js"></script>
    <script>
        function refresh() {
            //设置id属性值为data的元素的呈现内容为客户端的系统时间
            $("#data").text(new Data().toString());
            setTimeout("refresh()", 1000);
        }

    </script>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
    <div id="data">
    
    </div>
    </form>
</body>
</html>
