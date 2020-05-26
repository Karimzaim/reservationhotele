package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import packconnection.connections;
import java.sql.*;

public final class client_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


   ResultSet rs=null;
      Connection con;
           Statement st;

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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write(".st1 {\n");
      out.write("\tfont-family: \"Times New Roman\", Times, serif;\n");
      out.write("\tcolor: darkgray ;\n");
      out.write("        background-color: blanchedalmond ;\n");
      out.write("        font-size: 30px;\n");
      out.write("\ttext-decoration: blink;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("        \n");
      out.write("        <title>Page client</title>\n");
      out.write("        <style type=\"ttext/css\">\n");
      out.write("               #div1{\n");
      out.write("\n");
      out.write("                background-image: url(\"vill.jpg\");  \n");
      out.write("                width: 40%;\n");
      out.write("                margin-left: 35%;\n");
      out.write("                margin-right: 20;\n");
      out.write("                padding-bottom: 60%;}\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
 try{
           con=connections.coneecter();
           st=con.createStatement();
            //rs=st.executeQuery("select code_client_seq.nextval from dual");
           // rs.next();
            }catch(Exception ex){
                out.println(ex.getMessage());
             }

      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <form style=\"background-color: buttonface\" method=\"post\" action=\"clientS.jsp\">\n");
      out.write("            ");
      out.write("\n");
      out.write("            <div  align=\"center\" class=\"st1\"><h3  > Bienvenu</h3></div>\n");
      out.write("            <div  align=\"left\"  style=\"background-image: url(images/hot.jpg);   width: 50%; margin-left: 7%; margin-right: 20%; padding-bottom: 10%\">\n");
      out.write("            <b><b>Inscription</b></b><br>pour crée une resérvation,<br> doit saisis toute les informations.<br> C’est gratuit.\n");
      out.write("            ");
      out.write("\n");
      out.write("            <pre>\n");
      out.write("\n");
      out.write("     <input type=\"text\" name=\"codec\" value=\"code\" style=\"width: 25%;right: 1%;color: blue\"/>  <input type=\"text\" name=\"cinc\" value=\"CIN\" style=\"width: 25%;right: 1%;color: blue\"/>\n");
      out.write("\n");
      out.write("     <input type=\"text\" name=\"nomc\" value=\"Nom\" style=\"width: 25%;right: 1%;color:blue\"/>  <input type=\"text\" name=\"prenomc\" value=\"Prenom\" style=\"width: 25%;right: 1%;color: blue\"/>\n");
      out.write("\n");
      out.write("        <b> Adresse eléctronique :</b>\n");
      out.write("     <input type=\"text\" name=\"emailc\" value=\"email_cleint@hotmail.com/fr\" style=\"width: 40%;right: 1%;color: blue\"/>\n");
      out.write("     <b> num telephone :</b>\n");
      out.write("     <input type=\"text\" name=\"telec\" value=\"00.00.00.00.00\" style=\"width: 20%;right: 2%;color: blue\"/>\n");
      out.write("     <b>Sexe</b> : <input type=\"radio\" name=\"sexec\" value=\"H\"/><b style=\"color: brown\">Homme</b> <input type=\"radio\" name=\"sexec\" value=\"F\"/><b style=\"color: brown\">Femme</b>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("              <input type=\"submit\" name=\"accepter\" value=\"J'Accpte\" style=\"background-color: chartreuse\"/>\n");
      out.write("            </pre>\n");
      out.write("     </div>\n");
      out.write("<!--\n");
      out.write("con.close();\n");
      out.write("rs.close();\n");
      out.write("st.close();\n");
      out.write("-->\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
