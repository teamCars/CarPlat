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
                    <input class="layui-input" placeholder="商品ID" name="id" id="id"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    商品名称
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="商品名称" name="goodsName" id="goodsName"/>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">
                    商品店家
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input" placeholder="商品店家" name="goodsShop" id="goodsShop"/>
                </div>

            </div>
            <div class="layui-inline">
                <button class="layui-btn" id="searchBtn">搜索</button>
            </div>

        </div>


    </div>

    <!--数据表格-->
    <div>
        <table id="goodsDataTable" lay-filter="goodsDataTableFilter"></table>
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
    <button class="layui-btn layui-btn-sm" lay-event="addNewGoods" id="addBtn">新增商品</button>
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
        <form class="layui-form layui-form-pane">
            <input type="hidden" name="method" value="addNew"/>
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

                <div class="layui-inline" lay-filter="selectFilter">
                    <label class="layui-form-label">婚品大类</label>
                    <div class="layui-input-inline">
                        <select name="bigId" lay-filter="bigType">
                            <option value="">请选择大类名称</option>
                            <option value="1">新娘礼服</option>
                            <option value="2">婚房布置</option>
                            <option value="3">喜糖请帖</option>
                            <option value="4">婚庆床品</option>
                            <option value="5">新娘穿搭</option>
                            <option value="6">结婚酒水</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline" lay-filter="selectFilter">
                    <label class="layui-form-label">婚品小类</label>
                    <div class="layui-input-inline"         >
                        <select name="smallId" id="smallType">
                            <option value="">请选择小类名称</option>
                        </select>
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
                            <input class="layui-input" placeholder="婚品销量" name="sale" id="newSale"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品款式
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品款式" name="kind" id="newKind"/>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">
                            婚品店家
                        </label>
                        <div class="layui-input-inline">
                            <input class="layui-input" placeholder="婚品店家" name="goodsShop" id="newGoodsShop"/>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text" >
                        <label class="layui-form-label" style="width: 300px">
                            婚品介绍
                        </label>
                        <div class="layui-input-block">
                            <textarea name="introduce" placeholder="请输入内容" class="layui-textarea" id="newIntroduce" style="width: 300px"></textarea>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">添加时间</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
                        </div>
                    </div>
                </div>
            </div>
            <!--添加隐藏的监听事件-->
            <input type="hidden" lay-submit layer-filter="submitFormFilter" id="submitForm"/>
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
            id:"goodsId",
            elem:"#goodsDataTable",//表格容器
            url:"adminGoods.action?method=showGoodsListByPage", //数据接口
            page:true,
            //limit:935,
            width:"1707",
            height:"767",
            toolbar:"#headerBtns",
            cols:[[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:80,  unresize: true, sort: true}
                ,{field:'nowPrice', title:'市场价格', width:107, edit: 'text', sort: true}
                ,{field:'freePrice', title:'特价价格', width:107, edit: 'text', sort: true}
                ,{field:'number', title:'婚品数目', width:107, edit: 'text'}
                ,{field:'sale', title:'婚品销量', width:107, edit: 'text'}
                ,{field:'bigId', title:'大类编号', width:107, edit: 'text'}
                ,{field:'smallId', title:'小类编号', width:107, edit: 'text'}
                ,{field:'goodsName', title:'婚品名称', width:120, edit: 'text'}
                ,{field:'kind', title:'婚品款式', width:120, edit: 'text'}
                ,{field:'goodsShop', title:'婚品店家', width:120, edit: 'text'}
                ,{field:'introduce', title:'婚品介绍', width:150, edit: 'text'}
                ,{field:'creatTime', title:'添加时间', width:120, edit:'text'}
                ,{field:'picture', title:'婚品图片', width:150, edit: 'text', sort: true}
               /* ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}*/
               ,{title:"操作",width:141,toolbar:"#opBtns"}
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
            var goodsName = $("#goodsName").val();
            var goodsShop = $("#goodsShop").val();
            //表格重载
            t.reload({
                where:{
                    'id':id,
                    'goodsName':goodsName,
                    'goodsShop':goodsShop
                }
            });
            //表格重载后，重新绑定事件，解决按钮失效问题
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



        //批量删除的具体方法
        function delMany() {
            //获取选中的id
            var chechStatus = table.checkStatus("goodsId");
            var  data = chechStatus.data;
            if(data.length==0){
                layer.msg("请先选择要删除的数据");
                return false;
            }

            layer.confirm("确定删除选中的商品吗？",function (index) {
               /* console.log("删除了---------");*/
                delGoods(data,index);

            })

        }
        //删除商品的方法
        function delGoods(data,index) {
            var ids = "";
            $.each(data,function (index,value) {
                ids = ids + "id=" + value.id + "&";//传回后台的是id = 1&id= 2...
            });
            $.post("/adminGoods.action?method=delMany&"+ids,function (rs) {
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
        //为行工具栏绑定事件
        table.on("tool(goodsDataTableFilter)",function (d) {
            var event = d.event;
            var data = d.data;
            if(event=="edit"){
                //调用更新方法
                edit(data)
            }
            if(event="delete"){

                delById(data)
            }
        });
        //根据id删除信息
        function delById(data) {
            layer.confirm("确定删除选中的商品吗？",function (index) {
                delId(data,index);
            });
        }
        //根据id删除信息的具体方法
        function delId(data,index) {
            var id = data.id;
            console.log(id)
            $.post("/adminGoods.action?method=delById&id=" + id, function (rs) {
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


        //新增的具体方法
        function addNew() {
            layer.open({
                id:"addNewGoods",
                type:1,
                content:$("#addNew").html(),
                btn:['提交','取消'],
                area:['600','700'],
                yes:function (layero,index) {//点击提交时触发
                    $("#submitForm").click();
                },
                btnAlign:'c',
                success:function (layero,index) {//页面弹出成功触发
                    //重新渲染select
                    form.render('select');
                    //渲染日期控件
                    layui.use('laydate',function () {
                        var laydate = layui.laydate;
                        laydate.render({
                            elem: '#test1',
                            trigger: 'click'
                        });
                    });


                    //二级联动选择商品分类
                    form.on('select(bigType)',function (data) {
                        $.post("/adminType.action?method=getSmallType&id="+(data.value),function (data) {
                            var optionstring = "";
                            $.each(data.data, function(i,item){
                                optionstring += "<option value=\"" + item.id + "\">"+item.smallName+"</option>";
                                console.log(item.id)
                                console.log(item.smallName)
                            });
                            $("#smallType").html('<option value=""></option>' + optionstring);
                            form.render('select'); //这个很重要
                        });
                    });

                    //为表单新增监听提交事件
                    form.on("submit(submitFormFilter)",function (d) {
                       $.post("/adminGoods.action",d.field,function (rs) {
                           //业务正常
                           if(rs.code == 200){
                               layer.msg("新增成功");
                               $("#searchBtn").click();
                               layer.close(index);
                               return false
                           }
                           layer.msg("添加失败");
                           layer.close(index);
                       }) ;
                    });
                }
            });
        }
    });


</script>



</body>
</html>
