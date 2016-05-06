$(document).ready(function(){
	$(".pic_big>li").css('display', 'none');
	carousel($(".pic_carousel"));
});


/* 图片轮播 */
function carousel ($carousel) {
	var DELAY = 3000;
	var mTimer;
	var isStoped = false;
	var iIndex   = -1;

	next();

	/*鼠标移入轮播区域，暂停自动播放*/
	$carousel.mouseenter(function(){
		mStoping = true;
		clearTimeout(mTimer);
	});

	/*鼠标移出轮播区域，重新设置计时器*/
	$carousel.mouseleave(function(){
		mStoping = false;
		resetTimer();
	});

	/*小图鼠标移入监听*/
	$carousel.find(".pic_sm>li").mouseenter(function(){
		onChangePic($(this).index());
	});

	function resetTimer(){
		if (isStoped)
			return;
		clearTimeout(mTimer);
		mTimer = setTimeout(next, DELAY);
	}

	/*自动切换*/
	function autoLoop(){
		next();
		resetTimer();
	}

	function next(){
		onChangePic(iIndex + 1, resetTimer);
	}

	function onChangePic(index, callback) {
		if(index != iIndex)
		{
			// 大图列表
			var bigList = $carousel.find(".pic_big>li");

			// 缩略图列表
			var smList = $carousel.find(".pic_sm>li");

			// 前一张缩略图变灰
			smList.filter(".active").removeClass("active");
			
			// 前一张淡出
			if (iIndex != -1) {
				bigList.eq(iIndex).fadeOut();
			}


			// 手动调整范围
			if (index == -1) 
				index = bigList.length - 1;
			else if(index == bigList.length)
			 	index = 0;

			// 重新设置当前序号
			iIndex = index;

			// 当前缩略图变亮
			smList.eq(index).addClass("active");

			// 当前大图淡入
			bigList.eq(index).fadeIn("slow", callback);
		}
	}
}