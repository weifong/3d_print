package myServerlet;
import jspbean.DBbean;

import java.sql.ResultSet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServelet
 */
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("UTF-8");
		DBbean dbBean = new DBbean();
		String strUserName=request.getParameter("username");
		String strPassword=request.getParameter("password");
		String strUserType=null;
		String strSql=null;
		strSql="select * from userinfo where name='"+strUserName+"' and password='"+strPassword+"';";
	   
		if(null != strSql)
	    {
	    	try
	    	{
	    		ResultSet rs=dbBean.querySql(strSql);
		    	if(rs.next())
		    	{
		    		System.out.println(".........");
		    		request.getSession().setAttribute("flag", "true");
		    		request.getSession().setAttribute("username",rs.getString(2));
		    		strUserType=rs.getString(8);
                    System.out.println("strUserType:"+strUserType);
		    		if(strUserType.equals("�����û�"))
		    		{
		    			response.sendRedirect("customer.jsp");
		    		}
		    		else if(strUserType.equals("������"))
		    		{
		    			response.sendRedirect("enterbusiness.jsp");
		    		}
		    		else
		    		{
		    			response.sendRedirect("joinbusiness.jsp");
		    		}
		    		
		    	}
		    	else
		    	{
		    		
		    		response.sendRedirect("login.jsp");
		    	}
	    	}catch(Exception ex)
	    	{
	    		//����ʱ�ɿ��Ƕ�λ����վ��ҳ����������档��
	    		ex.printStackTrace();
	    	}
	    	
	    }
	}

}
