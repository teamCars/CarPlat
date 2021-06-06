<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/1
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 声明文档的编码集 -->
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <title>汽车租赁用户首页</title>

    <!--引入字体 -->
    <link href="css/fonts.css" rel="stylesheet">

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href = "css/firstPage.css" rel="stylesheet">

</head>
<body>
<div class = "head">
    <%@include file="headAfterLogin.jsp"%>
</div>
<div class = "main">
    <%@include file="firstPageMain.jsp"%>
</div>
<div class = "foot">
    <%@include file="footer.jsp"%>
</div>
<div class = "right">
    <%@include file="right.jsp"%>
</div>
$END$
</body>
<!-- 先引入jQuery核心js文件 -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>

<script src = "js/firstPage.js"></script>
</html>


