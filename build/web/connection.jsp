<%-- 
    Document   : connection
    Created on : 7 juin 2013, 12:17:37
    Author     : Administrateur
--%>

<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
try{
    Connection con=connections.coneecter();
    Statement st=con.createStatement();
    int b=0;
    String sloginp=request.getParameter("loginp");
    String spassep=request.getParameter("passep");
    ResultSet rs=st.executeQuery("select * from personnel");
    while(rs.next()){
        //out.println(rs.getString(3)+""+rs.getString(4));
      //if(sloginp.equals(rs.getString(3)) && spassep.equals(rs.getString(4))){
        if(sloginp.equals("karimezz") && spassep.equals("hamid")){
       b++;
     }
    }
    if(b!=0){
       //response.sendRedirect("listreservation.jsp?codepr"+rs.getObject(1));
        out.println(" b="+b);
     }
    }catch(Exception ex){
    out.println(ex.getMessage());
}

%>
    </body>
</html>
