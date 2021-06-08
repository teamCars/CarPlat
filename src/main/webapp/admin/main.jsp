<%@ page import="com.marry.shop.entity.Manager" %>
<%@ page import="com.marry.shop.admin.common.Result" %>
<%@ page import="com.marry.shop.admin.common.CodeMsg" %>
<%@ page import="com.marry.shop.utils.RespWriterUtil" %><%--
  Created by IntelliJ IDEA.
  User: fsh15
  Date: 2020/9/22
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../resources/layui/css/layui.css"/>
</head>
<body class="layui-layout-body">
<%
/*
        Manager manager = (Manager)session.getAttribute("manager");
        if(manager==null){
            RespWriterUtil.writer(response, new Result(CodeMsg.MANAGER_LOSE_LOGIN));
            request.getRequestDispatcher("/admin/admin_login.jsp").forward(request,response);

        }*/


%>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">Marrying后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
       <ul class="layui-nav layui-layout-left">

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${namager.name}
                </a>
               <%-- <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>--%>
            </li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/admin.action?method=logout">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">商品&nbsp;/&nbsp;订单</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/pageChange.action?method=setGoods" target="content">商品管理</a></dd>
                        <dd><a href="/pageChange.action?method=setOrders" target="content">订单管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">公告&nbsp;/&nbsp;链接</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/pageChange.action?method=setMsg" target="content">公告管理</a></dd>
                        <dd><a href="/pageChange.action?method=setLink" target="content">链接管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户&nbsp;/&nbsp;密码</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/pageChange.action?method=setMember" target="content">用户管理</a></dd>
                        <dd><a href="/pageChange.action?method=editPwd&id=${namager.id}" target="content">密码修改</a></dd>
                    </dl>
                </li>
                <%--<li class="layui-nav-item"><a href="javascript:">用户管理</a></li>
                <li class="layui-nav-item"><a href="javascript:">密码修改</a></li>--%>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 0px;width: 100%;height: 100%;" >
            <iframe name="content" style="width: 100%;height: 100%;border:0px"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © Marrying - 2020-09-23
    </div>
</div>

<script type="text/javascript" src="../resources/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'],function () {
        var element = layui.element;
    });
</script>
</body>
</html>
