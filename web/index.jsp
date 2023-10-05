<%-- 
    Document   : index
    Created on : Sep 16, 2023, 8:00:56 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FPT University ***** Da Nang ***** LMS: Choose your role</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style> <%@include file="/CSS/role.css"%> </style>
    </head>
    <body> 
        <div class="container">
            <div class="form-control">
                <h1>Choose your role</h1>
                <h5 class="text-danger" style="color: red; text-align: center;">----------------------</h5>
                <div class="text-content">
                    <p class="login-text" style="font-size: 20px">
                     You are...</p>
                </div>           
                
                <div id="socialLoginList">
                    <a href="firstBegin.jsp" class="input_type1"><img src="images/teacher.png" alt="Lecturer"></a>
                    <a href="firstBegin.jsp" class="input_type1"><img src="images/student-with-graduation-cap.png" alt="Student"></a>
                </div>    
            </div>        
        </div>
    </body>
</html>
