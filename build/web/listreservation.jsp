<%-- 
    Document   : listreservation
    Created on : 7 juin 2013, 11:08:43
    Author     : Administrateur
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="packconnection.connections"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
    ResultSet rs=null;
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    String sd1=null;
    String sd2=null;
    String sd3=null;
    Connection con;
    Statement st;

%>
<html>
    <head>

        
        <%
try{
   con=connections.coneecter();
   st=con.createStatement();
   String scodepr=request.getParameter("codepr");
   rs=st.executeQuery("select r.*,c.nom,c.prenom from reservations r,personnel p,clients c"
            + " where p.code_person="+scodepr
            +" and r.code_hotel=p.code_hotel"
            + " and c.code_client=r.code_client"
            );
     

%>
        <title>liste reservation</title>
    </head>
    <body>
        <form>
            <div align="center" style=" background-color: aliceblue; color: burlywood; font-size: large"> la liste des réservations</div>
            <pre>


            </pre>
            <table border="1" align="center" style="background-color: aliceblue">
                <tr style="color: cadetblue">
                    <td width="10%">code reservation</td>
                    <td width="15%"> date reservation</td>
                    <td>date debut</td>
                    <td> date fin</td>
                    <td> client</td>
                    <td>nombre chanbre</td>
                    <td> nombre des accompagnants</td>
            </tr>
            <%while(rs.next()){
             sd1=sdf.format(rs.getObject(2));
             sd2=sdf.format(rs.getObject(3));
             sd3=sdf.format(rs.getObject(4));
            %>
            <tr style="color: darkkhaki">
                    <td><%=rs.getObject(1)%></td>
                    <td><%=sd1%></td>
                    <td><%=sd2%></td>
                    <td><%=sd3%></td>
                    <td><%=rs.getObject(9)%>  <%=rs.getObject(10)%></td>
                    <td><%=rs.getObject(6)%></td>
                    <td><%=rs.getObject(7)%></td>
            </tr>
            <%}%>
        </table>
<%  }catch(Exception ex){
    out.println(ex.getMessage());
    }

con.close();
rs.close();
st.close();
%>
        </form>
    </body>
</html>
