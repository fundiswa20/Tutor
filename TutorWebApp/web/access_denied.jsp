<%-- 
    Document   : access_denied
    Created on : Jun 12, 2024, 12:50:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authorization Page</title>
    </head>
    <body>
        <h1 style="color: red">ACCESS DENIED</h1>
        <p>
            You are not authorized to access this page!!!!
        </p>
            <p>
                Click <a href="menu.jsp">here</a> to go to menu page or
                <a href="index.html">here</a> to go to home page 
            </p>
            
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
