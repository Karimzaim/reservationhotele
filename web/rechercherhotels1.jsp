<%-- 
    Document   : rechercherhotels1
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
    
    ResultSet rs1=null;
    ResultSet rs2=null;
   
    String scd=null;

%>

<html>
    <head>

        <title>Page resérvation</title>
        <style type="text/css">
            #test{
               background-image: url("vill.jpg");
                width: 40%;
                margin-left: 35%;
                margin-right: 35%;
                padding-bottom: 60%;

            }
        </style>
<%
try{
     scd=request.getParameter("cd");
     st1=con.createStatement();
     rs1=st1.executeQuery("select * from pays");
     st2=con.createStatement();
     rs2=st2.executeQuery("select * from villes");
     //st3=con.createStatement();
     //rs3=st3.executeQuery("select h.* from hotels h");
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
            reqObj.open("POST","./rechercherhotels2.jsp?snp="+document.getElementById("np").value+"&cde="+document.getElementById("cdc").value,true);
            reqObj.send(null);
        }
        function process(){
            if(reqObj.readyState==4){
                document.getElementById("dv").innerHTML=reqObj.responseText;

            }
        }
        </script>
    </head>
    <body>
     
        <div id="test" align="center"  >
            <h1 align="center" style=" color: burlywood"> chercheter à des hotels</h1>
            <select id="np" size="1" style="width: 30%" onchange="chercher()">
            <option>choiser une pay</option>
               <%while(rs1.next()){%>
               <option><%=rs1.getObject(1)%></option>
               <%}%>
            </select>
             <div id="dv"> <br>
<select name="nvl" size="1" style="width: 30%"> <option>choiser une ville</option> <%while(rs2.next()){%>  <option><%=rs2.getObject(2)%></option> <%}%> </select>                
            </div>
            <input type="hidden" id="cdc" value="<%=scd%>"/>
           
      </div>
         
    </body>
    <%

}catch(Exception ex){out.println(ex.getMessage()); }


    %>
</html>

