package myServerlet;
import jspbean.DBbean;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspbean.DBbean;

import com.jspsmart.upload.SmartUpload;
import com.sun.org.apache.xml.internal.security.Init;

/**
 * Servlet implementation class AddModelServlet
 */
public class AddModelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	final public void init(ServletConfig config)throws ServletException{
		this.config=config;
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddModelServlet() {
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
		System.out.println("upLoadloading。.....");
		DBbean db=new DBbean();
		SmartUpload mySmartUpload=new SmartUpload(); 
		try{
			mySmartUpload.initialize(config,request,response);		
			mySmartUpload.setAllowedFilesList("jpg,JPG,JPEG,png,PNG,txt,stl,STL");
			//mySmartUpload.setDeniedFilesList("exe,bat");
			mySmartUpload.upload();
			//int count=mySmartUpload.save("/upload");
			//		mySmartUpload.getRequest().getParameter("parameter")+"&nbsp;");
			//System.out.println(count);
			String strNewFileName="";
			String strStlName=null;
			String strBigImg=null;
			String strSmallImg1=null;
			String strSmallImg2=null;
			String strSmallImg3=null;
			String strSmallImg4=null;
			for(int i=0;i<mySmartUpload.getFiles().getCount();i++)
			{
				com.jspsmart.upload.File file=mySmartUpload.getFiles().getFile(i);
				if(!file.isMissing()){           
								
					//重命名的文件名规则：用户id_当前时间毫秒数_原来文件名
					strNewFileName=request.getSession().getAttribute("userid").toString()+"_"+new Date().getTime()+"_"+file.getFileName();
					System.out.println(strNewFileName);
					if(strNewFileName.contains("stl")){
						file.saveAs("/stlmodel/"+strNewFileName,mySmartUpload.SAVE_VIRTUAL);
					}
					else {
						file.saveAs("/modelimages/"+strNewFileName,mySmartUpload.SAVE_VIRTUAL);
					}
					String strFiledName=file.getFieldName();	
					System.out.println("strFiledName:"+strFiledName);
					if(strFiledName.equals("stl"))
					{
						strStlName="stlmodel/"+strNewFileName;
					}
					else if(strFiledName.equals("bigimg"))
					{
						strBigImg="modelimages/"+strNewFileName;
					}
					else if(strFiledName.equals("smallimg1"))
					{
						strSmallImg1="modelimages/"+strNewFileName;
					}
					else if(strFiledName.equals("smallimg2"))
					{
						strSmallImg2="modelimages/"+strNewFileName;
					}
					else if(strFiledName.equals("smallimg3"))
					{
						strSmallImg3="modelimages/"+strNewFileName;
					}
					else if(strFiledName.equals("smallimg4"))
					{
						strSmallImg4="modelimages/"+strNewFileName;
					}
					
				}
				else{
					System.out.println("上传出错");
				}				
			}
			int iDesigerId=Integer.parseInt(request.getSession().getAttribute("designerid").toString());
			String strModelName=mySmartUpload.getRequest().getParameter("modelname");
			String strDescribe=mySmartUpload.getRequest().getParameter("describe");
			String strSuit=mySmartUpload.getRequest().getParameter("suit");
			String strType=mySmartUpload.getRequest().getParameter("type");
			String strsize=mySmartUpload.getRequest().getParameter("size");
			SimpleDateFormat simpDateFormate=new SimpleDateFormat("",Locale.SIMPLIFIED_CHINESE);
			simpDateFormate.applyPattern("yyyy年MM月dd日_HH时mm分ss秒"); 
			String strTime=simpDateFormate.format(new Date());
			String strSql="insert into model(designerid,model_name,model.describe,3d_url,3dimage_url,smallimg1,smallimg2,smallimg3,smallimg4,model_type,suite_type,uploadtime,size)values("+iDesigerId+",'"+strModelName+"','"+strDescribe+"','"+strStlName+"','"+strBigImg+"','"+strSmallImg1+"','"+strSmallImg2+"','"+strSmallImg3+"','"+strSmallImg4+"','"+strType+"','"+strSuit+"','"+strTime+"',"+strsize+")";
			db.updateSql(strSql);
			
		}catch(Exception e){
			System.out.println("Unable to upload the file");
			System.out.println("Please Check The File Type");
		}	
	}

}
