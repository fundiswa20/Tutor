<%-- 
    Document   : menu
    Created on : Jun 12, 2024, 12:35:58 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <p>
            Please choose one of the following options:
        </p>
        <ul>
         
            <li> 
                <a href="register.jsp">Register tutor</a>
            </li>
            <li>      
                <a href="update.jsp">Update profile picture</a>
            </li><br>
            <form action="CoordinatorServlet.do" method="POST">
                <input type="hidden" name="op" value="3">
                <button type="submit">Number of male tutors</button>
            </form>
            <br>
            <form action="CoordinatorServlet.do" method="POST">
                <input type="hidden" name="op" value="4">
                <button type="submit">Number of female tutors</button>
            </form>
            <br>
            <form action="CoordinatorServlet.do" method="POST">
                <input type="hidden" name="op" value="5">
                <button type="submit">Display youngest tutor</button>
            </form>
            <br>

            <form action="CoordinatorServlet.do" method="POST">
                <input type="hidden" name="op" value="6">
                <button type="submit">Display average age of tutors</button>
            </form>
            <br>

            <form action="CoordinatorServlet.do" method="POST">
                <input type="hidden" name="op" value="7">
                <button type="submit">Longest serving tutor</button>
            </form>
           
            
        </ul>
    </body>
</html>
