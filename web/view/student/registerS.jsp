<%-- 
    Document   : addnewS
    Created on : Sep 17, 2023, 7:57:13 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Form</title>
    </head>
    
    <body>
        <section>
            <h1>Student Register</h1>

            <form action="StudentRegiServlet" method="post">
                <table>
                    <tr><td>ID</td><td><input type="text" name="sID"></td></tr>
                    <tr><td>Name</td><td><input type="text" name="sName"></td></tr>
                    <tr><td>Email</td><td><input type="text" name="sEmail" ></td></tr>
                    <tr><td>Birth</td><td><input type="text" name="sBirth" ></td></tr>
                    <tr><td>Gender</td><td><input type="text" name="sGender" ></td></tr>
                    <tr><td>Password</td><td><input type="password" name="sPass"></td></tr>
                </table>    
                <HR><input type="submit" value="Register"/>
            </form>
        </section>
    </body>
</html>
