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
                    <input class="layui-input" placeholder="订单ID" name="oid" id="id"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    收货人
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="收货人" name="name" id="name"/>
                </div>
            </div>

            <div class="layui-inline">
                <button class="layui-btn" id="searchBtn">搜索</button>
            </div>

        </div>


    </div>

    <!--数据表格-->
    <div>
        <table id="ordersDataTable" lay-filter="ordersDataTableFilter"></table>
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
   <%-- <button class="layui-btn layui-btn-sm" lay-event="addNewGoods" id="addBtn">新增商品</button>--%>
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
        <form class="layui-form layui-form-pane" lay-filter="editOrdersForm">
            <div class="layui-form-item" style="margin-left: 150px">
                <div class="layui-inline">
                    <label class="layui-form-label">
                        ID
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="订单ID" name="oid" id="newId"/>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">
                        收货人：
                    </label>
                    <div class="layui-input-inline">
                        <input class="layui-input" placeholder="" name="name" id="newGoodsName" lay-verify="required"/>
                    </div>
                </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">
                            总金额
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="" name="total" id="newNowPrice"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            支付状态
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="" name="state" id="newFreePrice"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            电话
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="" name="telephone" id="newNumber"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            收货地址
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="" name="address" id="newSale"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">创建时间</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd" name="ordertime">
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
            id: "ordersId",
            elem: "#ordersDataTable",//表格容器
            url: "/adminOrders.action?method=showOrdersByPage", //数据接口
            page: true,
            //limit:935,
            width: "1707",
            height: "767",
            toolbar: "#headerBtns",
            cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'oid', title: 'ID', width: 373, fixed: 'left', unresize: true, sort: true,}
                , {field: 'name', title: '收货人', width: 120, edit: 'text'}
                , {field: 'total', title: '订单总金额', width: 120, edit: 'text'}
                , {field: 'state', title: '支付状态', width: 120, edit: 'text'}
                , {field: 'telephone', title: '电话', width: 130}
                , {field: 'address', title: '地址', width: 506, edit: 'text'}
                , {field: 'ordertime', title: '创建时间', width: 130, sort: true}
                /*, {field: 'setMoney', title: '付款方式', width: 150}
                , {field: 'post', title: '邮寄地址', width: 200}
                , {field: 'bz', title: '备注', width: 152}
                , {field: 'ordertime', title: '创建时间', width: 130, sort: true}*/
                /*,{field:'joinTime', title:'加入时间', width:120}*/
                , {fixed: 'right', title: '操作', toolbar: '#opBtns', width: 150}

            ]],//表格头信息
            parseData: function (rs) {//数据格式解
                return {
                    "code": rs.code,
                    "msg": rs.msg,
                    "count": rs.data.total,
                    "data": rs.data.data
                }
            },
            response: {//设置响应码
                statusCode: 200
            }
        });
        //为搜索按钮绑定事件
        $("#searchBtn").click(function () {

            //获取搜索框中的值
            var oid = $("#oid").val();
            var name = $("#name").val();

            //表格重载
            t.reload({
                where: {
                    'oid': oid,
                    'name': name
                }
            });

            //重新为按钮绑定事件


            //批量删除
            $("#delBtn").click(function () {
                delMany();
            });
        });


        $("#delBtn").click(function () {
            delMany();
        });


        function delMany() {
            //获取选中的id
            var checkStatus = table.checkStatus("ordersId");
            var data = checkStatus.data;
            if (data.length == 0) {
                layer.msg("请先选择要删除的数据");
                return false;
            }

            layer.confirm("确定删除选中的商品吗？", function (index) {
                delOrders(data, index);
            });
        }


        //具体的删除方法
        function delOrders(data, index) {
            var ids = ""
            $.each(data, function (index, value) {
                ids = ids + "id=" + value.oid + "&";
            });
            //ajax向后台提交数据


            $.post("/adminOrders.action?method=delMany&" + ids, function (rs) {
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


        //对行工具栏添加监听
        table.on("tool(ordersDataTableFilter)", function (d) {
            var event = d.event;
            var data = d.data;
            if (event == "edit") {
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
            var id = data.oid;
            console.log(id)
            $.post("/adminOrders.action?method=delById&id=" + id, function (rs) {
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
                btnAlign: 'c',
                success: function (layero, index) {//页面弹出成功触发
                    //为form表达赋值

                    form.val("editOrdersForm", {

                        //键值对的形式赋值
                        'oid': data.oid,
                        'name': data.name,
                        'ordertime': data.ordertime,
                        'total': data.total,
                        'state': data.state,
                        'address': data.address,
                        'telephone': data.telephone,
                    });
                    //重新渲染select
                    form.render();
                    form.render('select');


                    form.on("submit(submitFormFilter)", function (d) {
                        console.log(d.field);
                        // d.field.id = data.id;//获取用户id
                        $.post("/adminOrders.action?method=edit", d.field, function (rs) {
                            //业务正常
                            if (rs.code == 200) {
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
