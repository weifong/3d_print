package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.sql.*;

public final class designer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/Parameter.jsp");
    _jspx_dependants.add("/share.jsp");
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
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
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
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>设计师</title>\r\n");
      out.write("\t<meta name=\"viewport\" width=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.patch.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/common.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/designer.css\">\r\n");
      out.write("\t<script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/common.js\"></script>\r\n");
      out.write("\t<script src=\"js/designer.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- 导航栏 -->\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/ruzhuxinxi.css\" />\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/scale.js\"></script>\r\n");
      out.write("\t<title> 加盟条款</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/common.css\"/>\r\n");
      out.write("\t<script src=\"js/common.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- 导航栏 -->\r\n");
      out.write("\t<nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<a href=\"index.html\">\r\n");
      out.write("\t\t\t\t\t <img alt=\"Brand\" src=\"images/logo.png\" height=\"50px\">\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t<li class=\"nav_first\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">定制</a>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"shoushudaoban.html\">手术导板定制</a></li>\r\n");
      out.write("                            <li><a href=\"gongyedingzhi.html\">工业/个性化定制</a></li>\r\n");
      out.write("\t\t\t\t        </ul>\r\n");
      out.write("\t\t\t        </li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"model.jsp\">模型库</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"designer.jsp\">设计师</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"join.html\">加盟/入驻</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"shangcheng.html\">商城</a></li>\r\n");
      out.write("                    <li><a href=\"dingdanguanli.html\">我的订单</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- 右边占位 -->\r\n");
      out.write("\t\t\t\t<div class=\"navbar-right\"></div>\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t");

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
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<!-- 搜索框 -->\r\n");
      out.write("\t\t\t\t<form class=\"navbar-form navbar-right\" role=\"search\">\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"search\" class=\"form-control\" placeholder=\"搜索\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"btn-group\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-default\">GO</button>\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"caret\"></span>\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu nav_search_option\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- <label><a><input type=\"radio\" name=\"search_option\" />资讯</label> -->\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a><input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"info\" checked=\"checked\" />资讯</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a><input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"model\" />模型</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a><input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"product\" />商品</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a><input type=\"radio\" class=\"hidden\" name=\"search_option\" value=\"designer\" />设计师</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</div><!-- /.navbar-collapse -->\r\n");
      out.write("\t\t</div><!-- /.container-fluid -->\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<!-- 侧边栏 -->\r\n");
      out.write("\t<div class=\"slide_bar\">\r\n");
      out.write("\t\t<ul class=\"nav nav-list panel panel-default\" role=\"group\">\r\n");
      out.write("\t\t\t<li><a href=\"#section-1\"><br />咨询</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-2\"><br />电话</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-3\"><br />微信</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-4\"><br />微博</a></li>\r\n");
      out.write("\t\t\t<li><a id=\"btn_to_top\"><br />顶部</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t<!-- 页面主体 -->\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<!-- 签约流程 -->\r\n");
      out.write("\t\t<div class=\"row process\">\r\n");
      out.write("\t\t\t<h2>设计师入驻：</h2>\r\n");
      out.write("\t\t\t<a class=\"btn btn-primary onekey\" href=\"#\">【一键入驻】</a>\r\n");
      out.write("\t\t\t<div class=\"progress\">\r\n");
      out.write("\t\t\t\t<div class=\"progress-bar progress-bar-danger\">\r\n");
      out.write("\t\t\t\t\t<span>注册</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"progress-bar progress-bar-warning\">\r\n");
      out.write("\t\t\t\t\t<span>认证</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"progress-bar progress-bar-info\">\r\n");
      out.write("\t\t\t\t\t<span>模型设计</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"progress-bar progress-bar-success\">\r\n");
      out.write("\t\t\t\t\t<span>交易</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"row designers\">\r\n");
      out.write("\t\t\t<h2 class=\"title_lg\">设计师</h2>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- 排序方式 -->\r\n");
      out.write("\t\t\t<div class=\"sortby btn-group btn-group-sm\">\r\n");
      out.write("\t\t\t\t<a class=\"active btn btn-default\" href=\"#\">按综合排序</a>\r\n");
      out.write("\t\t\t\t<a class=\"btn btn-default\" href=\"#\">按人气排序</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<ul class=\"list-unstyled row\">\r\n");
      out.write("\t\t\t");

			String strSql="select * from designer,userinfo where designer.userid=userinfo.id;";			
			ResultSet rs=DataBaseBean.querySql(strSql);
			String strBeginType=null;

			while(rs.next())
			{
				int iId=rs.getInt("id");
				int ifanscount=rs.getInt("fanscount");
				int imodelcount=rs.getInt("modelcount");
				int iattentioncount=rs.getInt("attentioncount");
				int iintegral=rs.getInt("integral");
				String strshowlogo=rs.getString("showlogo");
				String strName=rs.getString("name");
				String strSex=rs.getString("sex");
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<li class=\"col-md-4 col-lg-2dot4\">\r\n");
      out.write("\t\t\t\t\t<div class=\"info\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 简介 -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"brief\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>");
      out.print(strName );
      out.write("</h3>\r\n");
      out.write("\t\t\t\t\t\t\t<span>");
      out.print(strSex );
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!-- 作品 -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"works\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img src=\"testImg/test_designer_work_1.jpg\" alt=\"\" /></a>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img src=\"testImg/test_designer_work_2.jpg\" alt=\"\" /></a>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img src=\"testImg/test_designer_work_3.jpg\" alt=\"\" /></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<a class=\"thumbnail\" href=\"shejishiyemian.jsp?");
      out.print(strshowlogo+"@"+iintegral+"@"+iId);
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 大图 -->\r\n");
      out.write("\t\t\t\t\t\t<img src=\"");
      out.print(strshowlogo );
      out.write("\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 底部 -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-4\">粉丝 <span class=\"badge\">");
      out.print(ifanscount );
      out.write("</span></div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-4\">产品 <span class=\"badge\">");
      out.print(imodelcount );
      out.write("</span></div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-4 attention\">关注 <span class=\"badge\">");
      out.print(iattentioncount );
      out.write("</span></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- 分页 -->\r\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default row\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<ul class=\"pagination\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"disabled\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" aria-label=\"Previous\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span aria-hidden=\"true\">&laquo;</span>\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"active\"><a href=\"#\">1</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">2</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">3</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">4</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">5</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" aria-label=\"Next\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span aria-hidden=\"true\">&raquo;</span>\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t<form action=\"\" class=\"navbar-nav navbar-form\">\r\n");
      out.write("\t\t\t\t\t\t共<span class=\"count\"></span>页，跳转到第\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control target\" /> 页\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-default navbar-btn\">确定</button>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- 底部 -->\r\n");
      out.write("\t<footer class=\"section section-primary\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<ul class=\"row list-unstyled footer_top_list\">\r\n");
      out.write("\t\t\t\t<li class=\"col-lg-2\">\r\n");
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-book\"></span> 设计指南</h2>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"col-lg-2\">\r\n");
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-shopping-cart\"></span> 交易指南</h2>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"col-lg-2\">\r\n");
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-user\"></span> 我是设计师</h2>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"col-lg-2\">\r\n");
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-cog\"></span> 我是加盟商</h2>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"col-lg-2\">\r\n");
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-wrench\"></span> 服务支持</h2>\r\n");
      out.write("\t\t\t\t\t<ul class=\"list-unstyled footer_second_list\">\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">关于我们</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</body>\r\n");
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
