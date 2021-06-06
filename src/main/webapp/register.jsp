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


<div class="container" style="width: 100%; background: url('./img/loginregist/loginImg.jpg') no-repeat;">
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
