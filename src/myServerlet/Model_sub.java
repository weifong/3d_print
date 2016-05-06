package myServerlet;
import jspbean.DBbean;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Model_sub
 */
public class Model_sub extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Model_sub() {
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
		int iModelId=Integer.valueOf(request.getSession().getAttribute("model_id").toString());
		System.out.println("iModelId:"+iModelId);
		DBbean dbBean=new DBbean();
		String strSql="select approver_count from model where id="+iModelId;
		ResultSet rs=dbBean.querySql(strSql);
		try
		{
			if(rs.next())
			{
				System.out.println("........................");
				int iApprover=rs.getInt("approver_count");
				System.out.println(iApprover);
				rs.close();
				strSql="update model set approver_count="+(iApprover+1)+" where id="+iModelId;
				System.out.println(strSql);
				dbBean.updateSql(strSql);	
				response.sendRedirect("model_sub.jsp?"+iModelId);
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
	}

}
