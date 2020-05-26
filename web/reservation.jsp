<%--
    Document   : reservation3
    Created on : 4 juin 2013, 14:43:13
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
               $("#datdbrs").datepicker();
               $("#datfnrs").datepicker();
       });

    </script>
         <style type="text/css">
            #test2{
               background-image: url("vill.jpg");
                width: 40%;
                margin-left: 35%;
                margin-right: 20;
                padding-bottom: 60%;

            }
        </style>
        <script language="javascript" type="text/javascript">
            function indique(){
               dt=document.getElementById("datdbrs").value;
               document.getElementById("datfnrs").value=$("#datdbrs").datepicker().next();
               }


        </script>

  <script language="javascript" type="text/javascript">
        reqObj=null;
        function afficher(){
           document.getElementById("tr").innerHTML="En cours ...";
            if(window.XMLHttpRequest){
                reqObj=new XMLHttpRequest();
            }else {
                reqObj=new ActiveXObject("Microsoft.XMLHTTP");
            }

            reqObj.onreadystatechange =process;
            reqObj.open("POST","./reservation2.jsp?&snhtl3="+document.getElementById("nhtl1").value,true);
 //reqObj.open("POST","./reservation3.jsp?snbrch="+document.getElementById("nbrch").value+"&snhtl2"+document.getElementById("nhtl1").value,true);
            reqObj.send(null);
        }
        function process(){
            if(reqObj.readyState==4){
                document.getElementById("tr").innerHTML=reqObj.responseText;

            }
        }
  </script>
  <%-- <script language="javascript" type="text/javascript">
        obj=null;
        function realiser(){
           document.getElementById("chbr").innerHTML="En cours ...";
            if(window.XMLHttpRequest){
                obj=new XMLHttpRequest();
            }else {
                obj=new ActiveXObject("Microsoft.XMLHTTP");
            }

            obj.onreadystatechange =process2;
            obj.open("POST","./reservation3.jsp?&snhtl2="+document.getElementById("nhtl1").value+"&snbrch="+document.getElementById("nbrch").value,true);
 //reqObj.open("POST","./reservation3.jsp?snbrch="+document.getElementById("nbrch").value+"&snhtl2"+document.getElementById("nhtl1").value,true);
            obj.send(null);
        }
        function process2(){
            if(obj.readyState==4){
                document.getElementById("chbr").innerHTML=obj.responseText;

            }
        }
        </script>
  --%>
        <title>Page resérvation</title>
        <%
try{
    String snvl=request.getParameter("nvl");
    //scodecl=request.getParameter("codcl");
    st3=con.createStatement();
    rs3=st3.executeQuery("select h.* from hotels h,villes v where h.code_ville=v.code_ville and v.ville='"+snvl+"'");
    scodc=request.getParameter("cdclt");

     st4=con.createStatement();
     rs4=st4.executeQuery("select * from chambres where code_client is null");
%>

       
    </head>
    <body>
        <form  method="POST" name="ajax" action="reservationS.jsp">
            
            <div id="test2" align="center">
                <br><br><br>
<select name="nht" id="nhtl1" style="width: 30%" onchange="afficher()"><option>choiser un hotel</option><%while(rs3.next()){%><option><%=rs3.getObject(2)%></option><%}%> </select>
<h2>Date de reservation:</h2><input type="text" name="daters" value="<%=sd%>" style="width: 20%"/>
           
           <pre>
<h2> date debut :         date fin :</h2> <input type="date" id="datdbrs"   name="datersd" value="jj/mm/aaaa" style="width: 20%" onchange="indique()"/> <input type="date" id="datfnrs" name="datersf" value="jj/mm/aaaa" style="width: 20%"/>
           </pre>
           <pre> <h2>chambres:      personnes:</h2><select name="nbrch" id="nbrch"size="1" style="width:10%"><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7+</option></select>      <select name="nbrpers" size="1" style="width: 10%"> <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option> </select>
          </pre>
           <%--<div id="chbr"></div><br>--%>
          <div id="tr"><pre> <input type="text" name="trif" id="trf" value="trife  à DH" style="width: 15%"/></pre></div>
          <pre> <input type="submit" name="b1" value="reserver"/> <input type="submit" name="b1" value="annuler"/> </pre>
           <input type="hidden" name="codclt" value="<%=scodc%>"/>

      </div>
           </form>
    </body>
    <%

    }catch(Exception ex){
        out.println(ex.getMessage());
        }

    %>
</html>


