<%-- 
    Document   : reservation1
    Created on : 3 juin 2013, 23:46:33
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
    Statement st1;
    Statement st2;
    Statement st3;
    ResultSet rs1=null;
    ResultSet rs2=null;
    ResultSet rs3=null;

%>

<html>
    <head>

        <title>Page resérvation</title>
        <style type="text/css">
            #test{
                background-color:darkgray;
                width: 40%;
                margin-left: 30%;
                margin-right: 30%;
                padding-bottom: 20%;

            }
        </style>
<%
try{
     st1=con.createStatement();
     rs1=st1.executeQuery("select * from pays");
          
%>
 <script language="javascript" type="text/javascript">
        reqObj=null;
        function chercher(){
            document.getElementById("dv").innerHTML="En cours ...";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }

            reqObj.onreadystatechange =process;
            reqObj.open("POST","./reservation2.jsp?snp="+document.getElementById("np").value,true);
            reqObj.send(null);
        }
        function process(){
            if(reqObj.readyState==4){
                document.getElementById("dv").innerHTML=reqObj.responseText;
            }
        }
        </script>
    </head>
    <body background="vill.jpg">

        <div id="test" align="center">
            <select id="np" size="1" style="width: 30%" onchange="chercher()">
            <option>choiser une pay</option>
               <%while(rs1.next()){%>
               <option><%=rs1.getObject(1)%></option>
               <%}%>
            </select>  <div id="dv"></div>
      </div>
          
    </body>
    <%}catch(Exception ex){out.println(ex.getMessage()); }%>
</html>

