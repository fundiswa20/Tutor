<%-- 
    Document   : female_outcome
    Created on : Jun 12, 2024, 11:59:32 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number of Female Tutors Page</title>
    </head>
    <body>
        <h1>Number of Female Tutors</h1>
        <%
            Long num = (Long)request.getAttribute("females");
            
        %>
        <p>
            There are <b><u><%=num%></u></b> female tutors. 
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
