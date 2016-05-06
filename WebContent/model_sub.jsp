<!DOCTYPE html>
<html lang="en">
<%@ page language="java" pageEncoding="utf-8" import="java.sql.ResultSet"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<%@include file="Parameter.jsp" %>
<head>
	<meta charset="UTF-8">
	<title>模型库子页面</title>
	<meta name="viewport" width="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap.patch.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/model-sub.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/common.js"></script>
	<script src="js/model-index.js"></script>
	<script src="js/model_sub.js"></script>
	
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
                            <li><a href="gongyedingzhi.html">工业/个性化定制</a></li>
				        </ul>
			        </li>
					<li class="active"><a href="model.jsp">模型库</a></li>
					<li><a href="designer.html">设计师</a></li>
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
	
	<div class="container">

		<!-- 路径导航 -->
		<ul class="row breadcrumb">
			<li><a href="#">首页</a></li>
			<li><a href="#">模型</a></li>
			<li class="active">模型下载</li>
		</ul>

<%
String stridTemp=new String(request.getQueryString().toString().getBytes("ISO-8859-1"),"utf-8");
if(stridTemp ==null || stridTemp =="")
{
	stridTemp=session.getAttribute("model_id").toString();
}
int iId=Integer.parseInt(stridTemp);
//String strIsNew=session.getAttribute("isNewBrowser").toString();
String strNewid="";
if(null != session.getAttribute("isNewBrowser"))
{
	strNewid=session.getAttribute("isNewBrowser").toString();
	
}
if(!strNewid.equals(stridTemp))
{
	
	session.setAttribute("isNewBrowser", stridTemp);
	String strSql="select browse_count from model where id="+iId;
	ResultSet rs=DataBaseBean.querySql(strSql);
	if(rs.next())
	{
		int iBrowse=rs.getInt("browse_count");
		iBrowse++;
		rs.close();
		strSql="update model set browse_count="+iBrowse+" where id="+iId;
		DataBaseBean.updateSql(strSql);
	}
}
int iUploaderId=0;
int iBrowse_count=0;
int iDownload_count=0;
int iApprover_count=0;
int iSize=0;
String strModelType=null;	
String strUploader=null;
String strModelName=null;
String str3dImage_url=null;
String strSuitType=null;
String strSql="select * from model where id="+iId;
ResultSet rs=DataBaseBean.querySql(strSql);
while(rs.next())
{
	iUploaderId=rs.getInt("user_id");
	iDownload_count=rs.getInt("download_count");
	iBrowse_count=rs.getInt("browse_count");
	iApprover_count=rs.getInt("approver_count");
	iSize=rs.getInt("size");
	strModelName=rs.getString("model_name");
	str3dImage_url=rs.getString("3dImage_url");
	strModelType=rs.getString("model_type");
	strSuitType=rs.getString("suite_type");
}
rs.close();
//根据userid获取上传者的名字
strSql="select name from userinfo where id="+iUploaderId;
rs=DataBaseBean.querySql(strSql);
while(rs.next())
{
	strUploader=rs.getString("name");

}
rs.close();
session.setAttribute("model_id", iId);
%>

		<!-- 模型详情 -->
		<div class="row panel panel-default">
			<!-- 左边 -->
			<div class="col-lg-6 panel-body">
				<img src="<%=str3dImage_url%>" class="img-responsive" alt="...">
				<div class="pic_sm_container">
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail">
							<img src="testImg/sm_pic.svg" alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail">
							<img src="testImg/sm_pic.svg" alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail">
							<img src="testImg/sm_pic.svg" alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail">
							<img src="testImg/sm_pic.svg" alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail">
							<img src="testImg/sm_pic.svg" alt="...">
						</a>
					</div>
				</div>
			</div>
			<!-- 右边 详细参数 -->
			<div class="col-lg-6 model_detail">
				<h1>模型名称：<%=strModelName %></h1>
				<p>模型大小：<%=iSize %>kb</p>
				<p>上传分类：<%=strModelType %></p>
				<p>适合材料：<%=strSuitType %></p>
				<p>　上传者：<%=strUploader %></p>
				<div class="btn-group btn-group-justified">
					<div class="print btn btn-success">
						<span class="glyphicon glyphicon-send"></span> 去打印
					</div>
					<div class="download btn btn-info">
						<span class="glyphicon glyphicon-save"></span> 免费下载
					</div>
				</div>
				<form name="modelform" action="Model_sub" method="post">
				<div class="footer">
					<div class="col-lg-4"><span class="glyphicon glyphicon-star-empty"></span><%=iBrowse_count %>浏览</div>
					<div class="col-lg-4"><span class="glyphicon glyphicon-cloud-download"></span><%=iDownload_count %>下载</div>
					<div class="col-lg-4" id="divzan"><button onclick="onZanClick()" id="btn_zan" value=""><span class="glyphicon glyphicon-thumbs-up"></span><%=iApprover_count %>赞</button></div>
				</div>
				</form>
			</div>
		</div>
		
		<!-- 评论区 -->
		<div class="row panel panel-default comment_container">
			<h2><span class="glyphicon glyphicon-comment"></span> 评论</h2>
			<form>
	  			<div class="form-group">
	  				<textarea class="form-control" rows="3" placeholder="请输入..." name="comment_content"></textarea>
	  				<div class="pull-right comment_submit">
	  					还可以输入<span class="input_rest text-danger">240</span>个字符
						<button class="btn btn-info">评论</button>
	  				</div>
	  				<div class="all_comment">
	  					<h3 class="title_sm">全部评论</h3>
	  				</div>
	  			</div>
	  		</form>
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