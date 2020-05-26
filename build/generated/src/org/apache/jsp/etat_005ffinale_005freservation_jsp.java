package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class etat_005ffinale_005freservation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        ");

 String scodec=request.getParameter("codec");
 String scoderes=request.getParameter("coderes");

      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: bisque\">\n");
      out.write("        <pre>\n");
      out.write("    <div style=\" margin-left: 20%; margin-right:20%; width: 50%; background-color: burlywood\" >\n");
      out.write("        <p style=\"color: black;font-size: 10px\">\n");
      out.write("          vorte reservation a etre créer sur compte créer avec :\n");
      out.write("          un code clients ");
      out.print(scodec);
      out.write(" et code de reservation ");
      out.print(scoderes);
      out.write(".\n");
      out.write("          pour vous modifier la date de reservation ou anuler:\n");
      out.write("          <a href=\"mes_a_joure_reservation.jsp?codcl=");
      out.print(scodec);
      out.write("&codrs=");
      out.print(scoderes);
      out.write("\"> modifier la reservation</a>\n");
      out.write("        </p>\n");
      out.write("        <pre>\n");
      out.write("<img src=\"images/im1.jpg\" width=\"20%\" height=\"30%\" /><a href=\"http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html\"><h4>hothjels a Marrakech</h4></a>\n");
      out.write("<img src=\"images/Capture1.PNG\" width=\"20%\" height=\"30%\" /><a href=\"http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html\"><h4>Annakhil a Rabat</h4></a>\n");
      out.write("<img src=\"images/Capture2.jpg\" width=\"20%\" height=\"30%\" /><a href=\"http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html\"><h4>Atlantic a Agadir</h4></a>\n");
      out.write("<img src=\"images/Capture3.jpg\" width=\"20%\" height=\"30%\" /><a href=\"http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html\"><h4>Atlantic a Agadir</h4></a>\n");
      out.write("        </pre>\n");
      out.write("        </div>\n");
      out.write("        </pre>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
