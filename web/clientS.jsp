<%-- 
    Document   : clientS
    Created on : 2 juin 2013, 19:58:51
    Author     : karim
--%>

<%@page import="packconnection.connections"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

    String scodec=request.getParameter("codec");
    String scinc=request.getParameter("cinc");
    String snomc=request.getParameter("nomc");
    String sprenomc=request.getParameter("prenomc");
    String ssexec=request.getParameter("sexec");
    String semailc=request.getParameter("emailc");
    String stelec=request.getParameter("telec");
    if(scinc.equals("") && snomc.equals("") && sprenomc.equals("") && ssexec.equals("") && semailc.equals("") && stelec.equals("")){
       
    }else{
    st.executeUpdate("insert into clients values("+scodec+",'"+scinc+"','"+snomc+"','"+ssexec+"','"+semailc+"','"+stelec+"','"+sprenomc+"')");
    response.sendRedirect("rechercherhotels1.jsp?cd="+scodec);
    st.close();
    con.close();
    }
    //out.println(scodec+"/"+scinc+"/"+snomc+"/"+sprenomc+"/"+ssexec+"/"+semailc+"/"+stelec);
}catch(Exception ex){
    response.sendRedirect("client.jsp");
}

%>

    </body>
</html>
