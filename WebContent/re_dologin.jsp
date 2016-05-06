<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String path =request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<%
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("username");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String qq=request.getParameter("qq");
    String identity=request.getParameter("identity");
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
        pst = conn.prepareStatement("insert into register(re_name,re_email,re_password,qq,identity) values (?,?,?,?,?)");
        //给指定参数的位置设定变量
        pst.setString(1, name);
        pst.setString(2, email);
        pst.setString(3, password);
        pst.setString(4, qq);
        pst.setString(5, identity);
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
    response.sendRedirect("login.jsp");
        %>
