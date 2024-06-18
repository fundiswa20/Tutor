<%-- 
    Document   : register_outcome
    Created on : Jun 12, 2024, 10:55:36 AM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Modules"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Tutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Outcome Page</title>
    </head>
    <body>
        <h1>Register Outcome</h1>
        <%
            Tutor tutor = (Tutor)request.getAttribute("tutor");
            String image = "data:image;base64," + Base64.getEncoder().encodeToString(tutor.getImage());
        %>
        <p>
            Tutor registered successfully!!
        </p>
        <table>
            <tr>
                <td>Profile picture:</td>
                <td><img src="<%=image%>" width="98px" height="98px" alt="tutor"></td>
            </tr>
            <tr>
                <td>Id:</td>
                <td><%=tutor.getId()%></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%=tutor.getName()%></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><%=tutor.getAge()%></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%=tutor.getGender()%></td>
            </tr>
            <tr>
                <td>Module(s) supporting:</td>
                <%
                    List<Modules> m = tutor.getModules();
                    String[] mod = new String[m.size()];
                    
                    for(int i = 0 ; i < m.size();i++)
                    {
                        mod[i] = m.get(i).getModule();
                    }
                    String modules = String.join(", ", mod);
                %>
                <td><%=modules%></td>
            </tr>
        </table>
            <p>
                Click <a href="menu.jsp">here</a> to go to menu page or
                <a href="index.html">here</a> to go to home page 
            </p>
            
            <p>
                <a href="LogoutServlet.do">LOGOUT</a>
            </p>
    </body>
</html>
