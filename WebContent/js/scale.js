$(document).ready(function(){
	/* 缩放 */
	var rate = screen.width / 1920;
	var style = document.querySelector(".wrapper").style;
	if("webkitTransform" in style)
	{
		// Chome内核浏览器新版支持zoom
		style.zoom = rate * 100 + '%';
	}
	else if("MozTransform" in style)
	{
		// 火狐浏览器不支持zoom，用缩放模拟
		style.MozTransform = 'scale(' + rate + ')';
	}
	else if("-ms-transform" in style)
	{
		// ie浏览器
		style["-ms-transform"] = 'scale(' + rate + ')';
		style.height = 0;
	}
});