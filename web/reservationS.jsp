<%--
    Document   : reservationS
    Created on : 7 juin 2013, 22:26:02
    Author     : Administrateur
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
      Connection con;
      Statement st1;
      Statement st2;
      Statement st3;
      Statement st4;
      Statement st5;
      Date d1,d2;
      ResultSet rs1=null;
      ResultSet rs2=null;
       ResultSet rs3=null;
        String scodc=null;
      SimpleDateFormat sdfm=new SimpleDateFormat("dd/MM/yyyy");

%>
<html>
    <head>
       <title>JSP Page</title>
    </head>
    <body>
<%
     
       try{
          int i;
          con=connections.coneecter();
          st1=con.createStatement();
          String actionn=request.getParameter("b1");
         if(actionn!=null){
           
          if(actionn.equals("annuler")){
              String scodec=request.getParameter("codclt");
              
              st1.executeUpdate("delete clients where code_client="+scodec);
          }
          if(actionn.equals("reserver")){
              
             String sdaters=request.getParameter("daters");
             String sdatersd=request.getParameter("datersd");
             String sdatersf=request.getParameter("datersf");
             scodc=request.getParameter("codclt");
             String snbrpers=request.getParameter("nbrpers");
             String snbrch=request.getParameter("nbrch");
             String snht=request.getParameter("nht");
             
             st2=con.createStatement();
             st4=con.createStatement();
             st3=con.createStatement();
             st5=con.createStatement();

             rs1=st3.executeQuery("select code_hotel from hotels where nom_hotel='"+snht+"'");
             rs1.next();
                     
             rs2=st4.executeQuery("select code_reservation_seq.nextval from dual");
             rs2.next();
            
             st1.executeUpdate("insert into reservations values("+rs2.getInt(1)+",'"+sdaters+"','"+sdatersd+"','"
                  +sdatersf+"',"+scodc+","+snbrpers+","+snbrch+","+rs1.getObject(1)+")");

             rs3=st5.executeQuery("select num_chambre from chambres where code_client is null");

              int nch=Integer.parseInt(snbrch);
              
              for(i=1;i<=nch;i++){
                rs3.next();
                st2.executeUpdate("update chambres set code_client="+scodc+" where num_chambre="+rs3.getObject(1));
                }

           response.sendRedirect("etat_finale_reservation.jsp?codec="+scodc+"&coderes="+rs2.getInt(1));

            
            // out.println("codeh"+rs1.getObject(1)+"      /dr:"+sdaters+"      /dd:"+sdatersd+"    /df:"+sdatersf+
              //      "    /codec:"+scodc+"    /np:"+snbrpers+"    /nch:"+snbrch+"    /nh:"+snht+" /coder"+rs2.getInt(1));

          }}
       }catch(Exception ex){
            response.sendRedirect("reservation.jsp?codclt="+scodc);
           //out.println(ex.getMessage());
           
            }

%>
    </body>
</html>
