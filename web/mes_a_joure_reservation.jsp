<%-- 
    Document   : mes_a_joure_reservation
    Created on : 11 juin 2013, 11:11:10
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
    Date d1,d2;
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd=sdf.format(d);
    Connection con=connections.coneecter();
    Statement st3;
    ResultSet rs3=null;
    String scodec;
    String scoderes;
   %>


<html>
    <head>
        <link rel="stylesheet" href="stlcss/jquery.ui.all.css">
	<script src="stlcss/jquery-1.9.1.js"></script>
	<script src="stlcss/jquery.ui.core.js"></script>
	<script src="stlcss/jquery.ui.widget.js"></script>
	<script src="stlcss/jquery.ui.datepicker.js"></script>
	<link rel="stylesheet" href="stlcss/demos.css">
        <script>
	$(function() {
               $("#datdbres").datepicker();
               $("#datfnres").datepicker();
       });

    </script>
        <title>Page resérvation</title>
        <style type="text/css">
            #test{
                background-image:url(images/im2.jpg);
                width: 40%;
                margin-left: 10%;
                margin-right: 50%;
                padding-bottom: 20%;


            }
        </style>
<%
try{
    scodec=request.getParameter("codcl");
    scoderes=request.getParameter("codrs");
    st3=con.createStatement();
    rs3=st3.executeQuery("select r.* from reservations r where r.code_reservation="+scoderes+" and r.code_client="+scodec);
    //background="../im4.jpg"
%>


    </head>
    <body >
        <form  method="POST" name="ajax" action="suprimer_modifier_reservation.jsp">
            <div id="test" align="center">
                <pre>
  votre code:    code reservation:
<input type="text" name="codeclt" value="<%=scodec%>" style="width: 20%"> <input type="text" name="coderesvt" value="<%=scoderes%>" style="width: 20%"> </pre>
    <br>
         Date de reservation:<br>
         <input type="text" name="dateres" value="<%=sd%>" style="width: 30%"/>
           <br>
<%
if(rs3.next()){
%>
           <pre> debut :             fin :
<input type="date" name="dateresd" id="datdbres" value="<%=sdf.format(rs3.getDate(3))%>" style="width: 30%"/> <input type="date" name="dateresf" id="datfnres" value="<%=sdf.format(rs3.getDate(4))%>" style="width: 30%"/>
           </pre>
           <pre> chambres:      personnes:
<input type="text" name="nbrchres" value="<%=rs3.getObject(7)%>" style="width: 20%"/>  <input type="text" name="nbrperres" value="<%=rs3.getObject(6)%>" style="width: 20%"/>
          </pre>
           <pre>
   <input type="submit" name="b1" value="modifier"/> <input type="submit" name="b1" value="suprimer"/>
           </pre>
                   <%}%>
              </div>
           </form>
    </body>
<%
}catch(Exception ex){out.println(ex.getMessage()); }
    %>
</html>


