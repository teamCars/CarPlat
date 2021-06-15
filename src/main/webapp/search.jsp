<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/8
  Time: 1:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set  var="path" scope="session" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>列表页-手机页面！</title>
    <meta name="description" content="品优购JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,品优购" />
    <!-- 引入facicon.ico网页图标 -->
    <link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/>
    <!-- 引入css 初始化的css 文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入公共样式的css 文件 -->
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入 列表页面的css文件 -->
    <link rel="stylesheet" href="css/list.css">

    <!--引入字体 -->
    <link href="css/fonts.css" rel="stylesheet">

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href = "css/firstPage.css" rel="stylesheet">
</head>
<body>

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

                                <!--<p class="nav-left_city-choose-des">在重庆、长春、成都、武汉、长沙、西安、口、哈尔、威海等城市租车时，请先下载我们的APP：</p>
                          <div class="nav-left_city-choose-qrcode">
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
                            <a href="${pageContext.request.contextPath}/product?method=findProducts&type='1'" style="color: #00BC93;font-weight: 600;">租车</a>
                        </li>
                        <li>
                            <a href="toCar.jsp" style="font-weight: 600;">出车</a>
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


<div class="header w" >

    <!-- search -->
    <form action="${path}/product?method=findProducts" method="post">
        <div class="search" style="margin-top: 100px;">

            <input type="text" class="text" placeholder="Search" id="type" name="type" value="${type}">
            <button type="submit" class="btn">搜索</button>
        </div>
    </form>



</div>


<!-- 列表页的内容区域 -->
<div class="sk_container w"  style="padding-top: 100px;">

    <div class="sk_bd clearfix">
        <ul>
            <c:forEach items="${list}" var="product">
                <a href="${path}/product?method=findProductByCid&cid=${product.cid}">

                    <li class="sk_goods">
                        <img src="http://quf7ft80k.hn-bkt.clouddn.com/${product.carImg}" alt="">
                        <h5 class="sk_goods_title">${product.cid}</h5>
                        <p class="sk_goods_price"><em>${product.price}</em> <del>￥6988</del></p>
                    </li>
                </a>

            </c:forEach>


        </ul>
    </div>
    <!-- page分页制作 -->

   <%-- <c:if test="${vo.list.size} ne 0">

        <div class="page">
			<span class="page_num">
                &lt;%&ndash;    不允许点击上一页   &ndash;%&gt;
                <c:if test="${vo.pageNow eq 1}">
                    <a href="#" class="pn_prev">&lt;&lt;上一页 </a>
                </c:if>

                &lt;%&ndash; 允许点击上一页&ndash;%&gt;
				<c:if test="${vo.pageNow ne 1}">
                    <a href="${path}/product?method=findProducts&bid=${vo.query1}&type=${vo.query2}&pageNow=${vo.pageNow-1}" class="pn_prev">&lt;&lt;上一页 </a>
                </c:if>

                &lt;%&ndash;循环展示页码&ndash;%&gt;

                 <c:forEach begin="1" end="${vo.myPages}" var="page">

                     <c:if test="${page eq vo.pageNow}">
                         <a href="JavaScript:void(0)">${page}</a>
                     </c:if>

                     <c:if test="${page ne vo.pageNow}">
                         <a href="${path}/product?method=findProducts&bid=${vo.query1}&type=${vo.query2}&pageNow=${page}">${page}</a>
                     </c:if>

                 </c:forEach>

				<a href="#" class="dotted">...</a>
                &lt;%&ndash;允许点击下一页&ndash;%&gt;
                <c:if test="${vo.pageNow ne vo.myPages}">
                    <a href="${path}/product?method=findProducts&bid=${vo.query1}&type=${vo.query2}&pageNow=${vo.pageNow+1}" class="pn_prev">&lt;&lt;上一页 </a>
                    <a href="#" class="pn_next">下一页&gt;&gt;</a>
                </c:if>
                &lt;%&ndash;不允许点击下一页&ndash;%&gt;
                <c:if test="${vo.pageNow eq vo.myPages}">

                    <a href="#" class="pn_next">下一页&gt;&gt;</a>
                </c:if>





			</span>
            <span class="page_skip">
				共10页 到第
				<input type="text">
				页
				<button>确定</button>
			</span>
        </div>





    </c:if>--%>


</div>

<!-- 列表页的内容区域 -->



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

</body>


<!-- 先引入jQuery核心js文件 -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>

<script src = "js/firstPage.js"></script>
<script>
    // 查询所有商品分类
    $.ajax({
        type:"get",
        url:"${path}/brand?method=findAllBrands",
        datatype:"json",
        success:function (list) {
            for (var i in list) {
                var $li = "<li><a href='${path}/product?method=findProducts&bid="+list[i].bid+"'>"+list[i].bname+"</a></li>"
            }
        }
    })
</script>


</html>
