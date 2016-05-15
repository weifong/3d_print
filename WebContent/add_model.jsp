<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>模型添加页面</title>
</head>
<style type="text/css">
#divBody
{
	
	position:absolute;
	left:30%;
	top:20%;
}
#upload
{
  width:100%;
}
</style>
<body>
<%@include file="share.jsp" %>
 <div id="divBody">
 <form name="uploadForm" method="post" action="AddModelServlet" enctype="multipart/form-data">
 <table cellpadding="10px" border="1">
<tr><td>STL模型</td><td><input type="file" id="stl" name="stl"/></td></tr>
<tr><td>预览大图</td><td><input type="file" id="bigimg" name="bigimg"/></td></tr>
<tr><td>预览小图1</td><td><input type="file" id="smallimg1" name="smallimg1"/></td></tr>
<tr><td>预览小图2</td><td><input type="file" id="smallimg2" name="smallimg2"/></td></tr>
<tr><td>预览小图3</td><td><input type="file" id="smallimg3" name="smallimg3"/></td></tr>
<tr><td>预览小图4</td><td><input type="file" id="smallimg4" name="smallimg4"/></td></tr>
<tr><td>作品名称</td><td><input type="text" id="modelname" name="modelname"/></td></tr>
<tr><td>作品描述</td><td><textarea rows="4" cols="100%" id="describe" name="describe"></textarea></td></tr>
<tr><td>适合材质</td><td><input type="text" id="suit" name="suit"/></td></tr>
<tr><td>上传分类</td><td><input type="text" id="type" name="type"/></td></tr>
<tr><td>作品大小</td><td><input type="text" id="size" name="size"/></td></tr>
<tr>
<td></td>
<td bgcolor="red">
 <input type="submit" id="upload" value="上传"/>
</td>

</tr>
 </table>
 


 
 </form>
</div>
</body>
</html>