<%-- 
    Document   : avg_outcome
    Created on : Jun 12, 2024, 12:23:47 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Average Age Outcome  Page</title>
    </head>
    <body>
        <h1>Average Age Outcome</h1>
        <%
            Double age= (Double)request.getAttribute("age");
            
        %>
        <p>
            The average age of the tutors is <b><u><i><%=age%></i></u></b>
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
