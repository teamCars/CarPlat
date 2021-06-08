<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Marrying - 友情链接</title>

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

    <script src="resources/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            var nav=$(".pre-header"); //得到导航对象
            var win=$(window); //得到窗口对象
            var sc=$(document);//得到document文档对象。
            win.scroll(function(){
                if(sc.scrollTop()>=100){
                    nav.addClass("fixednav");
                    $(".navTmp").fadeIn();
                }else{
                    nav.removeClass("fixednav");
                    $(".navTmp").fadeOut();
                }
            })
        })
    </script>


</head>
<body class="ecommerce">
    <div class="color-panel hidden-sm">
    <div class="color-mode-icons icon-color"></div>
    <div class="color-mode-icons icon-color-close"></div>
    <div class="color-mode">
        <p>THEME COLOR</p>
        <ul class="inline">
            <li class="color-red current color-default" data-style="red"></li>
            <li class="color-blue" data-style="blue"></li>
            <li class="color-green" data-style="green"></li>
            <li class="color-orange" data-style="orange"></li>
            <li class="color-gray" data-style="gray"></li>
            <li class="color-turquoise" data-style="turquoise"></li>
        </ul>
    </div>
</div>

<jsp:include page="head.jsp"></jsp:include>



    <div class="page-slider margin-bottom-35">
    <div id="carousel-example-generic" class="carousel slide carousel-slider">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>
        <!-- Controls -->
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
                <h1>销售排行</h1>
                <div class="goods-page">
                    <div class="goods-data clearfix">
                        <div class="table-wrapper-responsive">
                            <table <%--summary="Shopping cart"--%>>
                                <tr>
                                    <th class="goods-page-image" style="width: 300px" >链接图片</th>
                                    <th class="goods-page-description" style="margin-left: 100px" >链接名称</th>
                                    <th class="goods-page-ref-no">添加时间</th>
                                    <%--<th class="goods-page-price">商品价格</th>--%>
                                </tr>
                                <c:forEach items="${pageInfo.data}" var="link">
                                <tr>
                                    <td class="goods-page-image">
                                        <a href="${link.linkAddress}"><img src="${link.linkImage}"  alt="${good.linkName}" style="width: 145px;height: 145px"></a>
                                    </td>
                                    <td class="goods-page-description">
                                        <h3 style="margin-top: 65px"><a href="${link.linkAddress}" style="color: #080808;font-size: 18px">${link.linkName}</a></h3>
                                    </td>
                                    <td class="goods-page-price" style="padding-top: 87px;color: #080808">
                                        <h3>${link.createTime}</h3>
                                    </td>
                                    <%--<td class="goods-page-price" style="padding-top: 87px">
                                        <strong><span>￥</span>${good.freePrice}</strong>
                                    </td>--%>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-sm-8" margin="0 auto" style="padding-right: 200px">
                        <ul class="pagination pull-right">
                            <c:if test="${pageInfo.page != 1}">
                             <li><a href="${pageContext.request.contextPath}/link.do?method=findAllLink&currPage=${pageInfo.page+1}">&laquo;</a></li>
                            </c:if>
                            <c:if test="${pageInfo.page == 1}">
                                <li><a href="javascript:void(0)">&laquo;</a></li>
                            </c:if>
                            <%--<li><a href="javascript:;">1</a></li>
                            <li><a href="javascript:;">2</a></li>
                            <li><a href="javascript:;">3</a></li>
                            <li><a href="javascript:;">4</a></li>
                            <li><a href="javascript:;">5</a></li>--%>
                            <c:if test="${pageInfo.page != pageInfo.totalPage}">
                                <li><a href="${pageContext.request.contextPath}/link.do?method=findAllLink&currPage=${pageInfo.page+1}">&raquo;</a></li>
                            </c:if>
                            <c:if test="${pageInfo.page == pageInfo.totalPage}">
                                <li><a href="javascript:void(0)">&raquo;</a></li>
                            </c:if>
                        </ul>
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
