package myServerlet;

import java.io.IOException;

import javax.jms.Session;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.sun.jndi.url.corbaname.corbanameURLContextFactory;

import jspbean.DBbean;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	final public void init(ServletConfig config)throws ServletException{
		this.config=config;
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		SmartUpload upload=new SmartUpload();
		upload.initialize(config,request,response);
	    upload.setAllowedFilesList("jpg,JPG,png");
	    try {
	    	//首先将用户头像上传到服务器
			upload.upload();
			com.jspsmart.upload.File file=upload.getFiles().getFile(0);
			System.out.println("file name:"+file.getFileName());
			System.out.println("file extName:"+file.getFileExt());
			System.out.println("path:"+file.getFilePathName());
			String strNewFileName=new Date().getTime()+"_"+file.getFileName();
			System.out.println("/upload/"+strNewFileName);
			//获取注册信息
			String strEmail=upload.getRequest().getParameter("email");
			String strUserName=upload.getRequest().getParameter("username");
			
			DBbean dBbean=new DBbean();
		    String strSql="select name from userinfo where name='"+strUserName+"';";
		    try {
				if(dBbean.querySql(strSql).next())
				{
					//有相同用户名存在
					request.getSession().setAttribute("registerResult", "failed");
					response.sendRedirect("RegisterResult.jsp");
					return;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    file.saveAs("/upload/userinfoImg/"+strNewFileName,upload.SAVE_VIRTUAL);
			String strPassword=upload.getRequest().getParameter("password");
			String strQQ=upload.getRequest().getParameter("qq");
			String strAddress=upload.getRequest().getParameter("address");
			String strTelephone=upload.getRequest().getParameter("tel");
			String strSex=upload.getRequest().getParameter("sex");
			strNewFileName="upload/userinfoImg/"+strNewFileName;
			System.out.println("strEmail:"+strEmail);
		    strSql="insert into userinfo(name,password,telephone,address,sex,email,usertype,showlogo)values('"
					+strUserName+"','"+strPassword+"','"+strTelephone+"','"+strAddress+"','"
					+strSex+"','"+strEmail+"','"+"个人用户','"+strNewFileName+"');";
			
			if(dBbean.updateSql(strSql))
			{
				
				request.getSession().setAttribute("username", strUserName);
				request.getSession().setAttribute("registerResult", "true");
		    	response.sendRedirect("RegisterResult.jsp");
			}
			
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
	    
	}

}
