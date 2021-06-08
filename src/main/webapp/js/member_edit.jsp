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
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="shortcut icon" href="favicon.ico">

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->

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
            <li class="active">注册</li>
        </ul>
        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12">
                <h1>新用户注册</h1>
                <div class="panel-group checkout-page accordion scrollable" id="checkout-page">
                    <div id="payment-address" class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-address-content" class="accordion-toggle">
                                     账户 &amp; 详细信息
                                </a>
                            </h2>
                        </div>
                        <form action="#" method="post">
                            <div <%--id="payment-address-content" class="panel-collapse collapse"--%>>
                            <div class="panel-body row">
                                <div class="col-md-6 col-sm-6" style="margin-left: 270px">

                                    <div class="form-group">
                                        <label for="name">会员名称 <span class="require">*</span></label>
                                        <input type="text" id="name" class="form-control" name="name">
                                    </div>
<%--                                     <div class="form-group">
                                         <label for="password">密码 <span class="require">*</span></label>
                                          <input type="text" id="password" class="form-control" name="password">
                                     </div>--%>
                                        <div class="form-group">
                                            <label for="reallyName">真实名字 <span class="require">*</span></label>
                                            <input type="text" id="reallyName" class="form-control" name="reallyName">
                                        </div>
                                        <div class="form-group">
                                            <label for="age">年龄 <span class="require">*</span></label>
                                            <input type="text" id="age" class="form-control" name="age">
                                        </div>
                                        <div class="checkbox">

                                            <span style="font:400 13px 'Open Sans', Arial, sans-serif">性别</span><span class="require">*</span>
                                                <span style="padding-left: 25px"><input type="checkbox" id="sex" name="sex" value="男">男</span>
                                                <span style="padding-left: 25px"><input type="checkbox"  name="sex" value="女">女</span>
                                       </div>
                                        <div class="form-group">
                                            <label for="professsion">职业 <span class="require">*</span></label>
                                            <input type="text" id="professsion" class="form-control" name="professsion">
                                        </div>
                                        <div class="form-group">
                                            <label for="address">家庭住址 <span class="require">*</span></label>
                                            <input type="text" id="address" class="form-control" name="address">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">电子邮箱 <span class="require">*</span></label>
                                            <input type="text" id="email" class="form-control" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="question">密保问题 <span class="require">*</span></label>
                                            <input type="text" id="question" class="form-control" name="question">
                                        </div>
                                        <div class="form-group">
                                            <label for="result">答案 <span class="require">*</span></label>
                                            <input type="text" id="result" class="form-control" name="result">
                                        </div>
                                </div>
                                <hr>
                                <div class="col-md-12">
                                    <button class="btn btn-primary  pull-right" type="submit" data-toggle="collapse" data-parent="#checkout-page" data-target="#shipping-address-content" id="button-payment-address" style="background-color: #FF5757;width: 120px">注册</button>
                                    <div class="checkbox pull-right">

                                    </div>
                                </div>
                            </div>
                            </div>
                        </form>
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

<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script>
<script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script>

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

</body>
</html>
</html>
