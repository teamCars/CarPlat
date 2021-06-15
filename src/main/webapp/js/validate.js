//校验注册页面
$("#registForm").validate({
    rules:{
        "username":{
            "required":true,
            "validateUsername":true
        },
        "pwd":{
            "required":true
        },
        "repassword":{
            "required":true,
            "equalTo":"#password"
        },
        "phone":{
            "required":true,
            "validatePhone":true
        },
        "email":{
            "required":true,
            "email":true
        },
        "personID":{
            "required":true
        }
    },
    messages:{
        "username":{
            "required":"用户名不能为空",
            "validateUsername":"用户名已经存在"
        },
        "pwd":{
            "required":"密码不能为空"
        },
        "repassword":{
            "required":"密码不能为空",
            "equalTo":"两次密码不能不一样"
        },
        "phone":{
            "required":"手机号不能为空",
            "validatePhone":"该手机号已注册，您可以直接登录"
        },
        "email":{
            "required":"邮箱已经被注册",
            "email":"邮箱格式不对"
        },
        "personID":{
            "required":"身份证号不能为空"
        }

    },
    //改变radio、checkbox、select等控件操作信息的位置
    errorPlacement: function (error, element) { //指定错误信息位置
        if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox
            error.appendTo(element.parent().parent()); //将错误信息添加当前元素的父结点再父节点的后面
        } else {
            error.insertAfter(element);
        }
    }

});

// 自定义校验规则步骤如下：
// (1) 使用$.validator.addMethod("校验规则名称",function(value,element,params){});
// (2) 在rules中通过校验规则名称使用校验规则
// (3) 在messages中定义该规则对应的错误提示信息
// 其中： value是校验组件的value值
// element是校验组件的节点对象
// params是校验规则的参数
$.validator.addMethod("validatePhone",function(value,element,params){
    var flag = false;
    $.ajax({
        async:false,
        type:"post",
        url:"/user?method=validate",
        data:{"phone":value},
        dataType:"json",
        success:function (c) {
            flag = c.flag;
        }
    });
    return flag;
});

$.validator.addMethod("validateUsername",function(value,element,params){
    var flag = false;
    $.ajax({
        async:false,
        type:"post",
        url:"/user?method=validateUsername",
        data:{"username":value},
        dataType:"json",
        success:function (c) {
            flag = c.flag;
        }
    });
    return flag;
});