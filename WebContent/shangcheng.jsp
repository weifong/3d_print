<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="Parameter.jsp" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/shangcheng.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scale.js"></script>
	<title>商城</title>


	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/common.js"></script>
</head>
<body>
	<%@include file="share.jsp" %>

	<div class="wrapper beginContent">
			<section class="fenlei">
			
				<div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel" style="width:749px;height:500px;position:relative;top=60px;left:1002px">
		   <!-- 轮播（Carousel）指标 --><!-- 图片大小749*500 -->
				   <ol class="carousel-indicators">
					  <li data-target="#myCarousel" data-slide-to="0" class="active" style=""></li>
					  <li data-target="#myCarousel" data-slide-to="1"></li>
					  <li data-target="#myCarousel" data-slide-to="2"></li>
				   </ol>   
				   <!-- 轮播（Carousel）项目 -->
				   <div  class="carousel-inner" style="width:749px;height:500px;position: relative;top=60px;">
					  <div class="item active">
						 <img src="img/shoushu2.png" alt="First slide">
						 <div class="carousel-caption">标题 1</div>
					  </div>
					  <div class="item">
						 <img src="img/shoushu1.png" alt="Second slide">
						 <div class="carousel-caption">标题 2</div>
					  </div>
					  <div class="item">
						 <img src="img/shoushu2.png" alt="Third slide">
						 <div class="carousel-caption">标题 3</div>
					  </div>
				   </div>
				   <!-- 轮播（Carousel）导航 -->
				   <a class="carousel-control left" href="#myCarousel" 
					  data-slide="prev" >&lsaquo;</a>
				   <a class="carousel-control right" href="#myCarousel" 
					  data-slide="next">&rsaquo;</a>
			</div> 
				<article >
					<table border="0">
						<caption style="font-size:65px;text-align:center;">分类 </caption>
						<tr>
							<td>
						
								<a href="" class="a1"> <span style="font-size:40px;">产品类别</span></a><br />
								<a href="" class="a1"> <span style="font-size:40px;">产品类别</span></a><br />
								<a href="" class="a1"> <span style="font-size:40px;">产品类别</span></a><br />
							</td>
						</tr>
					</table>
				</article>
			</section>
			<section class="zhanshi">
				<table border="10">
					<caption style="font-size:65px;text-align:center;">商品展示</caption>
					<tr>
						<td><a href=""><img src="img/shangcheng1.png" width="400px";height="300px" alt="图片" /> </a></td>
						<td><a href=""> <img src="img/shangcheng2.jpg" alt="图片" /></a></td>
						<td><a href=""> <img src="img/shangcheng3.jpeg" alt="图片" /> </a></td>
						<td><a href=""> <img src="img/shangcheng4.jpg" alt="图片" /> </a></td>
					</tr>
					<tr>
						<td><a href=""> <img src="" alt="图片" /></a> </td>
						<td> <a href=""><img src="" alt="图片" /></a> </td>
						<td><a href=""><img src="" alt="图片" /></a>  </td>
						<td> <a href=""><img src="" alt="图片" /></a> </td>
					</tr>
				</table>
			</section>
	</div>


	<!-- 底部 -->
	<footer class="section section-primary">
		<div class="container">
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