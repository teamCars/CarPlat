<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/8
  Time: 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title> (Light Footer)</title>

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


    <!--引入字体 -->
    <link href="css/fonts.css" rel="stylesheet">

    <!-- 引入Bootstrap核心样式文件 -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->

    <link href = "css/firstPage.css" rel="stylesheet">

</head>

<body class="ecommerce">



<!-- 导航栏 -->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div class="row">
        <nav class="navbar navbar-default navbar-fixed-top" style="margin-right: 70px;height:85px;background-color: white;">
            <div class="container-fluid" style="padding-left:100px;padding-top:17px">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="img/firstPage/loga.png" style="width:94px; height:29px;">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-weight: 600;background-color: transparent;"><span id="citynow">上海</span> <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="padding:25px 20px 10px 25px">



                                <div id="city-button">
                                    <form>
                                        <table>
                                            <tr>
                                                <td><input type="button" value="上海" name="shanghai" style="background-color:#00bc93" /></td>
                                                <td><input type="button" value="南京" name="nanjing" /></td>
                                                <td><input type="button" value="杭州" name="hangzhou" /></td>
                                            </tr>
                                            <tr>
                                                <td><input type="button" value="广州" name="guangzhou" /></td>
                                                <td><input type="button" value="深圳" name="shenzhen" /></td>
                                                <td><input type="button" value="北京" name="beijing" /></td>
                                            </tr>
                                            <tr>
                                                <td><input type="button" value="武汉" name="wuhan" /></td>
                                                <td><input type="button" value="成都" name="chengdu" /></td>
                                                <td><input type="button" value="青岛" name="qingdao" /></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                                <br>
                                <div id="city-text"></div>
                                <p class="nav-left_city-choose-des" style="font-size: 12px; color: #999;line-height: 1.8;margin-bottom: 10px;">在重庆、长春、成都、武汉、长沙、西安、昆明、苏州、青岛、厦门、大连、常州、东莞、郑州、南通、洛阳、连云港、佛山、无锡、上饶、福州、镇江、扬州、泰州、石家庄、昆山、义乌、金华、大理、丽江、腾冲、沈阳、太原、天津、南宁、宁波、南昌、济南、三亚、徐州、宿迁、淮安、盐城、台州、温州、合肥、海口、哈尔滨、呼和浩特、齐齐哈尔、威海等城市租车时，请先下载我们的APP：</p>
                                <div id="city-image">
                                    <img src="img/firstPage/twoCode.png" style="display: block; margin: 0 auto; width: 90px;">
                                </div>
                            </ul>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">首页 </a>
                        </li>
                        <li>
                            <a href="#" style="color: #00BC93;font-weight: 600;">租车</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">出车</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">活动</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">问题总结</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">订单</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">关于凹凸</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" style="font-weight: 600;">你好,xx用户</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-weight: 600;background-color: transparent;">我的凹凸 <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="min-width:0px; box-shadow:0px;">
                                <li>
                                    <a href="#" style="font-weight: 500;">个人信息</a>
                                </li>
                                <li>
                                    <a href="#" style="font-weight: 500;">爱车信息</a>
                                </li>
                                <li>
                                    <a href="#" style="font-weight: 500;">我的收藏</a>
                                </li>
                                <li>
                                    <a href="#" style="font-weight: 500;">退出登录</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
</div>




<div class="page-slider margin-bottom-35" style="padding-top: 100px;">
    <div id="carousel-example-generic" class="carousel slide carousel-slider">

        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>

        <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
        <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
    </div>
</div>

