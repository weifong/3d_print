<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="Parameter.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<%
try{
	String strUserId=session.getAttribute("userid").toString();
	String strSql="select userid from Joiner where userid="+strUserId;
	ResultSet rSet=DataBaseBean.querySql(strSql);
	try {
		if(rSet.next())
		{
			out.println("对不起，您不能重复入驻");
			response.setHeader("Refresh", "3;url=join.jsp");
			return;
		}
		else{
			response.sendRedirect("ruzhuxinxi.jsp");
		}
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
}catch(Exception ex)
{
	out.println("对不起，您尚未登录,3秒后将自动跳转到登录界面");
	response.setHeader("Refresh", "3;url=login.jsp");
}

%>
</body>
</html>