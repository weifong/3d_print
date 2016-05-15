<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册结果</title>
</head>
<body>
<%
String strResult=session.getAttribute("registerResult").toString();
if(strResult=="failed")
{
	out.println("注册失败:已存在相同用户名,5秒后自动跳转到注册页面....");
	response.setHeader("Refresh", "5;url=register.jsp");
}
else{
	out.println("注册成功，欢迎您！2秒后自动跳转到平台首页...");
	response.setHeader("Refresh", "2;url=index.jsp");
}
%>
</body>
</html>