package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dangnhap_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("    .form-tt {\r\n");
      out.write("width: 400px;\r\n");
      out.write("border-radius: 10px;\r\n");
      out.write("overflow: hidden;\r\n");
      out.write("padding: 100px 100px 82px;\r\n");
      out.write("background: #9152f8;\r\n");
      out.write("background: -webkit-linear-gradient(top,#7579ff,#b224ef);\r\n");
      out.write("background: -o-linear-gradient(top,#7579ff,#b224ef);\r\n");
      out.write("background: -moz-linear-gradient(top,#7579ff,#b224ef);\r\n");
      out.write("background: linear-gradient(top,#7579ff,#b224ef);\r\n");
      out.write("text-align: center;\r\n");
      out.write("max-width: 600px;\r\n");
      out.write("margin: 0 auto;\r\n");
      out.write("display: block;\r\n");
      out.write("margin-top: 50px;\r\n");
      out.write("}\r\n");
      out.write(".form-tt h2 {\r\n");
      out.write("font-size: 30px;\r\n");
      out.write("color: #fff;\r\n");
      out.write("line-height: 1.2;\r\n");
      out.write("text-align: center;\r\n");
      out.write("text-transform: uppercase;\r\n");
      out.write("display: block;\r\n");
      out.write("margin-bottom: 30px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form-tt input[type=text], .form-tt input[type=password] {\r\n");
      out.write("font-family: Poppins-Regular;\r\n");
      out.write("font-size: 16px;\r\n");
      out.write("color: #fff;\r\n");
      out.write("line-height: 1.2;\r\n");
      out.write("display: block;\r\n");
      out.write("width: calc(100% - 10px);\r\n");
      out.write("height: 45px;\r\n");
      out.write("background: 0 0;\r\n");
      out.write("padding: 10px 0;\r\n");
      out.write("border-bottom: 2px solid rgba(255,255,255,.24)!important;\r\n");
      out.write("border: 0;\r\n");
      out.write("outline: 0;\r\n");
      out.write("}\r\n");
      out.write(".form-tt input[type=text]::focus, .form-tt input[type=password]::focus {\r\n");
      out.write("color: red;\r\n");
      out.write("}\r\n");
      out.write(".form-tt input[type=password] {\r\n");
      out.write("margin-bottom: 20px;\r\n");
      out.write("}\r\n");
      out.write(".form-tt input::placeholder {\r\n");
      out.write("color: #fff;\r\n");
      out.write("}\r\n");
      out.write(".checkbox {\r\n");
      out.write("display: block;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#id{font-size: 16px;\r\n");
      out.write("color: #555;\r\n");
      out.write("line-height: 1.2;\r\n");
      out.write("padding: 0 20px;\r\n");
      out.write("min-width: 120px;\r\n");
      out.write("height: 50px;\r\n");
      out.write("border-radius: 25px;\r\n");
      out.write("background: #fff;\r\n");
      out.write("position: relative;\r\n");
      out.write("z-index: 1;\r\n");
      out.write("border: 0;\r\n");
      out.write("outline: 0;\r\n");
      out.write("display: block;\r\n");
      out.write("margin: 30px auto;}\r\n");
      out.write(".form-tt input[type=submit] {\r\n");
      out.write("font-size: 16px;\r\n");
      out.write("color: #555;\r\n");
      out.write("line-height: 1.2;\r\n");
      out.write("padding: 0 20px;\r\n");
      out.write("min-width: 120px;\r\n");
      out.write("height: 50px;\r\n");
      out.write("border-radius: 25px;\r\n");
      out.write("background: #fff;\r\n");
      out.write("position: relative;\r\n");
      out.write("z-index: 1;\r\n");
      out.write("border: 0;\r\n");
      out.write("outline: 0;\r\n");
      out.write("display: block;\r\n");
      out.write("margin: 30px auto;\r\n");
      out.write("}\r\n");
      out.write("* {\r\n");
      out.write("margin: 0;\r\n");
      out.write("padding: 0;\r\n");
      out.write("}\r\n");
      out.write("body {\r\n");
      out.write("background: #ddd\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#checkbox {\r\n");
      out.write("display: inline-block;\r\n");
      out.write("margin-right: 10px;\r\n");
      out.write("}\r\n");
      out.write(".checkbox-text {\r\n");
      out.write("color: #fff;\r\n");
      out.write("}\r\n");
      out.write(".psw-text {\r\n");
      out.write("color: #fff;\r\n");
      out.write("}\r\n");
      out.write("#adm{padding: 10px;\r\n");
      out.write("color: orange;\r\n");
      out.write("border: 0;\r\n");
      out.write("outline: 0;}\r\n");
      out.write("#am{padding: 10px;\r\n");
      out.write("color: black;\r\n");
      out.write("border: 0;\r\n");
      out.write("outline: 0;}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("    <div class=\"form-tt\" >\r\n");
      out.write("        <form method=\"post\" action=\"log_core.jsp\">\r\n");
      out.write("            <table align=\"center\">\r\n");
      out.write("                <div id=\"container\">\r\n");
      out.write("                <h2 align=\"center\">Login</h2>\r\n");
      out.write("                <input type=\"text\" name=\"Email\" placeholder=\"Email\"/> \r\n");
      out.write("                <input type=\"password\" name=\"password\"  placeholder=\"Password\" />\r\n");
      out.write("                <input id=\"login\" type=\"submit\" value=\"Login\" name=\"sbm\"  />\r\n");
      out.write("               \r\n");
      out.write("                <a id=\"am\" href=\"dangky.jsp\">Chua co tai khoan? </a>\r\n");
      out.write("                \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </table>\r\n");
      out.write("            \r\n");
      out.write("        </form>\r\n");
      out.write("        <p align=\"center\">");
 
                 if (request.getParameter("q") != null) {
                out.print("Chua nhap email hoac mat khau ");
            }
                
             
      out.write("</p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
