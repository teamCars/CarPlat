<%--
  Created by IntelliJ IDEA.
  User: fsh15
  Date: 2020/9/23
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../resources/layui/css/layui.css"/>
    <!-- //res.layui.com/layui/dist/css/layui.css-->


</head>
<body>
<div<%-- class="layui-container"--%>>
    <!--搜索框-->
    <div class="layui-form layui-form-pane" style="margin-top: 25px;margin-left: 504px">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">
                    ID
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="链接ID" name="id" id="id"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    链接名称
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="链接名称" name="linkName" id="linkName"/>
                </div>
            </div>

            <div class="layui-inline">
                <button class="layui-btn" id="searchBtn">搜索</button>
            </div>

        </div>


    </div>


</div>

<!--数据表格-->
<div>
    <table id="linkDataTable" lay-filter="linkDataTableFilter"></table>
</div>
</div>

<script type="text/javascript" src="../resources/layui/layui.js"></script>

<!-- 工具栏模板-->
<!-- 头工具栏-->
<script type="text/html" id="headerBtns">
    <button class="layui-btn layui-btn-sm" lay-event="addNewLink" id="addBtn">新增链接</button>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delMany" id="delBtn">批量删除</button>
</script>
<!--行工具栏-->
<script type="text/html" id="opBtns">
    <button class="layui-btn layui-btn-sm" lay-event="edit">编辑</button>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</button>
</script>

<!--新增信息模板-->
<script type="text/html" id="addNew">
    <div>
        <form class="layui-form layui-form-pane" style="margin-top: 100px" lay-filter="editLinkForm">
            <div class="layui-form-item" style="margin-left: 150px">
                <div class="layui-inline">
                    <label class="layui-form-label">
                        ID
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="公告ID" name="id" id="newLinkId"/>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">
                        链接名称：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="" name="linkName" id="newLinkName" lay-verify="required"/>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">
                        链接地址：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="" name="linkAddress" id="newLinkAddress" lay-verify="required"/>
                    </div>
                </div>


                <div class="layui-inline">
                    <label class="layui-form-label">添加时间</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd" name="createTime">
                    </div>
                </div>

            </div>
            <input type="hidden" lay-submit lay-filter="submitFormFilter" id="submitForm"/>
        </form>
    </div>


</script>


