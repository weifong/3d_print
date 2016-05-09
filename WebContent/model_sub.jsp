<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="Parameter.jsp" %>
<!DOCTYPE html>
<html lang="en">
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
	<input type="hidden" id="userid"
		value="<%=null==session.getAttribute("user_id")?"":session.getAttribute("user_id").toString()%>" />
    <%@include file="share.jsp" %>
	<div class="container">

		<!-- 路径导航 -->
		<ul class="row breadcrumb">
			<li><a href="#">首页</a></li>
			<li><a href="#">模型</a></li>
			<li class="active">模型下载</li>
		</ul>

		<%
			out.println("hello" + session.getAttribute("user_id").toString());
			String stridTemp = new String(request.getQueryString().toString()
					.getBytes("ISO-8859-1"), "utf-8");
			if (stridTemp == null || stridTemp == "") {
				stridTemp = session.getAttribute("model_id").toString();
			}
			int iId = Integer.parseInt(stridTemp);
			//String strIsNew=session.getAttribute("isNewBrowser").toString();
			String strNewid = "";
			if (null != session.getAttribute("isNewBrowser")) {
				strNewid = session.getAttribute("isNewBrowser").toString();

			}
			if (!strNewid.equals(stridTemp)) {

				session.setAttribute("isNewBrowser", stridTemp);
				String strSql = "select browse_count from model where id="
						+ iId;
				ResultSet rs = DataBaseBean.querySql(strSql);
				if (rs.next()) {
					int iBrowse = rs.getInt("browse_count");
					iBrowse++;
					rs.close();
					strSql = "update model set browse_count=" + iBrowse
							+ " where id=" + iId;
					DataBaseBean.updateSql(strSql);
				}
			}
			int iUploaderId = 0;
			int iBrowse_count = 0;
			int iDownload_count = 0;
			int iApprover_count = 0;
			int iSize = 0;
			String strModelType = null;
			String strUploader = null;
			String strModelName = null;
			String str3dImage_url = null;
			String strSuitType = null;
			String strSql = "select * from model where id=" + iId;
			ResultSet rs = DataBaseBean.querySql(strSql);
			while (rs.next()) {
				iUploaderId = rs.getInt("designerid");
				iDownload_count = rs.getInt("download_count");
				iBrowse_count = rs.getInt("browse_count");
				iApprover_count = rs.getInt("approver_count");
				iSize = rs.getInt("size");
				strModelName = rs.getString("model_name");
				str3dImage_url = rs.getString("3dImage_url");
				strModelType = rs.getString("model_type");
				strSuitType = rs.getString("suite_type");
			}
			rs.close();
			//根据userid获取上传者的名字
			strSql = "select name from userinfo,designer where designer.userid=userinfo.id and designer.id="
					+ iUploaderId;
			rs = DataBaseBean.querySql(strSql);
			while (rs.next()) {
				strUploader = rs.getString("name");

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
						<a href="#" class="thumbnail"> <img src="testImg/sm_pic.svg"
							alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail"> <img src="testImg/sm_pic.svg"
							alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail"> <img src="testImg/sm_pic.svg"
							alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail"> <img src="testImg/sm_pic.svg"
							alt="...">
						</a>
					</div>
					<div class="col-lg-2dot4 col-sm-2">
						<a href="#" class="thumbnail"> <img src="testImg/sm_pic.svg"
							alt="...">
						</a>
					</div>
				</div>
			</div>
			<!-- 右边 详细参数 -->
			<div class="col-lg-6 model_detail">
				<h1>
					模型名称：<%=strModelName%></h1>
				<p>
					模型大小：<%=iSize%>kb
				</p>
				<p>
					上传分类：<%=strModelType%></p>
				<p>
					适合材料：<%=strSuitType%></p>
				<p>
					上传者：<%=strUploader%></p>
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
						<div class="col-lg-4">
							<span class="glyphicon glyphicon-star-empty"></span><%=iBrowse_count%>浏览
						</div>
						<div class="col-lg-4">
							<span class="glyphicon glyphicon-cloud-download"></span><%=iDownload_count%>下载
						</div>
						<div class="col-lg-4" id="divzan">
							<button onclick="return onZanClick()" id="btn_zan" value="">
								<span class="glyphicon glyphicon-thumbs-up"></span><%=iApprover_count%>赞
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- 评论区 -->
		<div class="row panel panel-default comment_container">
			<h2>
				<span class="glyphicon glyphicon-comment"></span>评论
			</h2>
			<form name="commetn_form" action="UpComment" method="post">
				<div class="form-group">
					<textarea id="comment" class="form-control" rows="3"
						placeholder="请输入..." name="comment_content"></textarea>
					<div class="pull-right comment_submit">
						还可以输入<span class="input_rest text-danger">240</span>个字符
						<button class="btn btn-info" onclick="return onComment()">评论</button>
					</div>
					<div class="all_comment">
						<h3 class="title_sm">全部评论</h3>
						<%
						     strSql="select * from comment where modelid="+iId;
						     rs=DataBaseBean.querySql(strSql);
						     while(rs.next())
						     {
						    	 String strComment=rs.getString("info");
						    	 int iUserid=rs.getInt("userid");
						    	 String strTime=rs.getString("time");
						    
						%>
						<li id="review-267599901000" class="J_KgRate_ReviewItem kg-rate-ct-review-item" tabindex="0">
							<div class="from-whom" style="float: left;">
								<img src="designerimg/1.jpg" alt="" width="56" height="50">
								<div>用户<%=iUserid %></div>
							</div>
							<div class="review-details"">
								<div class="tb-rev-item " data-id="267599901000">
									<div class="J_KgRate_ReviewContent tb-tbcr-content ">
										<%=strComment %>
									</div>
									<div class="tb-r-act-bar">
										<div class="tb-r-info">
											<p>&nbsp;</p>
											<p>
												<span class="tb-r-date" style="margin-left: 98px;">
													<%=strTime %>
												</span>
											</p>
										</div>
									</div>
								</div>
							</div>
							</li>
							<%} %>
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
					<h2>
						<span class="glyphicon glyphicon-book"></span> 设计指南
					</h2>
				</li>
				<li class="col-lg-2">
					<h2>
						<span class="glyphicon glyphicon-shopping-cart"></span> 交易指南
					</h2>
				</li>
				<li class="col-lg-2">
					<h2>
						<span class="glyphicon glyphicon-user"></span> 我是设计师
					</h2>
				</li>
				<li class="col-lg-2">
					<h2>
						<span class="glyphicon glyphicon-cog"></span> 我是加盟商
					</h2>
				</li>
				<li class="col-lg-2">
					<h2>
						<span class="glyphicon glyphicon-wrench"></span> 服务支持
					</h2>
					<ul class="list-unstyled footer_second_list">
						<li><a href="#">关于我们</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>