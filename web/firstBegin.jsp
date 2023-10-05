<%-- 
    Document   : firstBegin
    Created on : Sep 29, 2023, 2:07:11 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FPT University ***** Da Nang ***** LMS: Log in to the site</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="CSS/styleforindex.css"/>
    </head>
    <body>
        <div class="header">
            <center class="header-content">
                <div class="img-header">
                    <img src="images/logo.png" alt="Logo FPT"/>
                </div>

                <div class="Log-in">
                    <form action="LoginServlet" method="post">
                        <table>
                            <tr>
                                <th><input type="text" class="User" name="username" placeholder=" Username"/></th>
                            </tr>
                            <tr>
                                <th><input type="text" class="Pass" name="password" placeholder=" Password"/></th>
                            </tr>
                            <tr>
                                <th><input type="submit" class="type-submit" value="Log in"/></th>
                            </tr>
                        </table>
                    </form>
                </div> 

            </center>    
        </div>
    </body>
</html>

