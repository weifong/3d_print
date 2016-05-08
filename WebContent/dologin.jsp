<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String path =request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
    Connection conn = null; 
    Statement stat = null; 
    PreparedStatement pst = null;
    try
    {
    Class.forName("com.mysql.jdbc.Driver"); 
    }
    catch(ClassNotFoundException e) 
    {     
    	System.out.println("找不到驱动程序"); 
    } 

    String url = "jdbc:mysql://localhost:3306/test?user=root&password=123456"; 
    try{
    	conn = DriverManager.getConnection(url);
    	Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        pst = conn.prepareStatement("insert into designer(designer_id,designer_name,email,project,designer_introduce) values (?,?,?,?,?)");
        //给指定参数的位置设定变量
        pst.setString(1, "7");
        pst.setString(2, name);
        pst.setString(3, email);
        pst.setString(4, subject);
        pst.setString(5, message);
        pst.executeUpdate();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if(pst != null) {
                pst.close();
                pst = null;
            }
            if(conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }    
    }
    response.sendRedirect("designer.jsp");
    	%>
