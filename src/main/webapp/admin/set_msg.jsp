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
                    <input class="layui-input" placeholder="公告ID" name="id" id="id"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    公告名字
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="公告名字" name="name" id="name"/>
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
        <table id="msgDataTable" lay-filter="msgDataTableFilter"></table>
    </div>
</div>

<script type="text/javascript" src="../resources/layui/layui.js"></script>
<%--<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>--%>
<!-- 工具栏模板-->
<!-- 头工具栏-->
<script type="text/html" id="headerBtns">
    <button class="layui-btn layui-btn-sm" lay-event="addNewMsg" id="addBtn">新增公告</button>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delMany" id="delBtn">批量删除</button>
</script>
<!--行工具栏-->
<script type="text/html" id="opBtns">
    <button class="layui-btn layui-btn-sm" lay-event="edit">编辑</button>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</button>
</script>

<!--新增信息模板-->
<script type="text/html" id="addMsg">
    <div>
        <form class="layui-form layui-form-pane" style="margin-top: 100px" lay-filter="editMsgForm" >

            <%--<input type="hidden" name="method" value="addNew"/>--%>
            <div class="layui-form-item" style="margin-left: 150px">
                <div class="layui-inline">
                    <label class="layui-form-label">
                        ID
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="公告ID" name="id" id="newMsgId"/>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">
                        公告名称：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="" name="name" id="neMsgName" lay-verify="required"/>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label" style="width: 300px">
                        公告内容
                    </label>
                    <div class="layui-input-block">
                        <textarea name="content" placeholder="请输入内容" class="layui-textarea" id="newMsgContent" style="width: 300px"></textarea>
                    </div>
                </div>


                <div class="layui-inline">
                        <label class="layui-form-label">发布时间</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd" name="issueTime">
                        </div>
                    </div>

            </div>

            <!--添加隐藏的监听事件-->
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
            id:"msgId",
            elem:"#msgDataTable",//表格容器
            url:"/adminMsg.action?method=showMsgByPage", //数据接口
            page:true,
            //limit:935,
            width:"1707",
            height:"767",
            toolbar:"#headerBtns",
            cols:[[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:225, fixed: 'left', unresize: true, sort: true}
                ,{field:'name', title:'公告名称', width:520, edit: 'text'}
                ,{field:'content', title:'公告内容', width:520, edit: 'text'}
                ,{field:'issueTime', title:'发布时间', width:230, edit: 'text'}
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
            var name = $("#name").val();

            //表格重载
            t.reload({
                where:{
                    'id':id,
                    'name':name
                }
            });

            //新增
            $("#addBtn").click(function () {
                addNew();
            });
            //批量删除
            $("#delBtn").click(function () {
                delMany();
            });
        });

        //新增
        $("#addBtn").click(function () {
            addNew();
        });
        //批量删除
        $("#delBtn").click(function () {
            delMany();
        });

        function delMany() {
            var dataID = table.checkStatus("msgId")
           // var checkStatu = table.checkStatus("msgId");
            var data = dataID.data;
            if(data.length==0){
                layer.msg("请先选择要删除的数据");
                return false;
            }

            layer.confirm("确定删除选中数据吗？",function (index) {
                delMsg(data,index);
            });
        }


        function delMsg(data,index) {
            var ids = ""
            $.each(data,function (index,value) {
                ids = ids + "id=" + value.id + "&";//传回后台的是id = 1&id= 2...
            });

            $.post("/adminMsg.action?method=delMany&"+ids,function (rs) {
                if(rs.code==200){
                    layer.msg("删除成功");
                    $("#searchBtn").click();
                    layer.close(index);
                    // window.location.reload();
                    return false;
                }
                //删除失败显示失败信息，并关闭弹窗
                layer.msg(rs.msg);
                layer.close(index);
            });
        }


        //新增的具体方法
        function addNew() {
            layer.open({
                id:"addNewMsg",
                type:1,
                content:$("#addMsg").html(),
                btn:['提交','取消'],
                area:['527','479'],
                yes:function (index,layero) {//点击提交时触发
                   $("#submitForm").click();
                },
                btnAlign:'c',
                success:function (layero,index) {//页面弹出成功触发
                    //渲染表单
                    form.render();

                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                        $.post("/adminMsg.action?method=addNew",d.field,function (rs) {
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
                    layui.use('laydate',function () {
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
        table.on("tool(msgDataTableFilter)",function (d) {
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
            $.post("/adminMsg.action?method=delById&id=" + id, function (rs) {
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
                content: $("#addMsg").html(),
                btn: ['提交', '取消'],
                area: ['600', '700'],
                yes: function (layero, index) {//点击提交时触发
                    $("#submitForm").click();
                },
                btnAlign:'c',
                success: function (layero, index) {//页面弹出成功触发
                    //为form表达赋值

                    form.val("editMsgForm",{

                        //键值对的形式赋值
                        'id':data.id,
                        'name':data.name,
                        'content':data.content,
                        'issueTime':data.issueTime
                    });
                    //重新渲染select
                    form.render();
                    form.render('select');


                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                        // d.field.id = data.id;//获取用户id
                        $.post("/adminMsg.action?method=edit",d.field,function (rs) {
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
