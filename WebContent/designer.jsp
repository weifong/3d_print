<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="Parameter.jsp" %>
<!DOCTYPE html>
<html lang="en">
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
	<%@include file="share.jsp" %>
	

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