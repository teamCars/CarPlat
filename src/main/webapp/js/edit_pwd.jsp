<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fsh15
  Date: 2020/9/24
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Marrying - 会员登录</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content=" description" name="description">
    <meta content=" keywords" name="keywords">
    <meta content="keenthemes" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/pages/css/animate.css" rel="stylesheet">
    <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="assets/pages/css/components.css" rel="stylesheet">
    <link href="assets/pages/css/slider.css" rel="stylesheet">
    <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="assets/corporate/css/style.css" rel="stylesheet">
    <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
    <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="assets/corporate/css/custom.css" rel="stylesheet">
</head>
<body class="ecommerce">
<jsp:include page="head.jsp"></jsp:include>
    <div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">首页</a></li>
            <li><a href="">商店</a></li>
            <li class="active">登录</li>
        </ul>
        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12">
                <h1></h1>
                <div class="panel-group checkout-page accordion scrollable" id="checkout-page">
                    <div id="checkout" class="panel panel-default" style="padding-bottom: 300px">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#checkout-page" href="#checkout-content" class="accordion-toggle">
                                    密码修改
                                </a>
                            </h2>
                        </div>
                        <div id="checkout-content" class="panel-collapse collapse in" >
                            <div class="panel-body row" style="padding-top: 250px;padding-left: 50px">
                                <div class="col-md-6 col-sm-6">
                                    <img src="/assets/3333.png" style="padding-left: 320px">
                                </div>
                                <div class="col-md-6 col-sm-6" style="margin-left:260px;">
                                    <%--<h3>欢迎！</h3>--%>
                                    <c:if test="${code1==null&&code==null}">
                                        <form role="form" action="${pageContext.request.contextPath}/member.do?method=checkRS" method="post">
                                    </c:if>
                                    <c:if test="${code==1}">
                                        <form role="form" action="${pageContext.request.contextPath}/member.do?method=updatePwd" method="post">
                                    </c:if>
                                        <div class="form-group">
                                            <label for="email-login">账号</label>
                                            <input type="text" id="email-login" class="form-control" name="name" value="${member.name}">
                                        </div>
                                        <c:if test="${code ==null}">
                                        <div class="form-group">
                                            <label for="password-login">密保问题</label>
                                            <input type="text" id="password-question" class="form-control" name="question" value="${member.question}">
                                        </div>
                                        <div class="form-group">
                                            <label for="password-login">答案</label>
                                            <input type="text" id="result" class="form-control" name="result" placeholder="请输入答案">
                                        </div>
                                        </c:if>
                                        <c:if test="${code==1}">
                                            <div class="form-group">
                                                <label for="password-login">密码</label>
                                                <input type="password" id="password-login" class="form-control" name="password" placeholder="请输入新密码">
                                            </div>
                                        </c:if>
                                        <%--<a href="${pageContext.request.contextPath}/member.do?method=editPwd">忘记密码?</a><span style="color: red;margin-left: 80px">${msg}</span>--%><span style="color: red;margin-left: 80px">${error}</span>
                                        <c:if test="${code==null}">
                                            <div class="padding-top-20" style="margin-left: 190px">
                                                <button class="btn btn-primary" type="submit" style="width: 150px;height: 50px;background-color: #FF5757">提交答案</button>
                                            </div>
                                        </c:if>
                                        <c:if test="${code==1}">
                                            <div class="padding-top-20" style="margin-left: 190px">
                                                <button class="btn btn-primary" type="submit" style="width: 150px;height: 50px;background-color: #FF5757">提交密码</button>
                                            </div>
                                        </c:if>
                                        <hr>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="foot.jsp"></jsp:include>

<script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

<script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
<script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();
        Layout.initOWL();
        Layout.initImageZoom();
        Layout.initTouchspin();
        Layout.initTwitter();
    });
</script>
<!-- BEGIN STEPS -->
</body>
</html>
</html>
