package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class model_005fsub_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
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
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>模型库子页面</title>\r\n");
      out.write("\t<meta name=\"viewport\" width=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.patch.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/common.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/model-sub.css\">\r\n");
      out.write("\t<script src=\"js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/common.js\"></script>\r\n");
      out.write("\t<script src=\"js/model-index.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\t<body>\r\n");
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
      out.write("\t\t\t\t\t<li class=\"active\"><a href=\"model.jsp\">模型库</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"designer.html\">设计师</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"join.html\">加盟/入驻</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"shangcheng.html\">商城</a></li>\r\n");
      out.write("                    <li><a href=\"dingdanguanli.html\">我的订单</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- 右边占位 -->\r\n");
      out.write("\t\t\t\t<div class=\"navbar-right\"></div>\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t<a href=\"login.jsp\" class=\"btn btn-primary navbar-btn\">登录</a>\r\n");
      out.write("\t\t\t\t\t<a href=\"register.html\" class=\"btn btn-default navbar-btn\">注册</a>\r\n");
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
      out.write("\r\n");
      out.write("\t<!-- 侧边栏 -->\r\n");
      out.write("\t<div class=\"slide_bar\">\r\n");
      out.write("\t\t<ul class=\"nav nav-list panel panel-default\" role=\"group\">\r\n");
      out.write("\t\t\t\t<li><a href=\"#section-1\"><br />咨询</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#section-2\"><br />电话</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#section-3\"><br />微信</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#section-4\"><br />微博</a></li>\r\n");
      out.write("\t\t\t\t<li><a id=\"btn_to_top\"><br />顶部</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 路径导航 -->\r\n");
      out.write("\t\t<ul class=\"row breadcrumb\">\r\n");
      out.write("\t\t\t<li><a href=\"#\">首页</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#\">模型</a></li>\r\n");
      out.write("\t\t\t<li class=\"active\">模型下载</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\r\n");

String stridTemp=new String(request.getQueryString().toString().getBytes("ISO-8859-1"),"utf-8");
int iId=Integer.parseInt(stridTemp);
int iUploaderId=0;
int iBrowse_count;
int iDownload_count;
int iApprover_count;
int iSize;
String strModelType;	
String strUploader;
String strModelName;
String str3dImage_url;
String strSuitType;
String strSql="select * from model where id="+iId;
ResultSet rs=DataBaseBean.querySql(strSql);
while(rs.next())
{
	iUploaderId=rs.getInt("userid");
	iDownload_count=rs.getInt("download_count");
	iBrowse_count=rs.getInt("browse_count");
	iApprover_count=rs.getInt("approver_count");
	iSize=rs.getInt("size");
	strModelName=rs.getString("model_name");
	str3dImage_url=rs.getString("3dImage_url");
	strModelType=rs.getString("model_type");
	strSuitType=rs.getString("suite_type");
}
rs.close();
//根据userid获取上传者的名字
strSql="select name from userinfo where id="+iUploaderId;
rs=DataBaseBean.querySql(strSql);
while(rs.next())
{
	strUploader=rs.getString("name");

}
rs.close();

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 模型详情 -->\r\n");
      out.write("\t\t<div class=\"row panel panel-default\">\r\n");
      out.write("\t\t\t<!-- 左边 -->\r\n");
      out.write("\t\t\t<div class=\"col-lg-6 panel-body\">\r\n");
      out.write("\t\t\t\t<img src=\"");
      out.print(str3dIm55age_url);
      out.write("\" class=\"img-responsive\" alt=\"...\">\r\n");
      out.write("\t\t\t\t<div class=\"pic_sm_container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-2dot4 col-sm-2\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"testImg/sm_pic.svg\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-2dot4 col-sm-2\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"testImg/sm_pic.svg\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-2dot4 col-sm-2\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"testImg/sm_pic.svg\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-2dot4 col-sm-2\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"testImg/sm_pic.svg\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-2dot4 col-sm-2\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"testImg/sm_pic.svg\" alt=\"...\">\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- 右边 详细参数 -->\r\n");
      out.write("\t\t\t<div class=\"col-lg-6 model_detail\">\r\n");
      out.write("\t\t\t\t<h1>");
      out.print(strModelName );
      out.write("</h1>\r\n");
      out.write("\t\t\t\t<p>");
      out.print(iSize );
      out.write("</p>\r\n");
      out.write("\t\t\t\t<p>上传分类：");
      out.print(strModelType );
      out.write("</p>\r\n");
      out.write("\t\t\t\t<p>适合材料：");
      out.print(strSuitType );
      out.write("</p>\r\n");
      out.write("\t\t\t\t<p>　上传者：");
      out.print(strUploader );
      out.write("</p>\r\n");
      out.write("\t\t\t\t<div class=\"btn-group btn-group-justified\">\r\n");
      out.write("\t\t\t\t\t<div class=\"print btn btn-success\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"glyphicon glyphicon-send\"></span> 去打印\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"download btn btn-info\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"glyphicon glyphicon-save\"></span> 免费下载\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4\"><span class=\"glyphicon glyphicon-star-empty\"></span>");
      out.print(iBrowse_count );
      out.write("浏览</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4\"><span class=\"glyphicon glyphicon-cloud-download\"></span> ");
      out.print(iDownload_count );
      out.write("下载</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4\"><span class=\"glyphicon glyphicon-thumbs-up\"></span> ");
      out.print(iApprover_count );
      out.write(" 赞</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!-- 评论区 -->\r\n");
      out.write("\t\t<div class=\"row panel panel-default comment_container\">\r\n");
      out.write("\t\t\t<h2><span class=\"glyphicon glyphicon-comment\"></span> 评论</h2>\r\n");
      out.write("\t\t\t<form>\r\n");
      out.write("\t  \t\t\t<div class=\"form-group\">\r\n");
      out.write("\t  \t\t\t\t<textarea class=\"form-control\" rows=\"3\" placeholder=\"请输入...\" name=\"comment_content\"></textarea>\r\n");
      out.write("\t  \t\t\t\t<div class=\"pull-right comment_submit\">\r\n");
      out.write("\t  \t\t\t\t\t还可以输入<span class=\"input_rest text-danger\">240</span>个字符\r\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-info\">评论</button>\r\n");
      out.write("\t  \t\t\t\t</div>\r\n");
      out.write("\t  \t\t\t\t<div class=\"all_comment\">\r\n");
      out.write("\t  \t\t\t\t\t<h3 class=\"title_sm\">全部评论</h3>\r\n");
      out.write("\t  \t\t\t\t</div>\r\n");
      out.write("\t  \t\t\t</div>\r\n");
      out.write("\t  \t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
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
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-cog\"></span> 云制造</h2>\r\n");
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