<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>跳转</title>
</head>
<body>
<%
try{
	 String strUserType=session.getAttribute("usertype").toString();
	 if(strUserType.equals("设计师"))
	 {
		 response.sendRedirect("shejishigeren.jsp");
	 }
	 else if(strUserType.equals("入驻商"))
	 {
		 response.sendRedirect("dingdanguanli.html");
	 }
	 else if(strUserType.equals("加盟商"))
	 {
		 response.sendRedirect("dingdanguanli.html");
	 }
	 else
	 {
		 response.sendRedirect("index.jsp");
	 }

}catch(Exception ex)
{
	out.println("对不起您尚未登陆，即将跳转至登陆界面。。。");
	response.setHeader("Refresh", "3;url=login.jsp");
}

%>
</body>
</html>