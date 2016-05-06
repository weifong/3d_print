<!DOCTYPE html>
<html lang="en">
<%@ page language="java" pageEncoding="utf-8" import="java.sql.ResultSet"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<%@include file="Parameter.jsp" %>

<head>
	<meta charset="UTF-8">
	<title>模型库</title>
	<meta name="viewport" width="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.patch.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/model-index.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/common.js"></script>
	<script src="js/model-index.js"></script>
</head>
	<body>
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
				        </ul>
			        </li>
					<li class="active"><a>模型库</a></li>
					<li><a href="designer.html">设计师</a></li>
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

	<div class="container">

		<!-- 图片轮播 -->
		<div class="row pic_carousel">
			<!-- 左边大图 -->
			<ul class="col-lg-9 pic_big">
				<li style="display: block;">
					<a href=""><img src="images/model_pic_play.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_light.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_game.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_child.jpg" alt=""></a>
				</li>
			</ul>

			<!-- 右边缩略图 -->
			<ul class="col-lg-2dot4 pic_sm">
				<li>
					<a href=""><img src="images/model_pic_sm_play.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_sm_light.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_sm_game.jpg" alt=""></a>
				</li>
				<li>
					<a href=""><img src="images/model_pic_sm_child.jpg" alt=""></a>
				</li>
			</ul>
		</div>

		<!-- 模型列表 -->
		<div class="model_list_container">
				<h2 class="title_lg">灯饰家具</h2>
			<ul class="list-unstyled row">
			
<%
String strSql="select * from model ORDER BY model_type;";
DataBaseBean.openDataBase();
ResultSet rs=DataBaseBean.querySql(strSql);
String strBeginType=null;

while(rs.next())
{
	int iModelId=rs.getInt("id");
	String strName=rs.getString("model_name");
	String str3dimage=rs.getString("3dImage_url");
	String strModeType=rs.getString("model_type");
	int iBrowse=rs.getInt("browse_count");
	int iDownLoad=rs.getInt("download_count");
	int iapprover=rs.getInt("approver_count");
%> 
	<li class="col-md-4 col-lg-2dot4">
	<a class="thumbnail" href="model_sub.jsp?<%=iModelId%>">
		<img src="<%=str3dimage %>" alt="<%=strName%>">
		<div class="caption">
			<h3><%=strName %></h3>
		</div>
	
		<div class="footer">
			<div class="col-lg-4" >浏览 <span class="badge"><%=iBrowse %></span></div>
			<div class="col-lg-4">下载 <span class="badge"><%=iDownLoad %></span></div>
			<div class="col-lg-4">　赞 <span class="badge"><%=iapprover %></span></div>
		</div>
	</a>
    </li>   
<%
}
%>		</ul>						
	</div>
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
					<h2><span class="glyphicon glyphicon-cog"></span> 云制造</h2>
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