<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/8
  Time: 1:09
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

                                <!--<p class="nav-left_city-choose-des">在重庆、长春、成都、武汉、长沙、西安、昆明、苏州、青岛、厦门、大连、常州、东莞、郑州、南通、洛阳、连云港、佛山、无锡、上饶、福州、镇江、扬州、泰州、石家庄、昆山、义乌、金华、大理、丽江、腾冲、沈阳、太原、天津、南宁、宁波、南昌、济南、三亚、徐州、宿迁、淮安、盐城、台州、温州、合肥、海口、哈尔滨、呼和浩特、齐齐哈尔、威海等城市租车时，请先下载我们的APP：</p>
                          <div class="nav-left_city-choose-qrcode">
                              <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6ODY2QTY2OTNDMDBEMTFFOTk4RUFDMDhFQjFENTZDMzYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ODY2QTY2OTRDMDBEMTFFOTk4RUFDMDhFQjFENTZDMzYiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo4NjZBNjY5MUMwMEQxMUU5OThFQUMwOEVCMUQ1NkMzNiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo4NjZBNjY5MkMwMEQxMUU5OThFQUMwOEVCMUQ1NkMzNiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjVx3SoAAAMAUExURTk5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" alt="下载 APP">
                          </div>-->

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
                            <a href="firstPageAfter.jsp" style="font-weight: 600;">首页 </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/product?method=findProducts&type='1'" style="font-weight: 600;">租车</a>
                        </li>
                        <li>
                            <a href="toCar.jsp" style="color: #00BC93;font-weight: 600;">出车</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/product?method=active" style="font-weight: 600;">活动</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">问题总结</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/inOrder?method=findMyOrder" style="font-weight: 600;">订单</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">关于凹凸</a>
                        </li>


                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" style="font-weight: 600;">你好,${user.username}用户</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-weight: 600;background-color: transparent;">我的凹凸 <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="min-width:0px; ">
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
        <ul class="breadcrumb">
            <li><a href="index.html">首页</a></li>
            <li><a href="">商店</a></li>
            <li class="active">结账</li>
        </ul>

        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12">
                <h1>结账</h1>

                <div class="panel-group checkout-page accordion scrollable" id="checkout-page">

                    <div>
                        <div class="panel-body row">
                            <div class="col-md-12 clearfix">
                                <div class="table-wrapper-responsive">
                                    <div class="form-group">
                                        <label for="firstname-dd">收货地址<span class="require">*</span></label>
                                        <input type="text" id="firstname-dd" class="form-control" value="${inOrder.user.address}">
                                    </div>
                                    <table>
                                        <tr>
                                            <th class="checkout-image">图片</th>
                                            <th class="checkout-description">描述</th>
                                            <th class="checkout-quantity">天数</th>
                                            <th class="checkout-price">价格</th>
                                            <th class="checkout-total">总价</th>
                                        </tr>
                                        <c:forEach items="${inOrder.inOrderItems}" var="items">
                                            <tr>
                                                <td class="checkout-image">
                                                    <a href="javascript:;"><img src="http://quf7ft80k.hn-bkt.clouddn.com/${items.product.carImg}" alt="Berry Lace Dress"></a>
                                                </td>
                                                <td class="checkout-description">
                                                    <h3><a href="javascript:;">${items.product.type}</a></h3>
                                                    <p>- 品牌: ${items.product.bid}</p>
                                                    <em>更多信息</em>
                                                </td>
                                                <td class="checkout-quantity">${items.dayNum}</td>
                                                <td class="checkout-price"><strong><span>￥</span>${items.product.price}</strong></td>
                                                <td class="checkout-total"><strong><span>￥</span>${items.subTotal}</strong></td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <div class="checkout-total-block">
                                    <ul>
                                        <li class="checkout-total-price">
                                            <em>总价</em>
                                            <strong class="price"><span>￥</span>${inOrder.total}</strong>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                                <font color="red">${msg}</font>
                                <button class="btn btn-primary pull-right" type="submit" id="button-confirm"
                                onclick="affirmOrder()">确认订单</button>
                                <script>
                                    function affirmOrder() {
                                        var address = $("#firstname-dd").val();
                                        window.location.href='${pageContext.request.contextPath}/inOrder?method=affirmOrder&address='+address;
                                    }
                                </script>
                                <button type="button" class="btn btn-default pull-right margin-right-20">取消</button>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>
</div>


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

</body>
<script src = "js/firstPage.js"></script>
</html>