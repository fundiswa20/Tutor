<%-- 
    Document   : update
    Created on : Jun 12, 2024, 11:23:45 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update profile picture Page</title>
    </head>
    <body>
        <h1>Update profile picture</h1>
        <p>
            Please enter your id and upload another pic:
        </p>
        <form action="TutorServlet.do" method="POST" enctype="multipart/form-data">
            <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id" required=""></td>
            </tr>
            <tr>
                <td>Upload image:</td>
                <td><input type="file" name="image" required=""></td>
            </tr>
            <tr>
                    <td><input type="hidden"  name="op" value="2"></td>
                    <td><input type="submit" value="UPDATE" ></td>
            </tr>
        </table>
        </form>
        
    </body>
</html>
