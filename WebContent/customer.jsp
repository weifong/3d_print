<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="Parameter.jsp" %>
<%
    String name=(String)session.getAttribute("username");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>用户管理中心</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="css/manage.css">

	</head>

	<body>
	<%@include file="share.jsp" %>
		<div class="container">
			<div class="top">
				<div class="head_left">
					欢迎光临！<%=session.getAttribute("username") %>
				</div>
				<div class="head_right"><a href="exitServlet">退出</a></div>
			</div>
			<div class="native"></div>
			<div class="content">
				<div class="menu">
					<ul>
						<li>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="cus_order_list.jsp" target="view_information">订单详情</a>
						</li>
						<li>
							<a href="cus_personal_center.jsp" target="view_information">个人资料</a>
						</li>
					</ul>
				</div>
				<div class="clearfloat"></div>
				<div class="information">
					<iframe src="cus_order_list.jsp" 
					name="view_information" id="view_information" 
					 style="background-color=transparent" frameborder="0"
					  width="100%" height="100%" scrolling="no">
					</iframe>
				</div>
			</div>
		</div>
	</body>
</html>
