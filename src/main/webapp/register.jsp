<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员注册</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />

<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/firstPage.css" type="text/css" />

<style>
    body {
        margin-top: 20px;
        margin: 0 auto;
    }

    .carousel-inner .item img {
        width: 100%;
        height: 300px;
    }

    font {
        color: #3164af;
        font-size: 18px;
        font-weight: normal;
        padding: 0 10px;
    }
    .error{
        color:red;
    }

    .success{
        color:green;
    }

</style>
</head>
<body>

<!-- 导航栏 -->
<div class="container-fluid" style="margin: 0px;padding: 0px;">
    <div class="row">
        <nav class="navbar navbar-default navbar-fixed-top" style="height:85px;background-color: white;">
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
                                    <form action="" method="get">
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
                            <a href="firstPage.jsp" style="color: #00BC93;font-weight: 600;">首页 </a>
                        </li>
                        <li>
                            <a href="register.jsp" style="font-weight: 600;">租车</a>
                        </li>
                        <li>
                            <a href="register.jsp" style="font-weight: 600;">出车</a>
                        </li>
                        <li>
                            <a href="register.jsp" style="font-weight: 600;">活动</a>
                        </li>
                        <li>
                            <a href="#" style="font-weight: 600;">关于凹凸</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <form action="" method="get">
                            <li>
                                <input type = "button" name= "login" value="登录"  class = "loginregist" onclick="JavaScript:window.location.href = 'login.jsp'"/>
                                <input type = "button" name = "register" value="新用户注册"  class = "loginregist" style="width: 90px;" onclick="JavaScript:window.location.href = 'register.jsp'"/>
                            </li>
                        </form>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
</div>


<div class="container" style="width: 100%; background: url('./img/loginregist/loginImg.jpg') no-repeat;margin-top:80px">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8"
             style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
            <font>用户注册</font>USER REGISTER
            <form class="form-horizontal" action="${pageContext.request.contextPath}/user?method=register" style="margin-top: 5px;" method="post" id = "registForm">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="username" placeholder="请输入昵称" name="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password" placeholder="请输入密码" name="pwd">
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="confirmpwd" placeholder="请输入确认密码" name="repassword">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="email" placeholder="请输入Email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="telephone" class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-6">
                        <input type="tel" class="form-control" id="telephone" placeholder="请输入Telephone" name="phone">
                    </div>
                </div>

                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">身份证号</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="address" name="personID" >
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" width="100px" value="注册"
                               style="width:100px;height: 35px;background-color: #00bc93;color: white;border-color:#00bc93;border-radius: 5px;">
                    </div>
                </div>

            </form>
        </div>

        <div class="col-md-2"></div>

    </div>
</div>

<!-- 引入footer.jsp -->
<jsp:include page="/footer.jsp"></jsp:include>

<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/validate.js" type="text/javascript"></script>

</body>
</html>
