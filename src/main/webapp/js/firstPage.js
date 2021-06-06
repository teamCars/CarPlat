$(function(){
	//找到应该被点击的位置
		$("#city-button input").click(function() {
			//遍历，看哪个input被点击
			$button = $(this);
			console.log($button);
			console.log($button.val());
			//找到当前被点击的，改变背景颜色
			$button.css({ "background-color": "#00bc93" });
			$("#city-button input").not($button).css({ "background-color": "#f5f5f5" });
			//改变上面标签的值
			$text = $button.val();
			$("#citynow").text($text);

		})
})

