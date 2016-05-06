function toTop () {
	var elem;
	if(navigator.userAgent.indexOf('Firefox') == -1)
		elem = document.body;
	else
		elem = document.documentElement;
	$(elem).animate({scrollTop: 0});
}

$(document).ready(function(){
	/* 导航栏搜索选项 */
	$(".nav_search_option>li>a").click(function (e) {
		$(".nav_search_option>li.active").removeClass("active");
		$(this.parentElement).addClass("active");
		this.querySelector("input[type=radio]").checked = true;
	});
	$("#btn_to_top").click(toTop);
	
	$("#btn_to_top");
});