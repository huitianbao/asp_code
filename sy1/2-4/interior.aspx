<%@ Page Language="C#" AutoEventWireup="true" CodeFile="interior.aspx.cs" Inherits="sy1_interior" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>运用页面样式</title>

 


    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
  


</head>
<body>
    <form id="form1" runat="server">

        <p>
            基于元素选择器的样式
        </p>

        <p title="attr Test">
            基于[attr~=val]属性选择器的样式
        </p>

        <p title="attributeTeset">
            基于[attr*=val]属性选择器的样式
        </p>
       

        <p class="classTest">
            基于累选择器的样式
        </p>

        <div id="divTest">
            基于ID选择器的样式
        </div>

    <div>
    
    </div>
    </form>
</body>
</html>
