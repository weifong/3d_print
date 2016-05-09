<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/ruzhuxinxi.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scale.js"></script>
	<script src="js/ruzhuxinxi.js"></script>
	<title> 加盟条款</title>
	<script type="text/javascript">
		function a_click(v){
			var list = $(".h");
			list.filter(":not(:hidden)").attr("hidden", "");
			list.eq(v).removeAttr("hidden");
		
		}
	</script>
	
	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/common.js"></script>
</head>
<body>
	    <%@include file="share.jsp" %>
	<div style="height:100px"></div>
	<div class="wrapper">
		<section class="xinxi">
			
			 <div id="xinxi1" class="h" hidden="true" ><!---->
				<form name="ruzhuForm" action="uploadServlet" method="post" enctype="multipart/form-data">
					<label for="" class="in">
						<p><span >企业营业执照</span></p>
						<input type="file" id="license"/>
					</label>	
					<label for=""class="in">
						<p><span>企业所在地址</span></p>
						<input type="text" id="address"/>
					</label>
					<label for="" class="in">
						<p><span> 企业法人身份证</span></p>
						<input type="file" id="identitycard"/>
					</label>	
					<label for="" class="in">
						<p><span> 代理人身份证</span></p>
						<input type="file" id="agent"/>
					</label>
					<label for="" class="in">
						<p><span> 设备或材料照片</span></p>
						<input type="file" id="pic"/>
					</label>
					<input type="submit" style="width:50px;height:30px;" value="提交" onclick="return onRuZhu()"/>
				</form>
			</div>
			<div id="tiaok" class="h" >
				<table border="1">
					<caption>是否同意以下条款</caption>
					<tr>
						<td>1.条款</td>
					</tr>
					<tr>
						<td>2.条款</td>
					</tr>
					<tr>
						<td>3.条款</td>
					</tr>
					<tr>
						<td>4.条款</td>
					</tr>
				</table><br /><br />
				<span class="span1">同意</span><input type="checkbox" onclick="a_click(0)"/>
			</div>
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