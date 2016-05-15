package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html lang=\"zh\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/register.css\"/>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/index.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/common.css\"/>\r\n");
      out.write("\t<script src=\"js/common.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t<title>注册</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 导航栏 -->\r\n");
      out.write("\t<nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp\">\r\n");
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
      out.write("\t\t\t<li><a href=\"#section-1\"><br />咨询</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-2\"><br />电话</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-3\"><br />微信</a></li>\r\n");
      out.write("\t\t\t<li><a href=\"#section-4\"><br />微博</a></li>\r\n");
      out.write("\t\t\t<li><a id=\"btn_to_top\"><br />顶部</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"wrapper\">\r\n");
      out.write("\t<div style=\"height: 119px\"></div>\r\n");
      out.write("\t<section class=\"prompt\">\r\n");
      out.write("\t\t<span class=\"pro\">\r\n");
      out.write("\t\t<br/>\r\n");
      out.write("\t\t欢迎来到3D云平台，如果您是新用户，请填写下面的表单进行注册。如果您已经是本站的会员，请您直接<a href=\"login.jsp\"><mark>登录<mark/></a></span> \r\n");
      out.write("\t</section>\r\n");
      out.write("    <section class=\"picture\">\r\n");
      out.write("\t\t<div class=\"pic\">\r\n");
      out.write("\t\t<a href=\"\" ><font size=\"4\"> 首页</font> </a>\r\n");
      out.write("\t\t/\r\n");
      out.write("\t\t<a href=\"register.html\"> <font size=\"4\"> 注册</font></a>  \r\n");
      out.write("\t\t</div> \r\n");
      out.write("\t\t<div id=\"myCarousel\" class=\"carousel slide\" style=\"width:560px;height:473px;position:relative;top=60px;left:230px\">\r\n");
      out.write("\t\t   <!-- 轮播（Carousel）指标 -->\r\n");
      out.write("\t\t   <ol class=\"carousel-indicators\">\r\n");
      out.write("\t\t\t  <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\" style=\"\"></li>\r\n");
      out.write("\t\t\t  <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("\t\t\t  <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("\t\t   </ol>   \r\n");
      out.write("\t\t   <!-- 轮播（Carousel）项目 -->\r\n");
      out.write("\t\t   <div class=\"carousel-inner\" style=\"width:560px;height:473px;position: relative;top=60px;\">\r\n");
      out.write("\t\t\t  <div class=\"item active\">\r\n");
      out.write("\t\t\t\t <img src=\"img/11.png\" alt=\"First slide\">\r\n");
      out.write("\t\t\t\t <div class=\"carousel-caption\">标题 1</div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t  <div class=\"item\">\r\n");
      out.write("\t\t\t\t <img src=\"img/1.png\" alt=\"Second slide\">\r\n");
      out.write("\t\t\t\t <div class=\"carousel-caption\">标题 2</div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t  <div class=\"item\">\r\n");
      out.write("\t\t\t\t <img src=\"img/11.png\" alt=\"Third slide\">\r\n");
      out.write("\t\t\t\t <div class=\"carousel-caption\">标题 3</div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t   </div>\r\n");
      out.write("\t\t   <!-- 轮播（Carousel）导航 -->\r\n");
      out.write("\t\t   <a class=\"carousel-control left\" href=\"#myCarousel\" \r\n");
      out.write("\t\t\t  data-slide=\"prev\" >&lsaquo;</a>\r\n");
      out.write("\t\t   <a class=\"carousel-control right\" href=\"#myCarousel\" \r\n");
      out.write("\t\t\t  data-slide=\"next\">&rsaquo;</a>\r\n");
      out.write("\t\t</div> \r\n");
      out.write("    </section>\r\n");
      out.write("    <section class=\"register\">\r\n");
      out.write("\t\t<form action=\"registerServlet\" class=\"myform\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">个人头像</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"file\" name=\"showlogo\"required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">邮箱地址</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"email\" name=\"email\" required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">您的姓名</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"username\" required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">设置密码</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"password\" name=\"password\"required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">确认密码</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"password\" name=\"password1\" required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">联系QQ</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"qq\"required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<p><span class=\"title\">所在地区</span></p>\r\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"address\"required />\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t<label class=\"in\">\r\n");
      out.write("\t\t\t\t<input type=\"checkbox\" name=\"agreement\" value=\"agree\" style=\"width:15px;height:15px;\"   />\r\n");
      out.write("\t\t\t\t<span class=\"title\">我已认真阅读并同意《服务使用协议》</span>\r\n");
      out.write("\t\t\t</label>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"注册\" class=\"submit\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t</form>\r\n");
      out.write("    </section>\r\n");
      out.write("   </div>\r\n");
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
      out.write("\t\t\t\t\t<h2><span class=\"glyphicon glyphicon-cog\"></span>我是加盟商</h2>\r\n");
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
