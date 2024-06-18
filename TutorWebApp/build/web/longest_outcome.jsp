<%-- 
    Document   : longest_outcome
    Created on : Jun 12, 2024, 12:26:34 PM
    Author     : USER
--%>

<%@page import="za.ac.tut.model.entities.Modules"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Tutor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Longest Serving Tutor Page</title>
    </head>
    <body>
        <h1>Longest Serving Tutor</h1>
        <%
            Tutor t = (Tutor)request.getAttribute("t");
            String image = "data:image;base64,"+ Base64.getEncoder().encodeToString(t.getImage());
            
        %>
        <table>
            <tr>
                <td>Profile picture:</td>
                <td><img src="<%=image%>" width="98px" height="98px" alt="tutor"></td>
            </tr>
            <tr>
                <td>Id:</td>
                <td><%=t.getId()%></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%=t.getName()%></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><%=t.getAge()%></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%=t.getGender()%></td>
            </tr>
            <tr>
                <td>Module(s) supporting:</td>
                <%
                    List<Modules> m = t.getModules();
                    String[] mod = new String[m.size()];
                    
                    for(int i = 0 ; i < m.size();i++)
                    {
                        mod[i] = m.get(i).getModule();
                    }
                    String modules =  String.join(", ", mod);
                    
                %>
                <td><%=modules%></td>
            </tr>
            <tr>
                <td>Hire Date</td>
                <td><%=t.getHireDate()%></td>
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
