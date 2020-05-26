<%-- 
    Document   : reservation2
    Created on : 15 juin 2013, 21:11:15
    Author     : karim
--%>

<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%!
    Connection con=connections.coneecter();
    Statement sttr;
    ResultSet rstr=null;
    String hotl=null;
    Statement st;
    ResultSet rs=null;
   %>

<html>
    <head>
<%
try{
       hotl=request.getParameter("snhtl3");
       sttr=con.createStatement();
       st=con.createStatement();
       
       rstr=sttr.executeQuery("select code_hotel from hotels where nom_hotel='"+hotl+"'");
       rstr.next();

       rs=st.executeQuery("select tarif_chambre from chambres where code_hotel="+rstr.getInt(1));
       rs.next();
%>
        <title>JSP Page</title>
    </head>
    <body>
        <pre> <h2>trife des chambres</h2><input type="text" name="tarif"  value="<%=rs.getObject(1)%> DH" style="width: 15%"/></pre>
      </body>
    <%}catch(Exception ex){}%>
</html>
