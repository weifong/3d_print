package myServerlet;
import jspbean.DBbean;

import java.io.IOException;

import javax.resource.cci.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class AttentionServlet
 */
public class AttentionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttentionServlet() {
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
		request.setCharacterEncoding("utf-8");
		

		int iuserid=(int)request.getSession().getAttribute("userid");
		int idesignerid=(int)request.getSession().getAttribute("designerid");
		String strIntegral=request.getSession().getAttribute("integral").toString();
		String strLogo=request.getSession().getAttribute("logo").toString();
		String strIsAreadyAttention=request.getSession().getAttribute("isAreadyAttention").toString();
		String strSql;
		DBbean db=new DBbean();
		try
		{
        if(strIsAreadyAttention == "true")
        {
        	strSql="update attention set result=0 where userid="+iuserid+" and designerid="+idesignerid;
        }
        else
        {
        	//分两种情况，1是增加关注，二是重新关注
        	strSql="select * from attention where userid="+iuserid+" and designerid="+idesignerid;
        	java.sql.ResultSet rs=db.querySql(strSql);
        	if(rs.next())
        	{
        		strSql="update attention set result=1 where userid="+iuserid+" and designerid="+idesignerid;
        	}
        	else
        	{
        		 strSql="insert into attention(userid,designerid,result)values("+iuserid+","+idesignerid+",1)";
        	}
        	
        }
       
		
		db.updateSql(strSql);
		response.sendRedirect("shejishiyemian.jsp?"+strLogo+"@"+strIntegral+"@"+idesignerid);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		}

}
