package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import packconnection.connections;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class mes_005fa_005fjoure_005freservation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {



    Date d=new Date();
    Date d1,d2;
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd=sdf.format(d);
    Connection con=connections.coneecter();
    Statement st3;
    ResultSet rs3=null;
    String scodec;
    String scoderes;
   
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"stlcss/jquery.ui.all.css\">\n");
      out.write("\t<script src=\"stlcss/jquery-1.9.1.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.core.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.widget.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.datepicker.js\"></script>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"stlcss/demos.css\">\n");
      out.write("        <script>\n");
      out.write("\t$(function() {\n");
      out.write("               $(\"#datdbres\").datepicker();\n");
      out.write("               $(\"#datfnres\").datepicker();\n");
      out.write("       });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("        <title>Page resérvation</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #test{\n");
      out.write("                background-image:url(images/im2.jpg);\n");
      out.write("                width: 40%;\n");
      out.write("                margin-left: 10%;\n");
      out.write("                margin-right: 50%;\n");
      out.write("                padding-bottom: 20%;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");

try{
    scodec=request.getParameter("codcl");
    scoderes=request.getParameter("codrs");
    st3=con.createStatement();
    rs3=st3.executeQuery("select r.* from reservations r where r.code_reservation="+scoderes+" and r.code_client="+scodec);
    //background="../im4.jpg"

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        <form  method=\"POST\" name=\"ajax\" action=\"suprimer_modifier_reservation.jsp\">\n");
      out.write("            <div id=\"test\" align=\"center\">\n");
      out.write("                <pre>\n");
      out.write("  votre code:    code reservation:\n");
      out.write("<input type=\"text\" name=\"codeclt\" value=\"");
      out.print(scodec);
      out.write("\" style=\"width: 20%\"> <input type=\"text\" name=\"coderesvt\" value=\"");
      out.print(scoderes);
      out.write("\" style=\"width: 20%\"> </pre>\n");
      out.write("    <br>\n");
      out.write("         Date de reservation:<br>\n");
      out.write("         <input type=\"text\" name=\"dateres\" value=\"");
      out.print(sd);
      out.write("\" style=\"width: 30%\"/>\n");
      out.write("           <br>\n");

if(rs3.next()){

      out.write("\n");
      out.write("           <pre> debut :             fin :\n");
      out.write("<input type=\"date\" name=\"dateresd\" id=\"datdbres\" value=\"");
      out.print(sdf.format(rs3.getDate(3)));
      out.write("\" style=\"width: 30%\"/> <input type=\"date\" name=\"dateresf\" id=\"datfnres\" value=\"");
      out.print(sdf.format(rs3.getDate(4)));
      out.write("\" style=\"width: 30%\"/>\n");
      out.write("           </pre>\n");
      out.write("           <pre> chambres:      personnes:\n");
      out.write("<input type=\"text\" name=\"nbrchres\" value=\"");
      out.print(rs3.getObject(7));
      out.write("\" style=\"width: 20%\"/>  <input type=\"text\" name=\"nbrperres\" value=\"");
      out.print(rs3.getObject(6));
      out.write("\" style=\"width: 20%\"/>\n");
      out.write("          </pre>\n");
      out.write("           <pre>\n");
      out.write("   <input type=\"submit\" name=\"b1\" value=\"modifier\"/> <input type=\"submit\" name=\"b1\" value=\"suprimer\"/>\n");
      out.write("           </pre>\n");
      out.write("                   ");
}
      out.write("\n");
      out.write("              </div>\n");
      out.write("           </form>\n");
      out.write("    </body>\n");

}catch(Exception ex){out.println(ex.getMessage()); }
    
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
