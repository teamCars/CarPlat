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
    <div class="layui-form layui-form-pane" style="margin-top: 25px;margin-left: 350px">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">
                    ID
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="用户ID" name="id" id="id"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    会员名称
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="会员名称" name="name" id="name"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    真实姓名
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="真实姓名" name="reallyName" id="reallyName"/>
                </div>

            </div>
            <div class="layui-inline">
                <button class="layui-btn" id="searchBtn">搜索</button>
            </div>
        </div>
    </div>

    <!--数据表格-->
    <div>
        <table id="memberDataTable" lay-filter="memberDataTableFilter"></table>
    </div>
</div>

<script type="text/javascript" src="../resources/layui/layui.js"></script>

<!-- 工具栏模板-->
<!-- 头工具栏-->
<script type="text/html" id="headerBtns">
    <%--<button class="layui-btn layui-btn-sm" lay-event="addNewGoods" id="addBtn">新增会员</button>--%>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delMany" id="delBtn">批量删除</button>
</script>
<!--行工具栏-->
<script type="text/html" id="opBtns">
    <button class="layui-btn layui-btn-sm" lay-event="edit" id="editBtn">编辑</button>
    <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</button>
</script>

<!--新增信息模板-->
<script type="text/html" id="addMem">
    <div>
        <form class="layui-form layui-form-pane" lay-filter="editFormFilter">
            <div class="layui-form-item" style="margin-left: 150px">
                <div class="layui-inline">
                    <label class="layui-form-label">
                        ID
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="商品ID" name="id" id="newId"/>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">
                        婚品名称：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="" name="goodsName" id="newGoodsName" lay-verify="required"/>
                    </div>
                </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            市场价格
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="市场价格" name="nowPrice" id="newNowPrice"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            特价价格
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="特价价格" name="freePrice" id="newFreePrice"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品数目
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品数目" name="number" id="newNumber"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品销量
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品数目" name="sale" id="newSale"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品款式
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品数目" name="kind" id="newKind"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品店家
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品数目" name="goodsShop" id="newGoodsShop"/>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">
                            婚品介绍
                        </label>
                        <div class="layui-input-block">
                            <textarea name="introduce" placeholder="请输入内容" class="layui-textarea" id="newIntroduce"></textarea>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">添加时间</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
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
            id:"membersId",
            elem:"#memberDataTable",//表格容器
            url:"/adminMember.action?method=showMemBerByPage", //数据接口
            page:true,
            //limit:935,
            width:"1707",
            height:"767",
            toolbar:"#headerBtns",
            cols:[[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:120, fixed: 'left', unresize: true, sort: true}
                ,{field:'name', title:'会员名称', width:100, edit: 'text'}
                ,{field:'password', title:'密码', width:100, edit: 'text'}
                ,{field:'reallyname', title:'真实名字', width:120, edit: 'text'}
                ,{field:'sex', title:'性别', width:100, edit: 'text'}
                ,{field:'age', title:'年龄', width:100, sort: true}
                ,{field:'email', title:'邮箱', width:150, edit: 'text', templet: function(res){
                        return '<em>'+ res.email +'</em>'
                    }}
                ,{field:'professsion', title:'职业',width:120, edit: 'text'}
                ,{field:'address', title:'家庭住址',width:220, edit: 'text'}
                ,{field:'question', title:'密保问题', width:250, edit: 'text'}
                ,{field:'result', title:'答案', width:120, edit: 'text'}
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
            var reallyName = $("#reallyName").val();
            //表格重载
            t.reload({
                where:{
                    'id':id,
                    'name':name,
                    'reallyName':reallyName
                }
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
            var checkStatus = table.checkStatus("membersId");
            var data = checkStatus.data;
            if(data.length==0){
                layer.msg("请先选择要删除的数据");
                return false;
            }

            layer.confirm("确定删除选中的商品吗？",function (index) {
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


            $.post("/adminMember.action?method=delMany&" + ids, function (rs) {
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

            //新增的具体方法

        }

        function addNew() {
            layer.open({
                id: "addNewMembers",
                type: 1,
                content: $("#addMem").html(),
                btn: ['提交', '取消'],
                area: ['600', '700'],
                yes: function (layero, index) {//点击提交时触发
                    $("#submitForm").click();
                },
                btnAlign:'c',
                success: function (layero, index) {//页面弹出成功触发
                    //重新渲染select
                    form.render();
                    form.render('select');
                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                        $.post("/adminMember.action?method=addNew",d.field,function (rs) {
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
        table.on("tool(memberDataTableFilter)",function (d) {
           var event = d.event;
           var data = d.data;
           if(event=="edit"){
               //调用更新方法
               edit(data)
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
                $.post("/adminMember.action?method=delById&id=" + id, function (rs) {
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
        

     /*  $("#editBtn").click(function () {
           edit(data);
       });*/
        //编辑信息的具体方法
        function edit(data) {
            layer.open({
                id: "addNewMembers",
                type: 1,
                content: $("#addMem").html(),
                btn: ['提交', '取消'],
                area: ['600', '700'],
                yes: function (layero, index) {//点击提交时触发
                    $("#submitForm").click();
                },
                btnAlign:'c',
                success: function (layero, index) {//页面弹出成功触发
                    //为form表达赋值
                    form.val("editFormFilter",{
                        //键值对的形式赋值
                        'id':data.id,
                        'name':data.name,
                        'reallyname':data.reallyname,
                        'password':data.password,
                        'sex':data.sex,
                        'age':data.age,
                        'email':data.email,
                        'address':data.address,
                        'question':data.question,
                        'result':data.result
                    });
                    //重新渲染select
                    form.render();
                    form.render('select');


                    form.on("submit(submitFormFilter)",function (d) {
                        console.log(d.field);
                       // d.field.id = data.id;//获取用户id
                        $.post("/adminMember.action?method=edit",d.field,function (rs) {
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
