
import jspbean.DBbean;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.*;
import java.util.Locale;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	final public void init(ServletConfig config)throws ServletException{
		this.config=config;
	}
	public uploadServlet() {
		super();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		this.doPost(request, response);
	}
	@SuppressWarnings("static-access")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
	
		if(null != request.getQueryString())
		{
			String strQuery = request.getQueryString().toString();
			System.out.println("strQuery:"+strQuery);
			System.out.println("downloading。.....");
			SmartUpload download=new SmartUpload();
		    download.initialize(config,request,response);
		    download.setContentDisposition(null);
		    try {
				download.downloadFile(strQuery);
				int iModelId=Integer.valueOf(request.getSession().getAttribute("model_id").toString());
				System.out.println("iModelId:"+iModelId);
				DBbean dbBean=new DBbean();
				String strSql="select download_count from model where id="+iModelId;
				ResultSet rs=dbBean.querySql(strSql);
				try
				{
					if(rs.next())
					{
						System.out.println("........................");
						int idownload=rs.getInt("download_count");
						System.out.println(idownload);
						rs.close();
						strSql="update model set download_count="+(idownload+1)+" where id="+iModelId;
						System.out.println(strSql);
						dbBean.updateSql(strSql);	
						response.sendRedirect("model_sub.jsp?"+iModelId);
					}
				}catch(Exception ex)
				{
					ex.printStackTrace();
				}
			} catch (SmartUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("upLoadloading。.....");
			String strUserid=request.getSession().getAttribute("userid").toString();
			DBbean db=new DBbean();
			String strSql="select userid from Joiner where userid="+strUserid;
			ResultSet rSet=db.querySql(strSql);
			try {
				if(rSet.next())
				{
					//已经入驻过，提示入驻失败
					request.getSession().setAttribute("JoinResult", "already");
					response.sendRedirect("JoinResult.jsp");
					return;
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			SmartUpload mySmartUpload=new SmartUpload(); 
			try{
				mySmartUpload.initialize(config,request,response);
				
				mySmartUpload.setAllowedFilesList("jpg,JPG,JPEG,gif,jpeg,png,PNG,x3d,wrl,txt");
				//mySmartUpload.setDeniedFilesList("exe,bat");
				mySmartUpload.upload();
				int count=mySmartUpload.save("/upload");
				//		mySmartUpload.getRequest().getParameter("parameter")+"&nbsp;");
				System.out.println(count);
				String strNewFileName="";
				String strFiledName=null;
				String strLicense=null;
				String strIdentityCard=null;
				String strAgent=null;
				String strPic=null;
				String strCompanyAddress=null;
				
				SimpleDateFormat simpDateFormate=new SimpleDateFormat("",Locale.SIMPLIFIED_CHINESE);
				simpDateFormate.applyPattern("yyyy年MM月dd日_HH时mm分ss秒"); 
				String strJoinTime=simpDateFormate.format(new Date());				
				for(int i=0;i<mySmartUpload.getFiles().getCount();i++)
				{
					com.jspsmart.upload.File file=mySmartUpload.getFiles().getFile(i);
					if(!file.isMissing()){           
						System.out.println("File Name:"+file.getFileName());            
						System.out.println("File ExtName:"+file.getFileExt());          
						System.out.println("Path:"+file.getFilePathName());	
						//重命名的文件名规则：用户id_当前时间毫秒数_原来文件名
						strNewFileName=strUserid+"_"+new Date().getTime()+"_"+file.getFileName();
						System.out.println(strNewFileName);
						file.saveAs("/JoinerImg/"+strNewFileName,mySmartUpload.SAVE_VIRTUAL);
						strFiledName=file.getFieldName();
						if(strFiledName.equals("license"))
						{
							strLicense="JoinerImg/"+strNewFileName;
						}
						else if(strFiledName.equals("identitycard"))
						{
							strIdentityCard="JoinerImg/"+strNewFileName;
						}
						else if(strFiledName.equals("agent"))
						{
							strAgent="JoinerImg/"+strNewFileName;
						}
						else if(strFiledName.equals("pic"))
						{
							strPic="JoinerImg/"+strNewFileName;
						}
					}
					else{
						System.out.println("上传出错");
					}				
				}
				strCompanyAddress=mySmartUpload.getRequest().getParameter("address");
				System.out.println("strCompanyAddress:"+strCompanyAddress);
			    strSql="insert into Joiner(userid,license,identitycard,agent,pic,companyaddress,jointime)values("+strUserid+",'"+strLicense+"','"+strIdentityCard+
						"','"+strAgent+"','"+strPic+"','"+strCompanyAddress+"','"+strJoinTime+"')";
				
				if(db.updateSql(strSql))
				{
					//先将userinfo对应userid的用户类型设置为入驻商
					strSql="update userinfo set usertype='入驻商' where id="+strUserid;
					db.updateSql(strSql);
					request.getSession().setAttribute("JoinResult", "success");
					response.sendRedirect("JoinResult.jsp");
					return;
				}
				else {
					{
						request.getSession().setAttribute("JoinResult", "failed");
						response.sendRedirect("JoinResult.jsp");
						return;
					}
				}
			}catch(Exception e){
				System.out.println("Unable to upload the file");
				System.out.println("Please Check The File Type");
			}	
		}
			
	}
}