<div class="main">
    <div class="container">

        <div class="row margin-bottom-40">

            <div class="col-md-12 col-sm-12">
                <h1>购物车</h1>
                <div class="goods-page">
                    <c:if test="${empty cart.map}">
                       <%-- <div style="margin-top: 30px;margin: auto">
                            <img src="assets/pages/img/products/cart-empty.png">
                        </div>--%>
                        <button class="btn btn-default" type="submit">继续购物  <i class="fa fa-shopping-cart"></i></button>
                    </c:if>
                    <c:if test="${!empty cart.map}">
                    <div class="goods-data clearfix">
                        <div class="table-wrapper-responsive">
                            <table summary="Shopping cart">
                                <tr>
                                    <th class="goods-page-image">图片</th>
                                    <th class="goods-page-description">商品详情</th>
                                    <th class="goods-page-ref-no">商品货号</th>
                                    <th class="goods-page-quantity">数量</th>
                                    <th class="goods-page-price">单价</th>
                                    <th class="goods-page-total" colspan="2">总价</th>
                                </tr>

                                <c:forEach items="${cart.map}" var="entry">
                                <tr>
                                    <td class="goods-page-image">   <%--图片--%>
                                        <input type="hidden" name="id" value="${entry.key}">
                                        <a href="javascript:;"><img src="http://quf7ft80k.hn-bkt.clouddn.com/${entry.value.product.carImg}" alt="${entry.value.product.bid}"></a>
                                    </td>
                                    <td class="goods-page-description"> <%--商品名--%>
                                        <h3><a href="javascript:;">${entry.value.product.bid}${entry.value.product.type}<%--绿色条纹飘飘裙--%></a></h3>
                                    </td>
                                    <td class="goods-page-ref-no"> <%--商品id--%>
                                        ${entry.value.product.cid}<%--javc2133--%>
                                    </td>
                                    <td class="goods-page-quantity">    <%--数量--%>
                                        <div class="product-quantity">
                                            <input id="product-quantity" type="text" name="quantity" value="${entry.value.buyNum}" readonly ><%--class="form-control input-sm"--%>
                                        </div>
                                    </td>
                                    <td class="goods-page-price">   <%--价格--%>
                                        <strong><span>$</span>${entry.value.product.price}</strong>
                                    </td>
                                    <td class="goods-page-total">   <%--小计--%>
                                        <strong><span>$</span>${entry.value.subTotal}</strong>
                                    </td>
                                    <td class="del-goods-col">  <%--删除操作--%>
                                        <a class="del-goods" href="javascript:;">&nbsp;</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>

                        <div class="shopping-total">
                            <ul>
                                <li>
                                    <em>总价</em>
                                    <strong class="price"><span>$</span>${cart.total}</strong>
                                </li>
                                <%--<li>
                                    <em>折扣</em>
                                    <strong class="price"><span>$</span>3.00</strong>
                                </li>
                                <li class="shopping-total-price">
                                    <em>应付款</em>
                                    <strong class="price"><span>$</span>50.00</strong>
                                </li>--%>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-default" type="submit">继续购物  <i class="fa fa-shopping-cart"></i></button>
                    <button class="btn btn-primary" type="submit">提交订单 <i class="fa fa-check"></i></button>
                    </c:if>
                </div>
            </div>

        </div>

    </div>
</div>

<!-- 平台介绍-->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div id="footer">
        <div id="platform" class="footer00">
            <div class = "platdic">
                <ul>
                    <li style="font-size:14px;margin-bottom: 20px;">关于凹凸出行</li>
                    <li><a href = "#">关于我们</a></li>
                    <li><a href = "#">平台规则</a></li>
                    <li><a href = "#">车主责任/法律解读</a></li>
                    <li><a href = "#">凹凸出行会员服务协议</a></li>
                    <li><a href = "#">租车问答</a></li>
                </ul>
            </div>
            <div  class = "platdic">
                <ul>
                    <li style="font-size:14px;margin-bottom: 20px;">凹凸出行服务</li>
                    <li><a href = "#">保障服务条款</a></li>
                    <li><a href = "#">隐私协议</a></li>
                    <li><a href = "#">城市租车</a></li>
                    <li><a href = "#">网络举报知识竞赛</a></li>
                </ul>
            </div>
            <div class = "platdic" style="width:250px ;">
                <ul>
                    <li style="font-size:14px;margin-bottom: 20px;">联系我们</li>
                    <li><a href = "#">客服热线：10100202(8:00-22:00)</a></li>
                    <li><a href = "#">公司总机：021-61920202</a></li>
                    <li><a href = "#">客服邮箱：hello@atzuche.com</a></li>
                    <li><a href = "#">新浪微博：@凹凸租车</a></li>
                    <li><a href = "#">联系地址：上海市徐汇区宜州路188号华鑫慧享城C6栋</a></li>
                </ul>
            </div>
            <div id="imgPlatform">
                <img src = "img/firstPage/twoCode.png" width="90px" height="90px" style="margin-left:100px;">
                <img src = "img/firstPage/twoCode.png" width="90px" height="90px" style="margin-left:80px;">
            </div>
        </div>
        <div id="cityA"></div>
        <div id="companyMsg"></div>
        <div id="footerImg"></div>
    </div>
</div>
<!-- 右边悬浮框-->
<div class="container-fluid">
    <div id="rightFloat">
        <ul>
            <li><img src="img/firstPage/right01.png" class="rightImg"></li>
            <li><img src="img/firstPage/right02.png" class="rightImg"></li>
            <li><img src="img/firstPage/right03.png" class="rightImg"></li>

        </ul>
    </div>
</div>




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
<!-- BEGIN STEPS -->
</body>
<!-- 先引入jQuery核心js文件 -->
<!--<script src="js/jquery-1.11.0.min.js"></script>-->
<!-- 引入BootStrap核心js文件 -->
<!--	<script src="js/bootstrap.min.js"></script>-->

<script src = "js/firstPage.js"></script>

</html>
