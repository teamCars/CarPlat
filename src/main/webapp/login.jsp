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
    <div id="from">
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
      if($("#user").val() != null){
          alert("用户名和密码不匹配，请重新填写");
      }
</script>

</html>
