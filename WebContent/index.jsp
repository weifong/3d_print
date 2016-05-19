<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="Parameter.jsp" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/index.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!--<script src="js/scale.js"></script>-->
	<title> 首页 </title>
	<script type="text/javascript">
		function a_click(v){
			var list = $(".img");
			list.filter(":not(:hidden)").attr("hidden", "");
			list.eq(v).removeAttr("hidden");
		}
	</script>

	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/common.js"></script>
</head>
<%
if(null == session.getAttribute("userid"))
{
	session.setAttribute("userid", "");
}
%>
<body>
<input type="hidden" id="userid" value="null"/>
	<%@include file="share.jsp" %>
	<div class="wrapper beginContent">
		<div style="height:50px;"></div>
		<div id="myCarousel" class="carousel slide"   style="width:1450px;height:505px;margin:0 auto;">
		   <!-- 轮播（Carousel）指标 -->
		   <ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active" style=""></li>
			  <li data-target="#myCarousel" data-slide-to="1"></li>
			  <li data-target="#myCarousel" data-slide-to="2"></li>
		   </ol>   
		   <!-- 轮播（Carousel）项目 -->
		   <div class="carousel-inner" data-interval="4000" data-ride="carousel" style="width:1450px;height:505px;">
			  <div class="item active">
				 <img src="img/shouye2.jpg" alt="First slide">
				 <div class="carousel-caption">标题 1</div>
			  </div>
			  <div class="item">
				 <img src="img/shouye1.jpg" alt="Second slide">
				 <div class="carousel-caption">标题 2</div>
			  </div>
			  <div class="item">
				 <img src="img/shouye3.jpg" alt="Third slide">
				 <div class="carousel-caption">标题 3</div>
			  </div>
		   </div>
		   <!-- 轮播（Carousel）导航 -->
		   <a class="carousel-control left" href="#myCarousel" 
			  data-slide="prev" >&lsaquo;</a>
		   <a class="carousel-control right" href="#myCarousel" 
			  data-slide="next">&rsaquo;</a>
		</div>  
		<section class="case ">
				<article class="art1">
					<span class="case2">成功案例</span>
					<a  href=""style="position:relative;top:40px;left:100px;" onMouseMove="a_click(0)"><span class="case1"  >工业<span></a>
					<a  href="" style="position:relative;top:-16px;left:280px;"><span class="case1 " onMouseMove="a_click(1)" >医疗<span></a>
				</article>
			<article id="Industry" class="img">
				<a href=""><img src="img/shangcheng2.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng3.jpeg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng2.jpg" alt="工业" /> </a>
				<a href=""><img src="img/shangcheng2.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng3.jpeg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng2.jpg" alt="工业" /> </a>
			</article>
			<article id="medical" class="img">
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
				<a href=""><img src="img/shangcheng2.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng3.jpeg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
				<a href=""><img src="img/shangcheng2.jpg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng3.jpeg" alt="工业" /> </a>
				<a href="" ><img src="img/shangcheng4.jpg" alt="工业" /> </a>
			</article> 
			<img src="img/shouye.jpg" id="image"  class="img">
		</section>
		<section class="describe wrap">
			<table border="1" class="tab">
				<caption> 3D打印优势</caption>
				<tr>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				
			</table>
		</section>
	</div>


	<!-- 底部 -->
	<footer class="section section-primary">
		<div class="container wrap">
			<ul class="row list-unstyled footer_top_list">
				<li class="col-lg-2">
					<h2><span class="glyphicon glyphicon-book"></span> 设计指南</h2>
				</li>
				<li class="col-lg-2">
					<h2><span class="glyphicon glyphicon-shopping-cart"></span> 交易指南</h2>
				</li>
				<li class="col-lg-2">
					<h2><span class="glyphicon glyphicon-user"></span> 我是设计师</h2>
				</li>
				<li class="col-lg-2">
					<h2><span class="glyphicon glyphicon-cog"></span> 我是加盟商</h2>
				</li>
				<li class="col-lg-2">
					<h2><span class="glyphicon glyphicon-wrench"></span> 服务支持</h2>
					<ul class="list-unstyled footer_second_list">
						<li><a href="#">关于我们</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>