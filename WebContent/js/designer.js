$(document).ready(function(){
	// 作品区高度
	var workHeight = 70;

	$(".designers > ul > li").mouseenter(function () {
		$(this).find(".info .works").stop().animate({height: workHeight + 'px'});
	})
	.mouseleave(function () {
		$(this).find(".info .works").stop().animate({height: 0});
	});
});
