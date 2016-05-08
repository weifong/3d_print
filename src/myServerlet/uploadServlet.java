package myServerlet;
import jspbean.DBbean;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

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

		//response.setContentType("text/html");
		//response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("GBK");
		String strCompanyAddress=request.getAttribute("companyaddress").toString();
		System.out.println("strCompanyAddress:"+strCompanyAddress);
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
			for(int i=0;i<mySmartUpload.getFiles().getCount();i++)
			{
				com.jspsmart.upload.File file=mySmartUpload.getFiles().getFile(i);
				if(!file.isMissing()){           
					System.out.println("File Name:"+file.getFileName());            
					System.out.println("File ExtName:"+file.getFileExt());          
					System.out.println("Path:"+file.getFilePathName());					
					file.saveAs("/upload/"+file.getFileName(),mySmartUpload.SAVE_VIRTUAL);
				}
				else{
					System.out.println("上传出错");
				}
				
			}
		}catch(Exception e){
			System.out.println("Unable to upload the file");
			System.out.println("Please Check The File Type");
		}		
	}
}


