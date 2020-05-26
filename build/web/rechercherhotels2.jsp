<%-- 
    Document   : reservation
    Created on : 3 juin 2013, 23:12:53
    Author     : karim
--%>

<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!

    Date d=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd=sdf.format(d);
    Connection con=connections.coneecter();
    Statement st2;
    ResultSet rs2=null;
    String scdc=null;
    

%>

<html>
    <head>
        
        <title>Page resérvation</title>

       
<%
try{
      String snpay=request.getParameter("snp");
     scdc=request.getParameter("cde");
     st2=con.createStatement();
     rs2=st2.executeQuery("select * from villes where nom_pay='"+snpay+"'");
  %>
    </head>
    <body>
        <form method="post" action="reservation.jsp">
            <div align="center">

                <br>
                <select name="nvl" size="1" style="width: 25%">
                    <option>choiser une ville</option>
                    <%while(rs2.next()){%>
                    <option><%=rs2.getObject(2)%></option>
                    <%}%>
                </select>
      <pre> <input type="submit" name="recherchhot" value="recherche des hôtels"/> <input type="hidden" name="cdclt" value="<%=scdc%>"/></pre>
                    </div>
    </form>
    </body>
    <%
}
catch(Exception ex){
    out.println(ex.getMessage());
    }

    %>
</html>
