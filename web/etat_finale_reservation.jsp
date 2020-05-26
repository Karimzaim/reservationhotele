<%-- 
    Document   : etat_finale_reservation
    Created on : 10 juin 2013, 22:01:14
    Author     : karim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%
 String scodec=request.getParameter("codec");
 String scoderes=request.getParameter("coderes");
%>
    </head>
    <body style="background-color: bisque">
        <pre>
    <div style=" margin-left: 20%; margin-right:20%; width: 50%; background-color: burlywood" >
        <p>
          vorte reservation a etre créer sur compte créer avec :
          un code clients <%=scodec%>  et code de reservation <%=scoderes%>.
          pour vous modifier la date de reservation ou anuler:
          <a href="mes_a_joure_reservation.jsp?codcl=<%=scodec%>&codrs=<%=scoderes%>"> modifier la reservation</a>
        </p>
        <pre>
<img src="images/im1.jpg" width="20%" height="30%" /><a href="http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html"><h4>hothjels a Marrakech</h4></a>
<img src="images/Capture1.PNG" width="20%" height="30%" /><a href="http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html"><h4>Annakhil a Rabat</h4></a>
<img src="images/Capture2.jpg" width="20%" height="30%" /><a href="http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html"><h4>Atlantic a Agadir</h4></a>
<img src="images/Capture3.jpg" width="20%" height="30%" /><a href="http://www.zoomsurmarrakech.com/hotels_a_marrakech_2.html"><h4>Atlantic a Agadir</h4></a>
        </pre>
        </div>
        </pre>
    </body>
</html>
