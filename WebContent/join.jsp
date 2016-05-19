<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="Parameter.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>加盟/入驻</title>
	<meta name="viewport" width="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/bootstrap.patch.css"/>
	<link rel="stylesheet" href="css/common.css"/>
	<link rel="stylesheet" href="css/join.css"/>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/common.js"></script>
</head>
<body>
<%@include file="share.jsp" %>
	<!-- 页面主体 -->
	<div class="container wrap wrapper">
		<!-- 板块一 -->
		<div class="col-lg-3" style="height: 620px;">
			<div class="panel panel-default block1">
				<h2 class="title_sm">常见问题解答</h2>
				<h2 class="title_sm">入驻加盟条件</h2>
				<h2 class="title_sm">资质要求</h2>
				<h2 class="title_sm">费用标准</h2>
				<h2 class="title_sm">联系方式</h2>
				<h2 class="title_sm">入驻注意事项</h2>
			</div>
		</div>

		<!-- 板块二：轮播图 -->
		<div class="col-lg-6" style="height: 300px;">
			<div class="panel panel-default">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="testImg/join_pic.svg" alt="...">
							<div class="carousel-caption">
								标题1
							</div>
						</div>
						<div class="item">
							<img src="testImg/join_pic.svg" alt="...">
							<div class="carousel-caption">
								标题2
							</div>
						</div>
						<div class="item">
							<img src="testImg/join_pic.svg" alt="...">
							<div class="carousel-caption">
								标题3
							</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<!-- 板块三：按钮 -->
		<div class="col-lg-3" style="height: 300px;">
			<div class="panel panel-default join_btn_group">
				<a href="preruzhu.jsp">
					<div><big class="glyphicon glyphicon-triangle-left"></big><span class="big">我</span>/要入驻</div>
				</a>
				<a href="jiamengxinxi.jsp">
					<div><span class="big">我</span>/要加盟<span class="glyphicon glyphicon-triangle-right"></span></div>
				</a>
			</div>
		</div>

		<!-- 板块四：流程 -->
		<div class="col-lg-9" style="height: 300px;">
			<div class="panel panel-default process">
				<h2 class="title_lg">入驻流程：</h2>
				<div>1. 注册  2.填写/提交信息和材料 3.等待后台审核  4.商家缴费，开店</div>
				<h2 class="title_lg">加盟流程：</h2>
				<div>2. 注册  2.填写/提交信息和材料 3.等待后台审核  4.商家开店</div>

				<!-- <h2>入驻流程：</h2>
				<div class="progress">
					<div class="progress-bar progress-bar-danger">
						<span>1. 注册</span>
					</div>
					<div class="progress-bar progress-bar-warning">
						<span>2.填写/提交信息和材料</span>
					</div>
					<div class="progress-bar progress-bar-info">
						<span>3.等待后台审核</span>
					</div>
					<div class="progress-bar progress-bar-success">
						<span>4.商家缴费，开店</span>
					</div>
				</div>
				<h2>加盟流程：</h2>
				<div class="progress">
					<div class="progress-bar progress-bar-danger">
						<span>1. 注册</span>
					</div>
					<div class="progress-bar progress-bar-warning">
						<span>2.填写/提交信息和材料</span>
					</div>
					<div class="progress-bar progress-bar-info">
						<span>3.等待后台审核</span>
					</div>
					<div class="progress-bar progress-bar-success">
						<span>4.商家开店</span>
					</div>
				</div> -->
			</div>
		</div>
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