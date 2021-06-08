<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/8
  Time: 0:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>手机详情页！</title>

    <meta name="description" content="品优购JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,品优购" />
    <!-- 引入facicon.ico网页图标 -->
    <!--<link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/> -->
    <!-- 引入css 初始化的css 文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入公共样式的css 文件 -->
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入详情页面的css文件 -->
    <link rel="stylesheet" href="css/detail.css">

    <!--引入字体 -->
    <link href="css/fonts.css" rel="stylesheet">

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href = "css/firstPage.css" rel="stylesheet">
</head>
<body>
<!-- 顶部快捷导航start -->
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



<!-- nav end -->

<!-- 详情页内容部分	 -->
<div class="de_container w" style = "padding-top:100px;font-size:12px" >
    <!-- 面包屑导航 -->
    <div class="crumb_wrap">
        <a href="#">手机、数码、通讯</a>
        〉  <a href="#">手机   </a>
        〉  <a href="#">Apple苹果   </a>
        〉  <a href="#">iphone 6S Plus系类</a>
    </div>
    <!-- 产品介绍模块 -->
    <div class="product_intro clearfix">
        <!-- 预览区域 -->
        <div class="preview_wrap fl">
            <div class="preview_img">
                <img src="img/detail/s3.png" alt="">
            </div>

            <div class="preview_list">
                <a href="#" class="arrow_prev"></a>
                <a href="#" class="arrow_next"></a>
                <ul class="list_item">
                    <li>
                        <img src="img/detail/pre.jpg" alt="">
                    </li>
                    <li class="current">
                        <img src="img/detail/pre.jpg" alt="">
                    </li>
                    <li>
                        <img src="img/detail/pre.jpg" alt="">
                    </li>
                    <li>
                        <img src="img/detail/pre.jpg" alt="">
                    </li>
                    <li>
                        <img src="img/detail/pre.jpg" alt="">
                    </li>
                </ul>
            </div>
        </div>
        <!-- 产品详细信息 -->
        <div class="itemInfo_wrap fr">
            <div class="sku_name">
                Apple iPhone 6s（A1700）64G玫瑰金色 移动通信电信4G手机
            </div>
            <div class="news">
                推荐选择下方[移动优惠购],手机套餐齐搞定,不用换号,每月还有花费返
            </div>
            <div class="summary">
                <dl class="summary_price" style= "width: 660px;">
                    <dt>价格</dt>
                    <dd>
                        <i class="price">￥5299.00 </i>

                        <a href="#">降价通知</a>

                        <div class="remark">累计评价612188</div>

                    </dd>
                </dl>
                <dl class="summary_promotion" style= "width: 660px;">
                    <dt>促销</dt>
                    <dd>
                        <em>加购价</em>
                        满999.00另加20.00元，或满1999.00另加30.00元，或满2999.00另加40.00元，即可在购物车换
                        购热销商品  详情 》

                    </dd>
                </dl>
                <dl class="summary_support">
                    <dt>支持</dt>
                    <dd>以旧换新，闲置手机回收  4G套餐超值抢  礼品购</dd>
                </dl>
                <dl class="choose_color">
                    <dt>选择颜色</dt>
                    <dd>
                        <a href="javascript:;" class="current">玫瑰金</a>
                        <a href="javascript:;">金色</a>
                        <a href="javascript:;">白色</a>
                        <a href="javascript:;">土豪色</a>
                    </dd>
                </dl>
                <dl class="choose_version">
                    <dt>选择版本</dt>
                    <dd>
                        <a href="javascript:;" class="current">公开版</a>
                        <a href="javascript:;">移动4G</a>
                    </dd>
                </dl>
                <dl class="choose_type">
                    <dt>购买方式</dt>
                    <dd>
                        <a href="javascript:;" class="current">官方标配</a>
                        <a href="javascript:;">移动优惠购</a>
                        <a href="javascript:;">电信优惠购</a>
                    </dd>
                </dl>
                <div class="choose_btns">
                    <div class="choose_amount">
                        <input type="text" value="1">
                        <a href="javascript:;" class="add">+</a>
                        <a href="javascript:;" class="reduce">-</a>
                    </div>
                    <a href="#" class="addcar">加入购物车</a>
                </div>
            </div>
        </div>
    </div>


    <!-- 产品细节模块 product_detail	 -->
    <div class="product_detail clearfix">
        <!-- aside -->
        <div class="aside fl">
            <div class="tab_list">
                <ul>
                    <li class="first_tab ">相关分类</li>
                    <li class="second_tab current">推荐品牌</li>
                </ul>
            </div>
            <div class="tab_con">

                <ul>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>
                    <li>
                        <img src="img/detail/aside_img.jpg" alt="">
                        <h5>华为 HUAWEI P20 Pro 全面屏徕卡</h5>
                        <div class="aside_price">¥19</div>
                        <a href="#" class="as_addcar">加入购物车</a>
                    </li>


                </ul>
            </div>
        </div>
        <!-- detail -->
        <div class="detail fr">
            <div class="detail_tab_list">
                <ul>
                    <li class="current">商品介绍</li>
                    <li>规格与包装</li>
                    <li>售后保障</li>
                    <li>商品评价（50000）</li>
                    <li>手机社区</li>
                </ul>
            </div>
            <div class="detail_tab_con">
                <div class="item">
                    <ul class="item_info">
                        <li>分辨率：1920*1080(FHD)</li>
                        <li>后置摄像头：1200万像素</li>
                        <li>前置摄像头：500万像素</li>
                        <li>核      数：其他</li>
                        <li>频      率：以官网信息为准</li>
                        <li>品牌： Apple ♥关注</li>
                        <li>商品名称：APPLEiPhone 6s Plus</li>
                        <li>商品编号：1861098</li>
                        <li>商品毛重：0.51kg</li>
                        <li>商品产地：中国大陆</li>
                        <li>热点：指纹识别，Apple Pay，金属机身，拍照神器</li>
                        <li>系统：苹果（IOS）</li>
                        <li>像素：1000-1600万</li>
                        <li>机身内存：64GB</li>
                    </ul>
                    <p>
                        <a href="#" class="more">查看更多参数</a>
                    </p>
                    <img src="img/detail/detail_img1.jpg" alt="">
                    <img src="img/detail/detail_img1.jpg" alt="">
                    <img src="img/detail/detail_img1.jpg" alt="">
                </div>
                <!--
                <div class="item">规格与包装</div>
                <div class="item">售后保障</div>
                -->
            </div>
        </div>
    </div>

</div>
<!-- 详情页内容部分	 -->

<!-- footer start -->
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

<!-- footer end -->
</body>

<!-- 先引入jQuery核心js文件 -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="js/bootstrap.min.js"></script>

<script src = "js/firstPage.js"></script>
</html>