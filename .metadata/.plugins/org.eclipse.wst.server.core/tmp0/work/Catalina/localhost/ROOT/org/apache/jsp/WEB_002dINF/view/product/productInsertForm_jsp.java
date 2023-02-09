/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.82
 * Generated at: 2023-02-06 02:25:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productInsertForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>상품 등록</title>\r\n");
      out.write("<script  src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("	$(document).ready(function(){\r\n");
      out.write("		\r\n");
      out.write("		$(\"#insertBtn\").click(function(){\r\n");
      out.write("			\r\n");
      out.write("			let p1 = $(\"#p1\").val();\r\n");
      out.write("			let pc = $(\"#pc\").val();\r\n");
      out.write("			let de = $(\"#de\").val();\r\n");
      out.write("			\r\n");
      out.write("			$(\"#pcategory\").val(p1);\r\n");
      out.write("			$(\"#pcategory_detail\").val(pc);\r\n");
      out.write("			$(\"#detail_product\").val(de);\r\n");
      out.write("			\r\n");
      out.write("			$(\"#insert\").attr({\r\n");
      out.write("				'action':'productInsert',\r\n");
      out.write("				'method':'POST',\r\n");
      out.write("				'enctype':'multipart/form-data'				\r\n");
      out.write("			}).submit();\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("	});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<h2 style=\"text-align:center;\">상품 등록</h2><br>\r\n");
      out.write("<form id=\"insert\" name=\"insert\">\r\n");
      out.write("<table align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td>물품명</td>\r\n");
      out.write("<td><input type=\"text\" id=\"pname\" name=\"pname\" placeholder=\"물품명 기입\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>설명</td>\r\n");
      out.write("<td><textarea id=\"pcontent\" name=\"pcontent\" placeholder=\"상품 설명 기입\"></textarea>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>가격</td>\r\n");
      out.write("<td><input type=\"text\" id=\"ppay\" name=\"ppay\" placeholder=\"가격 기입\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>재고 수량</td>\r\n");
      out.write("<td><input type=\"text\" id=\"pcount\" name=\"pcount\" placeholder=\"재고 수량 기입\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>분류</td>\r\n");
      out.write("<td><select id=\"p1\">\r\n");
      out.write("	<option value=\"01\" id=\"pcate1\" selected>남성</option>\r\n");
      out.write("	<option value=\"02\" id=\"pcate2\">여성</option>\r\n");
      out.write("</select>\r\n");
      out.write("<select id=\"pc\">\r\n");
      out.write("	<option value=\"01\" id=\"pcate_d1\" selected>샴푸</option>\r\n");
      out.write("	<option value=\"02\" id=\"pcate_d2\">로션</option>\r\n");
      out.write("</select>\r\n");
      out.write("<select id=\"de\">\r\n");
      out.write("	<option value=\"01\" id=\"detail_p2\" selected>천연</option>\r\n");
      out.write("	<option value=\"02\" id=\"detail_p3\">모공 축소</option>\r\n");
      out.write("	<option value=\"03\" id=\"detail_p4\">향기</option>\r\n");
      out.write("	<option value=\"04\" id=\"detail_p5\">기타</option>\r\n");
      out.write("</select>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>이미지</td>\r\n");
      out.write("<td><input type=\"file\" id=\"pimage\" name=\"pimage\" value=\"파일 찾아보기\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=\"2\" style=\"text-align:right;\"><input type=\"button\" id=\"insertBtn\" value=\"상품 등록\">\r\n");
      out.write("<input type=\"button\" id=\"selectBtn\" value=\"상품 목록 가기\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<input type=\"hidden\" id=\"pcategory\" name=\"pcategory\" value=\"\">\r\n");
      out.write("<input type=\"hidden\" id=\"pcategory_detail\" name=\"pcategory_detail\" value=\"\">\r\n");
      out.write("<input type=\"hidden\" id=\"detail_product\" name=\"detail_product\" value=\"\">\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
