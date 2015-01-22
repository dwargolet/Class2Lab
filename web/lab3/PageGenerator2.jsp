<%-- 
    Document   : PageGenerator2
    Created on : Jan 22, 2015, 2:05:55 PM
    Author     : dworgolet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String color = request.getParameter("color");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color:<%= color %>">This is a JSP table</h1>
        
        <table border="1">
        <%
            for(int row = 0; row < 3; row++){                
                out.println("<tr>");                
                for(int col=0; col < 3; col++){
                    out.println("<td>row" + (row+1) + ",col" + (col+1) + "</td>");
                }               
                out.println("</tr>");        
        %>          
        </table>
        
        
        
<!--        
            <tr>
                <td></td>
                <td></td>
                <td></td>                
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>                
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>                
            </tr>       
        -->
        
        
    </body>
</html>
