<%@ page contentType="text/html; charset=utf-8" language="java"	import="java.sql.*" errorPage=""%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/login.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scale.js"></script>
    <script src="js/login.js"></script>
	<link rel="stylesheet" href="css/common.css"/>
	<style type="text/css">
	#apDiv1 {
	position: absolute;
	width: 105px;
	height: 26px;
	z-index: 1;
	left: 357px;
	top: 337px;
}
    #apDiv2 {
	position: absolute;
	width: 97px;
	height: 25px;
	z-index: 1;
	left: 477px;
	top: 337px;
}
    #apDiv3 {
	position: absolute;
	width: 137px;
	height: 24px;
	z-index: 1;
	left: 587px;
	top: 337px;
}
    body,td,th {
	font-size: 18px;
}
    </style>
	<script src="js/common.js"></script>

	<title>登录</title>
</head>
<% String flag=(String)request.getAttribute("flag");
   request.setAttribute("flag",null);
 %>
<body onload="check('<%=flag %>')">

	<!-- 导航栏 -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a href="index.jsp">
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
				        </ul>
			        </li>
					<li><a href="model.jsp">模型库</a></li>
					<li><a href="designer.jsp">设计师</a></li>
					<li><a href="join.html">加盟/入驻</a></li>
					<li><a href="shangcheng.html">商城</a></li>
				</ul>

				<!-- 右边占位 -->
				<div class="navbar-right"></div>
				<ul class="nav navbar-nav navbar-right">
					<a href="login.jsp" class="btn btn-primary navbar-btn">登录</a>
					<a href="register.html" class="btn btn-default navbar-btn">注册</a>
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

<div class="wrapper">

	<div style="height: 139px"></div>
    <section class="picture">
		<div class="pic">
		<a href="index.jsp" ><font size="4"> 首页</font> </a>
		/
		 <font size="4"> 登录</font>
		</div> 
		<div id="myCarousel" class="carousel slide" style="width:560px;height:473px;position:relative;top=60px;left:230px">
		   <!-- 轮播（Carousel）指标 -->
		   <ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			  <li data-target="#myCarousel" data-slide-to="1"></li>
			  <li data-target="#myCarousel" data-slide-to="2"></li>
		   </ol>   
		   <!-- 轮播（Carousel）项目 -->
		   <div class="carousel-inner" style="width:560px;height:473px;position: relative;top=60px;">
			  <div class="item active">
				 <img src="img/11.png" alt="First slide">
				 <div class="carousel-caption">标题 1</div>
			  </div>
			  <div class="item">
				 <img src="img/1.png" alt="Second slide">
				 <div class="carousel-caption">标题 2</div>
			  </div>
			  <div class="item">
				 <img src="img/11.png" alt="Third slide">
				 <div class="carousel-caption">标题 3</div>
			  </div>
		   </div>
		   <!-- 轮播（Carousel）导航 -->
		   <a class="carousel-control left" href="#myCarousel" 
			  data-slide="prev" >&lsaquo;</a>
		   <a class="carousel-control right" href="#myCarousel" 
			  data-slide="next">&rsaquo;</a>
		</div> 
    </section>
    <section class="longin">
      <form name="loginForm" action="LoginServelet" method="post" class="loginform">
		<fieldset>
                    <legend class="we">Welcome</legend>
			<label class="ln">
				<span class="title">账号</span>
				<input type="text" name="username"/>
				<span class="error">
			</label>
			<label class="ln">
				<span class="title">密码</span>
				<input type="password" name="password"  />
				<span class="error">
			</label>
			<button onclick="return for_login()">登录</button>
        </fieldset>
            
     <!-- 
      <div id="apDiv1">
              <input type="radio" name="radio" id="个人用户" value="个人用户" checked="checked">
              <label for="个人用户"></label>
            个人用户</div>
         
       
			
        <div id="apDiv2">
          <input type="radio" name="radio" id="加盟商" value="加盟商">
          <label for="加盟商"></label>
        加盟商</div>
        <div id="apDiv3">
          <input type="radio" name="radio" id="入驻商" value="入驻商">
          <label for="入驻商"></label>
        入驻商</div>
         -->   
      </form>
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