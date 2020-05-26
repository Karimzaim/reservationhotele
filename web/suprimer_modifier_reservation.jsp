<%-- 
    Document   : suprimer_modifier_reservation
    Created on : 12 juin 2013, 22:12:57
    Author     : karim
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!

      Connection con=connections.coneecter();
      Statement st1;
      Statement st2;
      Statement st3;
      Statement st4;
      Date d1,d2;
      ResultSet rs1=null;
      ResultSet rs2=null;
      SimpleDateFormat sdfm=new SimpleDateFormat("dd/MM/yyyy");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>modifier reservation</title>
    </head>
    <body>
<%
      int i;
              st1=con.createStatement();
              st2=con.createStatement();
               st3=con.createStatement();
                st4=con.createStatement();
            
       String actionn=request.getParameter("b1");
       try{

         if(actionn!=null){

          if(actionn.equals("suprimer")){
              String scodeclt=request.getParameter("codeclt");
              String scoderesvt=request.getParameter("coderesvt");
              
              st2.executeUpdate("delete reservations where code_reservation="+scoderesvt+" and code_client="+scodeclt);
              //st1.executeUpdate("delete clients where code_client="+scodeclt);
          }
          if(actionn.equals("modifier")){
             String scodeclt=request.getParameter("codeclt");
             String scoderesvt=request.getParameter("coderesvt");
             String sdateres=request.getParameter("dateres");
             String sdateresd=request.getParameter("dateresd");
             String sdateresf=request.getParameter("dateresf");
             String snbrperes=request.getParameter("nbrperres");
             String snbrchres=request.getParameter("nbrchres");

             st1.executeUpdate("update reservations set date_reservation='"+sdateres+"',date_debut_reservation='"+sdateresd
                     +"',date_fin_reservation='"+sdateresf+"',nbr_personne="+snbrperes+",nbr_chambre="+snbrchres
                     +"where code_reservation="+scoderesvt+" and code_client="+scodeclt);
             response.sendRedirect("etat_finale_reservation.jsp?codec="+scodeclt+"&coderes="+scoderesvt);
             //int nch=Integer.parseInt(snbrch);
            /* for(i=1;i<nch;i++){
             st2.executeUpdate("update chambres set code_clients="+scodc+" where code_client is null");
                }*/

         }}}catch(Exception ex){
              out.println(ex.getMessage());
              }

%>
    </body>
</html>
