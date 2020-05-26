package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import packconnection.connections;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class reservation2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {



    Date d=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd=sdf.format(d);
    Connection con=connections.coneecter();
    Statement st1;
    Statement st2;
    Statement st3;
    Statement st4;
    ResultSet rs1=null;
    ResultSet rs2=null;
    ResultSet rs3=null;
     ResultSet rs4=null;


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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <title>Page resérvation</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #test{\n");
      out.write("                background-color:darkgray;\n");
      out.write("                width: 40%;\n");
      out.write("                margin-left: 30%;\n");
      out.write("                margin-right: 30%;\n");
      out.write("                padding-bottom: 20%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");

try{
    String snmp=request.getParameter("snp");
     st2=con.createStatement();
     rs2=st2.executeQuery("select * from villes where nom_pay='"+snmp+"'");
   //String svil=request.getParameter("snvl");
     //st3=con.createStatement();
     //rs3=st3.executeQuery("select h.* from hotels h");


      out.write("\n");
      out.write("\n");
      out.write("  <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("        reqObj=null;\n");
      out.write("        function aficher(){\n");
      out.write("            document.getElementById(\"dvv\").innerHTML=\"En cours ...\";\n");
      out.write("            if(window.XMLHttpRequest){\n");
      out.write("                reqObj=new XMLHttpRequest();\n");
      out.write("            }else {\n");
      out.write("                reqObj=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            reqObj.onreadystatechange =process;\n");
      out.write("            reqObj.open(\"POST\",\"./reservation3.jsp?snvl=\"+document.getElementById(\"nvl\").value,true);\n");
      out.write("            reqObj.send(null);\n");
      out.write("        }\n");
      out.write("        function process(){\n");
      out.write("            if(reqObj.readyState==4){\n");
      out.write("                document.getElementById(\"dvv\").innerHTML=reqObj.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body background=\"vill.jpg\">\n");
      out.write("\n");
      out.write("        <div id=\"test\" align=\"center\">\n");
      out.write("            <pre>\n");
      out.write("<select id=\"nvl\" size=\"1\" style=\"width: 70%\"><option>choiser une pay</option>  ");
while(rs2.next()){
      out.write(" <option>");
      out.print(rs2.getObject(2));
      out.write("</option> ");
}
      out.write("</select></pre>\n");
      out.write("<input type=\"button\"  name=\"ok\" value=\"ok\" onclick=\"aficher()\"/>\n");
      out.write("<div id=\"dvv\"></div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    ");
}catch(Exception ex){out.println(ex.getMessage()); }
      out.write("\n");
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
