<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="Parameter.jsp" %>
<!DOCTYPE html>
<html lang="en">
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
    <%@include file="share.jsp" %>
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
		<img src="<%=str3dimage %>" width="280" height="250"  alt="<%=strName%>">
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