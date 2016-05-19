<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="Parameter.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>模型删除界面</title>
</head>
<body>
<%
String strModelId = new String(request.getQueryString().toString().getBytes("ISO-8859-1"), "utf-8");
String strSql="delete from model where id="+strModelId;
DataBaseBean.updateSql(strSql);
response.sendRedirect("shejishigeren.jsp");
%>
</body>
</html>