package myServerlet;
import jspbean.DBbean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.text.*;
import java.util.Locale;
/**
 * Servlet implementation class UpComment
 */
public class UpComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpComment() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String strComment=request.getParameter("comment_content");
		System.out.println("strCommnet="+strComment);
		int imodelid=Integer.parseInt(request.getSession().getAttribute("model_id").toString());
		int iuserid=Integer.parseInt(request.getSession().getAttribute("user_id").toString());
		SimpleDateFormat simpDateFormate=new SimpleDateFormat("",Locale.SIMPLIFIED_CHINESE);
		simpDateFormate.applyPattern("yyyy年MM月dd日_HH时mm分ss秒"); 
		String strTime=simpDateFormate.format(new Date());
		System.out.println("strTime="+strTime);		
		String strSql="insert into comment(modelid,userid,info,time) values("+imodelid+","+iuserid+",'"+strComment+"','"+strTime+"')";
	    DBbean db=new DBbean();
	    db.updateSql(strSql);
	    response.sendRedirect("model_sub.jsp?"+imodelid);
	
	}

}
