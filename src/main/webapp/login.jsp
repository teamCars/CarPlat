<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/2
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <link href = "css/login.css" rel = "stylesheet">
    <!--引入字体 -->
    <link href="css/fonts.css" rel="stylesheet">

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href = "css/firstPage.css" rel="stylesheet">

</head>
<body>
<%
    String username = null;
    String pwd = null;
    //获取当前PC机上的cookie
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        //如果cookies不为空，就遍历cookie
        for (Cookie cookie : cookies) {
            //如果cookie为空，就获取cookie，如果找到符合条件的数据，就跳转
            if(cookie != null){
                if(cookie.getName().equals("username")){
                    username = URLDecoder.decode(cookie.getValue(),"utf-8");
                }
                if(cookie.getName().equals("pwd")){
                    pwd = URLDecoder.decode(cookie.getValue(),"utf-8");
                }
            }
        }
    }
    if(username != null && pwd != null){
        request.getRequestDispatcher(request.getContextPath()+"/user?method=login&username="+username+"&pwd="+pwd).forward(request,response);
    }

%>

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

    <div id="from" style="margin-top: 80px">
        <form action="user?method=login" method="post" id="registForm">
            <div id="father">
                <div id="from2">
                    <table border="0px" width="100%" height="100%" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <font size="6" ><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请登录</b></font>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账号</td>
                            <td><input type="text"name="username" style="width: 260px;height: 26px;" id="user" placeholder="请输入账号" value="${username}"/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码</td>
                            <td><input type="password"name="pwd" style="width: 260px;height: 26px;" id="password" placeholder="请输入密码" value="${pwd}"/></td>
                        </tr>

                        <tr >
                            <td colspan="2" align="right" >
                                <input type="reset" value="忘记密码" style="margin-right: 60px;"  />
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="登    陆" id="sub" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>

</body>
<!-- 引入footer.jsp -->
<jsp:include page="/footer.jsp"></jsp:include>

<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script>
      // if($("#user").val() != null){
      //     alert("用户名和密码不匹配，请重新填写");
      // }
</script>

</html>
