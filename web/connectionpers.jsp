<%-- 
    Document   : connectionpers
    Created on : 7 juin 2013, 12:06:16
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page de connection</title>
    </head>
    <body>
        <form method="post" action="connectionS.jsp">
             <p>saisir votre longin et mots de passe pour voire les reservation</p>
            <table align="left">
             <tr>
                    <th>login:</th>
                    <th> <input type="text" name="loginp" value=""/></th>
            </tr>
            <tr>
                    <th>mots de passe:</th>
                    <th> <input type="password" name="passep" value=""/></th>
            </tr>
            <tr>
               <th> <input type="submit" name="conneter" value="se connecter"/></th>
            </tr>
        </table>

        </form>
    </body>
</html>
