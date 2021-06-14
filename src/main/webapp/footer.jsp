<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 半糖去冰
  Date: 2021/6/2
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:set var="path" scope="session" value="${pageContext.request.contextPath}"></c:set>

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



