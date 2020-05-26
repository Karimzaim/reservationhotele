package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import packconnection.connections;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class reservation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {



    Date d=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd=sdf.format(d);
    Connection con=connections.coneecter();
    Statement st3;
    ResultSet rs3=null;
     Statement st4;
     Statement st5;
    ResultSet rs4=null;
    ResultSet rs5=null;
    String scodc=null;
     Statement st6;
    ResultSet rs6=null;
     Statement st7;
    ResultSet rs7=null;
     String hott=null;
   
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
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"stlcss/jquery.ui.all.css\">\n");
      out.write("\t<script src=\"stlcss/jquery-1.9.1.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.core.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.widget.js\"></script>\n");
      out.write("\t<script src=\"stlcss/jquery.ui.datepicker.js\"></script>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"stlcss/demos.css\">\n");
      out.write("        <script>\n");
      out.write("\t$(function() {\n");
      out.write("               $(\"#datdbrs\").datepicker();\n");
      out.write("               $(\"#datfnrs\").datepicker();\n");
      out.write("       });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("         <style type=\"text/css\">\n");
      out.write("            #test2{\n");
      out.write("               background-image: url(\"vill.jpg\");\n");
      out.write("                width: 40%;\n");
      out.write("                margin-left: 35%;\n");
      out.write("                margin-right: 20;\n");
      out.write("                padding-bottom: 60%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("            function indique(){\n");
      out.write("               dt=document.getElementById(\"datdbrs\").value;\n");
      out.write("               document.getElementById(\"datfnrs\").value=$(\"#datdbrs\").datepicker().next();\n");
      out.write("               }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("  <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("        reqObj=null;\n");
      out.write("        function afficher(){\n");
      out.write("           document.getElementById(\"tr\").innerHTML=\"En cours ...\";\n");
      out.write("            if(window.XMLHttpRequest){\n");
      out.write("                reqObj=new XMLHttpRequest();\n");
      out.write("            }else {\n");
      out.write("                reqObj=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            reqObj.onreadystatechange =process;\n");
      out.write("            reqObj.open(\"POST\",\"./reservation2.jsp?&snhtl3=\"+document.getElementById(\"nhtl1\").value,true);\n");
      out.write(" //reqObj.open(\"POST\",\"./reservation3.jsp?snbrch=\"+document.getElementById(\"nbrch\").value+\"&snhtl2\"+document.getElementById(\"nhtl1\").value,true);\n");
      out.write("            reqObj.send(null);\n");
      out.write("        }\n");
      out.write("        function process(){\n");
      out.write("            if(reqObj.readyState==4){\n");
      out.write("                document.getElementById(\"tr\").innerHTML=reqObj.responseText;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("  </script>\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("        obj=null;\n");
      out.write("        function realiser(){\n");
      out.write("           document.getElementById(\"chbr\").innerHTML=\"En cours ...\";\n");
      out.write("            if(window.XMLHttpRequest){\n");
      out.write("                obj=new XMLHttpRequest();\n");
      out.write("            }else {\n");
      out.write("                obj=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            obj.onreadystatechange =process2;\n");
      out.write("            obj.open(\"POST\",\"./reservation3.jsp?&snhtl2=\"+document.getElementById(\"nhtl1\").value+\"&snbrch=\"+document.getElementById(\"nbrch\").value,true);\n");
      out.write(" //reqObj.open(\"POST\",\"./reservation3.jsp?snbrch=\"+document.getElementById(\"nbrch\").value+\"&snhtl2\"+document.getElementById(\"nhtl1\").value,true);\n");
      out.write("            obj.send(null);\n");
      out.write("        }\n");
      out.write("        function process2(){\n");
      out.write("            if(obj.readyState==4){\n");
      out.write("                document.getElementById(\"chbr\").innerHTML=obj.responseText;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("        <title>Page resérvation</title>\n");
      out.write("        ");

try{
    String snvl=request.getParameter("nvl");
    //scodecl=request.getParameter("codcl");
    st3=con.createStatement();
    rs3=st3.executeQuery("select h.* from hotels h,villes v where h.code_ville=v.code_ville and v.ville='"+snvl+"'");
    scodc=request.getParameter("cdclt");

     st4=con.createStatement();
     rs4=st4.executeQuery("select * from chambres where code_client is null");

      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form  method=\"POST\" name=\"ajax\" action=\"reservationS.jsp\">\n");
      out.write("            \n");
      out.write("            <div id=\"test2\" align=\"center\">\n");
      out.write("                <br><br><br>\n");
      out.write("<select name=\"nht\" id=\"nhtl1\" style=\"width: 30%\" onchange=\"afficher()\"><option>choiser un hotel</option>");
while(rs3.next()){
      out.write("<option>");
      out.print(rs3.getObject(2));
      out.write("</option>");
}
      out.write(" </select>\n");
      out.write("<h2>Date de reservation:</h2><input type=\"text\" name=\"daters\" value=\"");
      out.print(sd);
      out.write("\" style=\"width: 20%\"/>\n");
      out.write("           \n");
      out.write("           <pre>\n");
      out.write("<h2> date debut :         date fin :</h2> <input type=\"date\" id=\"datdbrs\"   name=\"datersd\" value=\"jj/mm/aaaa\" style=\"width: 20%\" onchange=\"indique()\"/> <input type=\"date\" id=\"datfnrs\" name=\"datersf\" value=\"jj/mm/aaaa\" style=\"width: 20%\"/>\n");
      out.write("           </pre>\n");
      out.write("           <pre> <h2>chambres:      personnes:</h2><select name=\"nbrch\" id=\"nbrch\"size=\"1\" style=\"width:10%\" onchange=\"realiser()\"><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7+</option></select>      <select name=\"nbrpers\" size=\"1\" style=\"width: 10%\"> <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option> </select>\n");
      out.write("          </pre>\n");
      out.write("          <div id=\"chbr\"></div><br>\n");
      out.write("          <div id=\"tr\"> <input type=\"text\" name=\"trif\" id=\"trf\" value=\"trife des chambres\" style=\"width: 15%\"/></div>\n");
      out.write("          <pre> <input type=\"submit\" name=\"b1\" value=\"reserver\"/> <input type=\"submit\" name=\"b1\" value=\"annuler\"/> </pre>\n");
      out.write("           <input type=\"hidden\" name=\"codclt\" value=\"");
      out.print(scodc);
      out.write("\"/>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("           </form>\n");
      out.write("    </body>\n");
      out.write("    ");


    }catch(Exception ex){
        out.println(ex.getMessage());
        }

    
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
