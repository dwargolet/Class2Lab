<%-- 
    Document   : result
    Created on : Jan 26, 2015, 11:35:07 AM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Welcome Response</title>
    </head>
    <body>
        <h3 align="center"><%
            Object o = request.getAttribute("message");                                    
            out.println(o);
        %>
        </h3>
        <p><a href="index.html">Back</a></p>
    </body>
</html>
