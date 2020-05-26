<%-- 
    Document   : client
    Created on : 2 juin 2013, 14:40:58
    Author     : Administrateur
--%>


<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
   ResultSet rs=null;
      Connection con;
           Statement st;
%>

<html>
    <head>
        <style type="text/css">
.st1 {
	font-family: "Times New Roman", Times, serif;
	color: darkgray ;
        background-color: blanchedalmond ;
        font-size: 30px;
	text-decoration: blink;
}
</style>
        
        <title>Page client</title>
        <style type="ttext/css">
               #div1{

                background-image: url("vill.jpg");  
                width: 40%;
                margin-left: 35%;
                margin-right: 20;
                padding-bottom: 60%;}


        </style>
<% try{
           con=connections.coneecter();
           st=con.createStatement();
            //rs=st.executeQuery("select code_client_seq.nextval from dual");
           // rs.next();
            }catch(Exception ex){
                out.println(ex.getMessage());
             }
%>
    </head>
    <body>

        <form style="background-color: buttonface" method="post" action="clientS.jsp">
            <%--<div  align="center" style="color: darkgray ; background-color: blanchedalmond ; font-size: 30px">service clients</div>--%>
            <div  align="center" class="st1"><h3  > Bienvenu</h3></div>
            <div  align="left"  style="background-image: url(images/hot.jpg);   width: 50%; margin-left: 7%; margin-right: 20%; padding-bottom: 10%">
            <b><b>Inscription</b></b><br>pour crée une resérvation,<br> doit saisis toute les informations.<br> C’est gratuit.
            <%--<div style="background-color:azure; font-size: 40%;right:100px; width: 30%; padding-bottom:70%; margin-left:70%;" align="left"><img src="hot.jpg" width="20%" height="20%"/></div>--%>
            <pre>

     <input type="text" name="codec" value="code" style="width: 25%;right: 1%;color: blue"/>  <input type="text" name="cinc" value="CIN" style="width: 25%;right: 1%;color: blue"/>

     <input type="text" name="nomc" value="Nom" style="width: 25%;right: 1%;color:blue"/>  <input type="text" name="prenomc" value="Prenom" style="width: 25%;right: 1%;color: blue"/>

        <b> Adresse eléctronique :</b>
     <input type="text" name="emailc" value="email_cleint@hotmail.com/fr" style="width: 40%;right: 1%;color: blue"/>
     <b> num telephone :</b>
     <input type="text" name="telec" value="00.00.00.00.00" style="width: 20%;right: 2%;color: blue"/>
     <b>Sexe</b> : <input type="radio" name="sexec" value="H"/><b style="color: brown">Homme</b> <input type="radio" name="sexec" value="F"/><b style="color: brown">Femme</b>



              <input type="submit" name="accepter" value="J'Accpte" style="background-color: chartreuse"/>
            </pre>
     </div>
<!--
con.close();
rs.close();
st.close();
-->
        </form>
    </body>
</html>