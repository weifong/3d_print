<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/ruzhuxinxi.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scale.js"></script>
	<title> 加盟条款</title>
	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/common.js"></script>
	
</head>
<body>
	<!-- 导航栏 -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a href="index.html">
					 <img alt="Brand" src="images/logo.png" height="50px">
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="nav_first">
						<a href="#">定制</a>
						<ul class="dropdown-menu">
							<li><a href="shoushudaoban.html">手术导板定制</a></li>
                            <li><a href="gongyedingzhi.html">工业/个性化定制</a></li>
				        </ul>
			        </li>
					<li><a href="model.jsp">模型库</a></li>
					<li><a href="designer.jsp">设计师</a></li>
					<li><a href="join.jsp">加盟/入驻</a></li>
					<li><a href="shangcheng.jsp">商城</a></li>
                    <li><a href="dingdanguanli.jsp">我的订单</a></li>
                    <li><a href="PersonalManage.jsp">个人中心</a></li>
				</ul>

				<!-- 右边占位 -->
				<div class="navbar-right"></div>
				<ul class="nav navbar-nav navbar-right">
				<%
				   String strUser=session.getAttribute("username")==null?"":session.getAttribute("username").toString();
				   if(strUser =="")
				   {
				%>
				<a href="login.jsp" class="btn btn-primary navbar-btn">登录</a>
				<a href="register.jsp" class="btn btn-default navbar-btn">注册</a>	
				<%   
				   }
				   else
				   {
				%>
				<a href="#" class="btn btn-default navbar-btn">欢迎您<%=strUser %></a>
				<form action="exitServlet" method="post" class="btn btn-default"><button class="btn btn-default">退出</button></form>
				<%	   
				   }
				%>
					
				</ul>
				<!-- 搜索框 -->
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="search" class="form-control" placeholder="搜索">
					</div>
					<div class="btn-group">
						<button type="submit" class="btn btn-default">GO</button>
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu nav_search_option">
							<!-- <label><a><input type="radio" name="search_option" />资讯</label> -->
							<li class="active"><a><input type="radio" class="hidden" name="search_option" value="info" checked="checked" />资讯</a></li>
							<li><a><input type="radio" class="hidden" name="search_option" value="model" />模型</a></li>
							<li><a><input type="radio" class="hidden" name="search_option" value="product" />商品</a></li>
							<li><a><input type="radio" class="hidden" name="search_option" value="designer" />设计师</a></li>
						</ul>
					</div>
				</form>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	<!-- 侧边栏 -->
	<div class="slide_bar">
		<ul class="nav nav-list panel panel-default" role="group">
			<li><a href="#section-1"><br />咨询</a></li>
			<li><a href="#section-2"><br />电话</a></li>
			<li><a href="#section-3"><br />微信</a></li>
			<li><a href="#section-4"><br />微博</a></li>
			<li><a id="btn_to_top"><br />顶部</a></li>
		</ul>
	</div>
</body>
</html>