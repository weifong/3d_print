<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ include file="Parameter.jsp" %>
<!DOCTYPE HTML>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/register.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/index.js"></script>


	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/common.js"></script>

	<title>注册</title>
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
<div class="wrapper">
	<div style="height: 119px"></div>
	<section class="prompt">
		<span class="pro">
		<br/>
		欢迎来到3D云平台，如果您是新用户，请填写下面的表单进行注册。如果您已经是本站的会员，请您直接<a href="login.jsp"><mark>登录<mark/></a></span> 
	</section>
    <section class="picture">
		<div class="pic">
		<a href="" ><font size="4"> 首页</font> </a>
		/
		<a href="register.jsp"> <font size="4"> 注册</font></a>  
		</div> 
		<div id="myCarousel" class="carousel slide" style="width:560px;height:473px;position:relative;top=60px;left:230px">
		   <!-- 轮播（Carousel）指标 -->
		   <ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active" style=""></li>
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
    <section class="register">
		<form action="RegisterServlet" class="myform" method="post" enctype="multipart/form-data">
			<label class="in">
				<p><span class="title">个人头像</span></p>
				<input type="file" name="showlogo"required />
			</label>
			<label class="in">
				<p><span class="title">邮箱地址</span></p>
				<input type="email" name="email" required />
			</label>
			<label class="in">
				<p><span class="title">您的姓名</span></p>
				<input type="text" name="username" required />
			</label>
			<label class="in">
				<p><span class="title">您的性别</span></p>
				<input type="text" name="sex" required />
			</label>
			<label class="in">
				<p><span class="title">设置密码</span></p>
				<input type="password" name="password"required />
			</label>
			<label class="in">
				<p><span class="title">联系QQ</span></p>
				<input type="text" name="qq"required />
			</label>
			<label class="in">
				<p><span class="title">联系电话</span></p>
				<input type="text" name="tel"required />
			</label>
			<label class="in">
				<p><span class="title">所在地区</span></p>
				<input type="text" name="address"required />
			</label>
			<!-- 
			<label class="in">
				<input type="checkbox" name="agreement" value="agree" style="width:15px;height:15px;"   />
				<span class="title">我已认真阅读并同意《服务使用协议》</span>
			</label>
			 -->
			<input type="submit" value="注册" class="submit">
						
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
					<h2><span class="glyphicon glyphicon-cog"></span>我是加盟商</h2>
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