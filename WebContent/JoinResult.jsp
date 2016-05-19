<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="Parameter.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>加盟入驻结果页面</title>
</head>
<body>

<%
    String strResult=session.getAttribute("JoinResult").toString();
    if(strResult.equals("success"))
    {
    	session.setAttribute("usertype", "入驻商");
    	out.println("入驻成功,稍后5秒将跳转到主页");
    	response.setHeader("Refresh", "5;url=index.jsp");
    }
    else if(strResult.equals("already"))
    {
    	out.println("已入驻,稍后5秒将跳转到主页");
    	response.setHeader("Refresh", "5;url=index.jsp");
    	
    }

%>
</body>
</html>