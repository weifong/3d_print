<!DOCTYPE html>
<html lang="en">
<%@ page language="java" pageEncoding="utf-8" import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=utf-8"%> 
<%@ include file="Parameter.jsp" %>
<head>
	<meta charset="UTF-8">
	<title>设计师</title>
	<meta name="viewport" width="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.patch.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/designer.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/common.js"></script>
	<script src="js/designer.js"></script>
</head>
<body>
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
                            <li><a href="gongyedingzhi.html">工业/个性化定制</a></li>
				        </ul>
			        </li>
					<li><a href="model.jsp">模型库</a></li>
					<li class="active"><a>设计师</a></li>
					<li><a href="join.html">加盟/入驻</a></li>
					<li><a href="shangcheng.html">商城</a></li>
                    <li><a href="dingdanguanli.html">我的订单</a></li>
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

	<!-- 页面主体 -->
	<div class="container">
		<!-- 签约流程 -->
		<div class="row process">
			<h2>设计师入驻：</h2>
			<a class="btn btn-primary onekey" href="#">【一键入驻】</a>
			<div class="progress">
				<div class="progress-bar progress-bar-danger">
					<span>注册</span>
				</div>
				<div class="progress-bar progress-bar-warning">
					<span>认证</span>
				</div>
				<div class="progress-bar progress-bar-info">
					<span>模型设计</span>
				</div>
				<div class="progress-bar progress-bar-success">
					<span>交易</span>
				</div>
			</div>
		</div>
		
		<div class="row designers">
			<h2 class="title_lg">设计师</h2>

			<!-- 排序方式 -->
			<div class="sortby btn-group btn-group-sm">
				<a class="active btn btn-default" href="#">按综合排序</a>
				<a class="btn btn-default" href="#">按人气排序</a>
			</div>
			
			<ul class="list-unstyled row">
			<%
			String strSql="select * from designer,userinfo where designer.userid=userinfo.id;";			
			ResultSet rs=DataBaseBean.querySql(strSql);
			String strBeginType=null;

			while(rs.next())
			{
				int iId=rs.getInt("id");
				int ifanscount=rs.getInt("fanscount");
				int imodelcount=rs.getInt("modelcount");
				int iattentioncount=rs.getInt("attentioncount");
				int iintegral=rs.getInt("integral");
				String strshowlogo=rs.getString("showlogo");
				String strName=rs.getString("name");
				String strSex=rs.getString("sex");
			%>
			
				<li class="col-md-4 col-lg-2dot4">
					<div class="info">
						<!-- 简介 -->
						<div class="brief">
							<h3><%=strName %></h3>
							<span><%=strSex %></span>
						</div>
						<!-- 作品 -->
						<div class="works">
							<a href="#"><img src="testImg/test_designer_work_1.jpg" alt="" /></a>
							<a href="#"><img src="testImg/test_designer_work_2.jpg" alt="" /></a>
							<a href="#"><img src="testImg/test_designer_work_3.jpg" alt="" /></a>
						</div>
					</div>
					<a class="thumbnail" href="shejishiyemian.jsp?<%=strshowlogo+"@"+iintegral+"@"+iId%>">
						<!-- 大图 -->
						<img src="<%=strshowlogo %>" alt="...">
						<!-- 底部 -->
						<div class="footer">
							<div class="col-lg-4">粉丝 <span class="badge"><%=ifanscount %></span></div>
							<div class="col-lg-4">产品 <span class="badge"><%=imodelcount %></span></div>
							<div class="col-lg-4 attention">关注 <span class="badge"><%=iattentioncount %></span></div>
						</div>
					</a>
				</li>
				<%} %>
				
			</ul>

			<!-- 分页 -->
			<nav class="navbar navbar-default row">
				<div>
					<ul class="pagination">
						<li class="disabled">
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li>
							<a href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
					<form action="" class="navbar-nav navbar-form">
						共<span class="count"></span>页，跳转到第
						<input type="text" class="form-control target" /> 页
						<button type="button" class="btn btn-default navbar-btn">确定</button>
					</form>
				</div>
			</nav>
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