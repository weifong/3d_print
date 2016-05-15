package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class shejishiyemian_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/Parameter.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      jspbean.DBbean DataBaseBean = null;
      synchronized (_jspx_page_context) {
        DataBaseBean = (jspbean.DBbean) _jspx_page_context.getAttribute("DataBaseBean", PageContext.PAGE_SCOPE);
        if (DataBaseBean == null){
          DataBaseBean = new jspbean.DBbean();
          _jspx_page_context.setAttribute("DataBaseBean", DataBaseBean, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
 
request.setCharacterEncoding("UTF-8"); 
response.setCharacterEncoding("UTF-8"); 
response.setContentType("text/html; charset=utf-8"); 

      out.write(' ');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>设计师主页</title>\r\n");
      out.write("        <meta name=\"viewport\" width=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.patch.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/common.css\"/>\r\n");
      out.write("        \r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/join.css\"/>\r\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"js/common.js\"></script>\r\n");
      out.write("        <script src=\"js/shejishiyemian.js\"></script>\r\n");
      out.write("            \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- 导航栏 -->\r\n");
      out.write("        <input id=\"userid\" type=\"hidden\" value=\"");
      out.print(session.getAttribute("user_id")==null?"":session.getAttribute("user_id").toString() );
      out.write("\"/>\r\n");
      out.write("           <!-- 导航栏 -->\r\n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <a href=\"index.jsp\">\r\n");
      out.write("                    <img alt=\"Brand\" src=\"images/logo.png\" height=\"50px\">\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("                <ul class=\"nav navbar-nav\">\r\n");
      out.write("                    <li class=\"nav_first\">\r\n");
      out.write("                        <a href=\"#\">定制</a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                            <li><a href=\"shoushudaoban.html\">手术导板定制</a></li>\r\n");
      out.write("                            <li><a href=\"gongyedingzhi.html\">工业/个性化定制</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li><a href=\"model.jsp\">模型库</a></li>\r\n");
      out.write("                    <li><a href=\"designer.jsp\">设计师</a></li>\r\n");
      out.write("                    <li class=\"active\"><a>加盟/入驻</a></li>\r\n");
      out.write("                    <li><a href=\"shangcheng.html\">商城</a></li>\r\n");
      out.write("                    <li><a href=\"dingdanguanli.html\">我的订单</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- 右边占位 -->\r\n");
      out.write("                <div class=\"navbar-right\"></div>\r\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                   ");

				   String strUser=session.getAttribute("username")==null?"":session.getAttribute("username").toString();
				   if(strUser =="")
				   {
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"login.jsp\" class=\"btn btn-primary navbar-btn\">登录</a>\r\n");
      out.write("\t\t\t\t<a href=\"register.jsp\" class=\"btn btn-default navbar-btn\">注册</a>\t\r\n");
      out.write("\t\t\t\t");
   
				   }
				   else
				   {
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"btn btn-default navbar-btn\">欢迎您");
      out.print(strUser );
      out.write("</a>\r\n");
      out.write("\t\t\t\t<form action=\"exitServlet\" method=\"post\"><button>退出</button></form>\r\n");
      out.write("\t\t\t\t");
	   
				   }
				
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- 搜索框 -->\r\n");
      out.write("                <form class=\"navbar-form navbar-right\" role=\"search\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <input type=\"search\" class=\"form-control\" placeholder=\"搜索\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"btn-group\">\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-default\">GO</button>\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                            <span class=\"caret\"></span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <ul class=\"dropdown-menu nav_search_option\">\r\n");
      out.write("                            <!-- <label><a><input type=\"radio\" name=\"search_option\" />资讯</label> -->\r\n");
      out.write("                            <li class=\"active\">\r\n");
      out.write("                                <a>\r\n");
      out.write("                                    <input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"info\" checked=\"checked\" />资讯</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a>\r\n");
      out.write("                                    <input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"model\" />模型</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a>\r\n");
      out.write("                                    <input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"product\" />商品</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a>\r\n");
      out.write("                                    <input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"designer\" />设计师</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.navbar-collapse -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.container-fluid -->\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- 侧边栏 -->\r\n");
      out.write("    <div class=\"slide_bar\">\r\n");
      out.write("        <ul class=\"nav nav-list panel panel-default\" role=\"group\">\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"#section-1\">\r\n");
      out.write("                    <br />咨询</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"#section-2\">\r\n");
      out.write("                    <br />电话</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"#section-3\">\r\n");
      out.write("                    <br />微信</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"#section-4\">\r\n");
      out.write("                    <br />微博</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <a id=\"btn_to_top\">\r\n");
      out.write("                    <br />顶部</a>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- 页面主体 -->\r\n");
      out.write("        ");

            String strSrc=new String(request.getQueryString().toString().getBytes("ISO-8859-1"),"utf-8");
            String[] strParam=strSrc.split("@");
            String strlogo=strParam[0];
            String strintegral=strParam[1];
            String strid=strParam[2];
            int iId=Integer.parseInt(strid);
            
        
      out.write("\r\n");
      out.write("        <div class=\"container wrap wrapper\">\r\n");
      out.write("            <!-- 板块一 -->\r\n");
      out.write("            <div class=\"col-lg-2\" style=\"height: 620px;\">\r\n");
      out.write("                <div class=\"panel panel-default block1 text-center\">\r\n");
      out.write("                    <img data-src=\"holder.js/头像140x140\" class=\"img-circle\" alt=\"头像140x140\" src=\"");
      out.print(strlogo );
      out.write("\" data-holder-rendered=\"true\" style=\"width: 140px; height: 140px;\"></img>                 \r\n");
      out.write("                    <h2 class=\"title_sm\">Ta的积分：");
      out.print(strintegral );
      out.write("</h2>\r\n");
      out.write("                    ");

                       String strUserid=session.getAttribute("user_id")==null?"":session.getAttribute("user_id").toString();
                      
                    if(strUserid!="")
                       {
                    	   
                    	   int iuserid=Integer.parseInt(strUserid);
                    	   session.setAttribute("userid", iuserid);
                    	   session.setAttribute("designerid",iId);
                    	   session.setAttribute("logo",strlogo);
                    	   session.setAttribute("integral", strintegral);
                    	   String strSql="select result from attention where userid="+iuserid+" and designerid="+iId;
                    	   ResultSet rs=DataBaseBean.querySql(strSql);
                    	   if(rs.next() && rs.getInt("result")==1)
                    	   {
                    		   session.setAttribute("isAreadyAttention", "true");
                    
      out.write("\t\r\n");
      out.write("                    \t    <form action=\"AttentionServlet\" method=\"post\" name=\"attentionForm\">\r\n");
      out.write("                                 <button type=\"button\" class=\"btn  btn-primary \" onclick=\"return onAttention()\">取消关注Ta</button>   \r\n");
      out.write("                                 </form>\r\n");
      out.write("                    ");

                    	   rs.close();
                    	   }
                    	   else
                    	   {
                    		   session.setAttribute("isAreadyAttention", "false");
                    
      out.write("\r\n");
      out.write("                                 <form action=\"AttentionServlet\" method=\"post\" name=\"attentionForm\">\r\n");
      out.write("                                 <button type=\"button\" class=\"btn  btn-primary \" onclick=\"return onAttention()\">关注Ta</button>   \r\n");
      out.write("                                 </form>   \r\n");
      out.write("                    \t\t  \r\n");
      out.write("                    ");
	   }
                       }
                       else
                       {
                    
      out.write("                   \t   \r\n");
      out.write("           \t\t\t\t <form action=\"AttentionServlet\" method=\"post\" name=\"attentionForm\">\r\n");
      out.write("                                 <button type=\"button\" class=\"btn  btn-primary \" onclick=\"return onAttention()\">关注Ta</button>   \r\n");
      out.write("                         </form>                                            \t\t\t\r\n");
      out.write("                     ");

                       }               
                     
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-9\" >\r\n");
      out.write("            <div class=\"row \"> \r\n");
      out.write("                <h1 class=\"col-lg-6\">设计作品展示<small><small>（按照更新时间排序）</small></small></h1>             \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                    ");

                      String strSql="select * from model where designerid="+iId;
                      ResultSet rs= DataBaseBean.querySql(strSql);
                      while(rs.next())
                      {
                    	    int iModelId=rs.getInt("id");                    	   
                    		int iDownLoad=rs.getInt("download_count");
                    		int iapprover=rs.getInt("approver_count");
                    		String strName=rs.getString("model_name");
                    		String str3dimage=rs.getString("3dImage_url");
                    		String strModeType=rs.getString("model_type");                   		
                    		String strDescribe=rs.getString("describe");
                      
                    
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-12 thumbnail\">\r\n");
      out.write("                            <div class=\"col-md-4\">  \r\n");
      out.write("                            <a href=\"model_sub.jsp?");
      out.print(iModelId);
      out.write("\">\r\n");
      out.write("                               <img alt=\"image\" class=\"feed-photo\" src=\"");
      out.print(str3dimage);
      out.write("\">   \r\n");
      out.write("                            </a>                                                   \r\n");
      out.write("                            </div> \r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <p><span class=\"badge\">作品名称:</span>");
      out.print(strName );
      out.write("</p>\r\n");
      out.write("                                <p><span class=\"badge\">作品简述:</span>");
      out.print(strDescribe );
      out.write("</p>\r\n");
      out.write("                            </div> \r\n");
      out.write("                            <div class=\"footer\">\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-4\">\r\n");
      out.write("\t\t\t\t\t\t\t<p><span class=\"badge\">下载:</span>");
      out.print(iDownLoad );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p><span class=\"badge\">赞:</span>");
      out.print(iapprover );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\r\n");
      out.write("                        </div>\r\n");
      out.write("                          </div>\r\n");
      out.write("                       ");
} 
      out.write("\r\n");
      out.write("                  \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row navposition\">\r\n");
      out.write("                        <nav class=\"navbar navbar-default row\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <ul class=\"pagination\">\r\n");
      out.write("                                    <li class=\"disabled\">\r\n");
      out.write("                                        <a href=\"#\" aria-label=\"Previous\">\r\n");
      out.write("                                            <span aria-hidden=\"true\">&laquo;</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"active\"><a href=\"#\">1</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">2</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">3</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">4</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">5</a></li>\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a href=\"#\" aria-label=\"Next\">\r\n");
      out.write("                                            <span aria-hidden=\"true\">&raquo;</span>\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <form action=\"\" class=\"navbar-nav navbar-form \">\r\n");
      out.write("                                    共<span class=\"count\"> 56 </span>页，跳转到第\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control target\" /> 页\r\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default navbar-btn\">确定</button>\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- 底部 -->\r\n");
      out.write("        <footer class=\"section section-primary\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <ul class=\"row list-unstyled footer_top_list\">\r\n");
      out.write("                    <li class=\"col-lg-2\">\r\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-book\"></span> 设计指南</h2>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-lg-2\">\r\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-shopping-cart\"></span> 交易指南</h2>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-lg-2\">\r\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-user\"></span> 我是设计师</h2>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-lg-2\">\r\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-cog\"></span> 我是加盟商</h2>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"col-lg-2\">\r\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-wrench\"></span> 服务支持</h2>\r\n");
      out.write("                        <ul class=\"list-unstyled footer_second_list\">\r\n");
      out.write("                            <li><a href=\"#\">关于我们</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </footer>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
