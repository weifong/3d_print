package myServerlet;
import jspbean.DBbean;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;
import java.sql.ResultSet;
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
		
		String strQuery = request.getQueryString().toString();
		System.out.println("strQuery:"+strQuery);
		if(null != strQuery)
		{
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
			DBbean db=new DBbean();
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
				for(int i=0;i<mySmartUpload.getFiles().getCount();i++)
				{
					com.jspsmart.upload.File file=mySmartUpload.getFiles().getFile(i);
					if(!file.isMissing()){           
						System.out.println("File Name:"+file.getFileName());            
						System.out.println("File ExtName:"+file.getFileExt());          
						System.out.println("Path:"+file.getFilePathName());	
						//重命名的文件名规则：用户id_当前时间毫秒数_原来文件名
						strNewFileName=request.getSession().getAttribute("userid").toString()+"_"+new Date().getTime()+"_"+file.getFileName();
						System.out.println(strNewFileName);
						file.saveAs("/upload/"+strNewFileName,mySmartUpload.SAVE_VIRTUAL);
						
					}
					else{
						System.out.println("上传出错");
					}				
				}
				String strCompanyAddress;
				strCompanyAddress=mySmartUpload.getRequest().getParameter("address");
				System.out.println("strCompanyAddress:"+strCompanyAddress);
			}catch(Exception e){
				System.out.println("Unable to upload the file");
				System.out.println("Please Check The File Type");
			}	
		}
			
	}
}


