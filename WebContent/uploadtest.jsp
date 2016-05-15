<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>smart上传测试</title>
</head>

<body>
<%
session.setAttribute("userid", "1");
%>
<div align="center" >
<form action="uploadServlet" method="post" enctype="multipart/form-data">
<div>
文件1<input type="file" name="file1" />
文件2<input type="file" name="file2" />
地址   <input type="text"  name="address" id="address"/>
</div>
<div>
  <div align="center">
    <input name="btnUpload" type="submit" id="btnUpload" value="上传"/>
  </div>
</div>
</form>
</div>

</body>
</html>