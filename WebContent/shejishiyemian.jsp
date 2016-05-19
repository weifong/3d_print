
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ include file="Parameter.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>设计师主页</title>
        <meta name="viewport" width="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.patch.css"/>
        <link rel="stylesheet" href="css/common.css"/>
        
        <link rel="stylesheet" href="css/join.css"/>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/common.js"></script>
        <script src="js/shejishiyemian.js"></script>
            
    </head>
    <body>
        <!-- 导航栏 -->
        <input id="userid" type="hidden" value="<%=session.getAttribute("userid")==null?"":session.getAttribute("userid").toString() %>"/>
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
                    <li><a href="designer.jsp">设计师</a></li>
                    <li><a href="join.html">加盟/入驻</a></li>
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
                            <li class="active">
                                <a>
                                    <input type="radio" class="hidden" name="search_option" value="info" checked="checked" />资讯</a>
                            </li>
                            <li>
                                <a>
                                    <input type="radio" class="hidden" name="search_option" value="model" />模型</a>
                            </li>
                            <li>
                                <a>
                                    <input type="radio" class="hidden" name="search_option" value="product" />商品</a>
                            </li>
                            <li>
                                <a>
                                    <input type="radio" class="hidden" name="search_option" value="designer" />设计师</a>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- 侧边栏 -->
    <div class="slide_bar">
        <ul class="nav nav-list panel panel-default" role="group">
            <li>
                <a href="#section-1">
                    <br />咨询</a>
            </li>
            <li>
                <a href="#section-2">
                    <br />电话</a>
            </li>
            <li>
                <a href="#section-3">
                    <br />微信</a>
            </li>
            <li>
                <a href="#section-4">
                    <br />微博</a>
            </li>
            <li>
                <a id="btn_to_top">
                    <br />顶部</a>
            </li>
        </ul>
    </div>

        <!-- 页面主体 -->
        <%
            String strSrc=new String(request.getQueryString().toString().getBytes("ISO-8859-1"),"utf-8");
            String[] strParam=strSrc.split("@");
            String strlogo=strParam[0];
            String strintegral=strParam[1];
            String strid=strParam[2];
            int iId=Integer.parseInt(strid);
            
        %>
        <div class="container wrap wrapper">
            <!-- 板块一 -->
            <div class="col-lg-2" style="height: 620px;">
                <div class="panel panel-default block1 text-center">
                    <img data-src="holder.js/头像140x140" class="img-circle" alt="头像140x140" src="<%=strlogo %>" data-holder-rendered="true" style="width: 140px; height: 140px;"></img>                 
                    <h2 class="title_sm">Ta的积分：<%=strintegral %></h2>
                    <%
                       String strUserid=session.getAttribute("userid")==null?"":session.getAttribute("userid").toString();
                      
                    if(strUserid!="")
                       {
                    	   
                    	   int iuserid=Integer.parseInt(strUserid);
                    	   session.setAttribute("userid", iuserid);
                    	   session.setAttribute("designerid",iId);
                    	   session.setAttribute("logo",strlogo);
                    	   session.setAttribute("integral", strintegral);
                    	   String strSql="select result from attention where userid="+iuserid+" and designerid="+iId;
                    	   ResultSet rs=DataBaseBean.querySql(strSql);
                    	   if(rs.next() && rs.getInt("result")==1)
                    	   {
                    		   session.setAttribute("isAreadyAttention", "true");
                    %>	
                    	    <form action="AttentionServlet" method="post" name="attentionForm">
                                 <button type="button" class="btn  btn-primary " onclick="return onAttention()">取消关注Ta</button>   
                                 </form>
                    <%
                    	   rs.close();
                    	   }
                    	   else
                    	   {
                    		   session.setAttribute("isAreadyAttention", "false");
                    %>
                                 <form action="AttentionServlet" method="post" name="attentionForm">
                                 <button type="button" class="btn  btn-primary " onclick="return onAttention()">关注Ta</button>   
                                 </form>   
                    		  
                    <%	   }
                       }
                       else
                       {
                    %>                   	   
           				 <form action="AttentionServlet" method="post" name="attentionForm">
                                 <button type="button" class="btn  btn-primary " onclick="return onAttention()">关注Ta</button>   
                         </form>                                            			
                     <%
                       }               
                     %>
                    
                </div>
            </div>
<div class="row">
            <div class="col-lg-9" >
            <div class="row "> 
                <h1 class="col-lg-6">设计作品展示<small><small>（按照更新时间排序）</small></small></h1>             
                </div>
                <div class="row">
                    <div class="row">
                    <%
                      String strSql="select * from model where designerid="+iId;
                      ResultSet rs= DataBaseBean.querySql(strSql);
                      while(rs.next())
                      {
                    	    int iModelId=rs.getInt("id");                    	   
                    		int iDownLoad=rs.getInt("download_count");
                    		int iapprover=rs.getInt("approver_count");
                    		String strName=rs.getString("model_name");
                    		String str3dimage=rs.getString("3dImage_url");
                    		String strModeType=rs.getString("model_type");                   		
                    		String strDescribe=rs.getString("describe");
                      
                    %>
                        <div class="col-lg-12 thumbnail">
                            <div class="col-md-4">  
                            <a href="model_sub.jsp?<%=iModelId%>">
                               <img alt="image" class="feed-photo" src="<%=str3dimage%>">   
                            </a>                                                   
                            </div> 
                            <div class="col-md-6">
                                <p><span class="badge">作品名称:</span><%=strName %></p>
                                <p><span class="badge">作品简述:</span><%=strDescribe %></p>
                            </div> 
                            <div class="footer">
							
							<div class="col-lg-4">
							<p><span class="badge">下载:</span><%=iDownLoad %></p>
							<p><span class="badge">赞:</span><%=iapprover %></p>
							</div>		
                        </div>
                          </div>
                       <%} %>
                  
                    </div>

                    <div class="row navposition">
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
                                <form action="" class="navbar-nav navbar-form ">
                                    共<span class="count"> 56 </span>页，跳转到第
                                    <input type="text" class="form-control target" /> 页
                                    <button type="button" class="btn btn-default navbar-btn">确定</button>
                                </form>
                            </div>
                        </nav>
                    </div>
                </div>
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