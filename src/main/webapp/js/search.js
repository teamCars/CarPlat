$(function(){
	$("#J_miniCartBtn").mouseenter(function(){
		$("#menu-content").slideDown(300,function(){});
	})
	$("#menu-content").mouseleave(function(){
		$("#menu-content").slideUp(300,function(){});
	})	
})

$(function(){
	$("#nav-item1").mouseenter(function(){	
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu1").slideToggle(300,function(){})
	})
	$("#J_navMenu1").mouseleave(function(){
		$("#J_navMenu1").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item2").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu2").slideToggle(300,function(){})
	})
	$("#J_navMenu2").mouseleave(function(){
		$("#J_navMenu2").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item3").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu3").slideToggle(300,function(){})
	})
	$("#J_navMenu3").mouseleave(function(){
		$("#J_navMenu3").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item4").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu4").slideToggle(300,function(){})
	})
	$("#J_navMenu4").mouseleave(function(){
		$("#J_navMenu4").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item5").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu5").slideToggle(300,function(){})
	})
	$("#J_navMenu5").mouseleave(function(){
		$("#J_navMenu5").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item6").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu6").slideToggle(300,function(){})
	})
	$("#J_navMenu6").mouseleave(function(){
		$("#J_navMenu6").slideUp(300,function(){})
	})
})
$(function(){
	$("#nav-item7").mouseenter(function(){
		$("div").siblings(".header-nav-menu").css("display","none");
		$("#J_navMenu7").slideToggle(300,function(){})
	})
	$("#J_navMenu7").mouseleave(function(){
		$("#J_navMenu7").slideUp(300,function(){})
	})
})


$(function(){
	$("#s1").click(function(){
		$("#s1").css("background-color","#f1393a");
		$("li.active").siblings().css("background-color","#414141");
		$("#seckill-con1").css("display","none");
		$("#seckill-con2").css("display","none");
		$("#seckill-con3").css("display","none");
		$("#seckill-con4").css("display","none");
//		$("#seckill-con").css("display","block")
		
	})
	
})
$(function(){
	$("#s2").click(function(){
		$("#s2").css("background-color","#f1393a");
		$("li.active1").siblings().css("background-color","#414141");
		$("#seckill-con1").css("display","block");
		$("#seckill-con2").css("display","none");
		$("#seckill-con3").css("display","none");
		$("#seckill-con4").css("display","none");
//		$("div").siblings("#seckill-con1").css("display","none");
	})
	
})
$(function(){
	$("#s3").click(function(){
		$("#s3").css("background-color","#f1393a");
		$("li.active2").siblings().css("background-color","#414141");
		$("#seckill-con1").css("display","none");
		$("#seckill-con2").css("display","block");
		$("#seckill-con3").css("display","none");
		$("#seckill-con4").css("display","none");
//		$("div").siblings("#seckill-con1").css("display","none");
	})
	
})
$(function(){
	$("#s4").click(function(){
		$("#s4").css("background-color","#f1393a");
		$("li.active3").siblings().css("background-color","#414141");
		$("#seckill-con1").css("display","none");
		$("#seckill-con2").css("display","none");
		$("#seckill-con3").css("display","block");
		$("#seckill-con4").css("display","none");
//		$("div").siblings("#seckill-con1").css("display","none");
	})
	
})
$(function(){
	$("#s5").click(function(){
		$("#s5").css("background-color","#f1393a");
		$("li.active4").siblings().css("background-color","#414141");
		$("#seckill-con1").css("display","none");
		$("#seckill-con2").css("display","none");
		$("#seckill-con3").css("display","none");
		$("#seckill-con4").css("display","block");
//		$("div").siblings("#seckill-con1").css("display","none");
	})
	
})


