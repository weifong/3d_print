
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
        <input id="userid" type="hidden" value="<%=session.getAttribute("user_id")==null?"":session.getAttribute("user_id").toString() %>"/>
        <%@include file="share.jsp" %>
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
                       String strUserid=session.getAttribute("user_id")==null?"":session.getAttribute("user_id").toString();
                      
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
                       <%} %>
                    </div>
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