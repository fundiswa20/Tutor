<%-- 
    Document   : register
    Created on : Jun 12, 2024, 1:08:36 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register</h1>
        <p>
            Enter the following details:
        </p>
        <form action="TutorServlet.do" method="POST" enctype="multipart/form-data">
            
            <table id="table">
                <tr>
                    <td>Profile image:</td>
                    <td><input type="file" name="image" required=""></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age" required=""></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                <tr id="row">
                    <td>Module(s) supporting:</td>
                    <td><input type="text" name="module" required=""></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><button onclick="addModule()">Add module</button></td>
                    <td><input type="hidden"  name="op" value="1"></td>
                    <td><input type="submit" value="REGISTER" ></td>
                </tr>
            </table>
        </form>
        
        <script>
            function addModule() {
                var table = document.getElementById('table');
                var row = document.getElementById('row').cloneNode(true);

                //remove tr attribute
                row.removeAttribute('id');

                //get input
                var input = row.querySelector('input[type="text"]');

                //remove tr attribute
                input.removeAttribute('id');
                //set value of input to an empty string
                input.value = '';

                //add new row
                table.appendChild(row);
            }
        </script>
    </body>
</html>
