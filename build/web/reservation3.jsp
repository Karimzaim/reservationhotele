<%-- 
    Document   : reservation3
    Created on : 15 juin 2013, 21:20:49
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
    Statement st;

    ResultSet rstr=null;
    ResultSet rs=null;
    
    String chmbr=null;
    String nht=null;  
    
   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<%
try{
       chmbr=request.getParameter("snbrch");
       nht=request.getParameter("snhtl2");
       sttr=con.createStatement();
       st=con.createStatement();

       rstr=sttr.executeQuery("select code_hotel from hotels where nom_hotel='"+nht+"'");
       rstr.next();

       //rs=st.executeQuery("select num_chambre from chambres where code_hotel="+rstr.getInt(1)+" and code_client is null");
       //rs.next();
     %>
    </head>
    <body>
       <div id="chbr">
           <h3>choiser les chambres</h3>
           <%for(int i=1;i<=Integer.parseInt(chmbr);i++){
                rs=st.executeQuery("select num_chambre from chambres where code_hotel="+rstr.getInt(1)+" and code_client is null");
               //rs.next();
             %>
             <select name="numchanbre"<%=i%> size="1" >
                 <%while(rs.next()){%>
                 <option><%=rs.getObject(1)%></option>
                 <%}%>
             </select>
           <%}%>
          
       </div>
           <br>
    </body>
     <%}catch(Exception ex){
         ex.getMessage();
     }%>
     
</html>