<script type="text/javascript">
    layui.use(['form','jquery','table','layer','util'],function () {
        /*初始化对象*/
        var form = layui.form;
        var $ = layui.jquery;
        var table = layui.table;
        var layer = layui.layer;
        var util = layui.util;
        /*初始化表格*/
        var t = table.render({
            id:"linkId",
            elem:"#linkDataTable",//表格容器
            url:"/adminLink.action?method=showLinkByPage", //数据接口
            page:true,
            //limit:935,
            width:"1707",
            height:"767",
            toolbar:"#headerBtns",
            cols:[[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:225, fixed: 'left', unresize: true, sort: true}
                ,{field:'linkName', title:'链接名称', width:520, edit: 'text'}
                ,{field:'linkAddress', title:'链接网址', width:520, edit: 'text'}
                ,{field:'createTime', title:'添加时间', width:230, templet: function(d) {return util.toDateString(d.sysUTC/1)}}
                ,{fixed: 'right', title:'操作', toolbar: '#opBtns', width:150}
            ]],//表格头信息
            parseData:function (rs) {//数据格式解
                return {
                    "code":rs.code,
                    "msg":rs.msg,
                    "count":rs.data.total,
                    "data":rs.data.data
                }
            },
            response:{//设置响应码
                statusCode:200
            }
        });
        //为搜索按钮绑定事件
        $("#searchBtn").click(function () {

            //获取搜索框中的值
            var id = $("#id").val();
            var linkName = $("#linkName").val();

            //表格重载
            t.reload({
                where:{
                    'id':id,
                    'linkName':linkName
                }
            });

            $("#addBtn").click(function () {
                addNew();
            });

            $("#delBtn").click(function () {
                delMany();
            });
        });

        //新增
        $("#addBtn").click(function () {
            addNew();
        });

        $("#delBtn").click(function () {
            delMany();
        });



        function delMany() {
            //获取选中的id
            var checkStatus = table.checkStatus("linkId");
            var data = checkStatus.data;
            if(data.length==0){
                layer.msg("请先选择要删除的数据");
                return false;
            }

            layer.confirm("确定删除选中的链接吗？",function (index) {
                delOrders(data,index);
            });
        }


        //具体的删除方法
        function delOrders(data,index) {
            var ids = ""
            $.each(data, function (index, value) {
                ids = ids + "id=" + value.id + "&";
            });
            //ajax向后台提交数据


            $.post("/adminLink.action?method=delMany&" + ids, function (rs) {
                //判断业务响应码
                if (rs.code == 200) {
                    layer.msg("删除成功");
                    $("#searchBtn").click();
                    layer.close(index);
                    return false;
                }
                layer.msg("删除失败");
                layer.close(index)
            });
        }

        function addNew() {
            layer.open({
                id: "addNewLink",
                type: 1,
                content: $("#addNew").html(),
                btn: ['提交', '取消'],
                area: ['600', '700'],
                yes: function (layero, index) {//点击提交时触发
                    $("#submitForm").click();
                },
                success: function (layero, index) {//页面弹出成功触发
                    form.render();
                    //重新渲染select
                    // form.render('select');

                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                        $.post("/adminLink.action?method=addNew",d.field,function (rs) {
                            //业务正常
                            if(rs.code == 200){
                                layer.msg("新增成功");
                                $("#searchBtn").click();
                                layer.close(index);
                                return false;
                            }
                            layer.msg("添加失败");
                            layer.close(index);
                        })
                    });
                    //渲染日期控件
                    layui.use('laydate', function () {
                        var laydate = layui.laydate;
                        laydate.render({
                            elem: '#test1',
                            trigger: 'click'
                        });
                    });

                }

            });
        }
        //对行工具栏添加监听
        table.on("tool(linkDataTableFilter)",function (d) {
            var event = d.event;
            var data = d.data;
            if(event=="edit"){
                //调用更新方法
                edit(data)
                console.log(data)
            }
            if(event=="delete"){

                delById(data)
            }
        });

        function delById(data) {
            layer.confirm("确定删除选中的商品吗？",function (index) {
                delId(data,index);
            });
        }

        function delId(data,index) {
            var id = data.id;
            console.log(id)
            $.post("/adminLink.action?method=delById&id=" + id, function (rs) {
                //判断业务响应码
                if (rs.code == 200) {
                    layer.msg("删除成功");
                    $("#searchBtn").click();
                    layer.close(index);
                    return false;
                }
                layer.msg("删除失败");
                layer.close(index)
            });
        }
        function edit(data) {
            layer.open({
                id: "editLink",
                type: 1,
                content: $("#addNew").html(),
                btn: ['提交', '取消'],
                area: ['600', '700'],
                yes: function (layero, index) {//点击提交时触发
                    $("#submitForm").click();
                },
                btnAlign:'c',
                success: function (layero, index) {//页面弹出成功触发
                    //为form表达赋值

                    form.val("editLinkForm",{

                        //键值对的形式赋值
                        'id':data.id,
                        'linkName':data.linkName,
                        'linkAddress':data.linkAddress,
                        'createTime':data.createTime
                    });
                    //重新渲染select
                    form.render();
                    form.render('select');


                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                        // d.field.id = data.id;//获取用户id
                        $.post("/adminLink.action?method=edit",d.field,function (rs) {
                            //业务正常
                            if(rs.code == 200){
                                layer.msg("更新成功");
                                $("#searchBtn").click();
                                layer.close(index);
                                return false;
                            }
                            layer.msg("更新失败");
                            layer.close(index);
                        })
                    });
                    //渲染日期控件
                    layui.use('laydate', function () {
                        var laydate = layui.laydate;
                        laydate.render({
                            elem: '#test1',
                            trigger: 'click'
                        });
                    });
                }
            });
        }


    });

</script>

</body>
</html>
