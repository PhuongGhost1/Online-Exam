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
        <style><%@include file="/CSS/loginstyle.css" %></style>
    </head>
    <body>
        
        
        <div id="page-wrapper">

            <div id="page" class="container-fluid mt-0">
                <div id="page-content" class="row">
                    <div id="region-main-box" class="col-12">
                        <section id="region-main" class="col-12" aria-label="Content">
                            <span class="notifications" id="user-notifications"></span>
                            <div role="main"><span id="maincontent"></span><div class="my-1 my-sm-5"></div>
                                <div class="row justify-content-center">
                                <div class="col-xl-6 col-sm-8 ">
                                <div class="card">
                                    <div class="card-block">
                                            <h1 class="h2 card-header text-center">
                                                <span class="sr-only">FPT University ***** Da Nang ***** LMS: Log in</span>
                                                <img src="images/logo.png" class="img-fluid" alt="">
                                            </h1>
                                        <div class="card-body">
                                            <%
                                                String errorMessage = (String) request.getAttribute("errorMessage");
                                                if (errorMessage != null) {
                                            %>
                                                <div class="alert alert-danger">
                                                    <%= errorMessage %>
                                                </div>
                                            <%
                                                }
                                            %>
                                            <div class="row justify-content-md-center">
                                                <div class="col-md-5">
                                                    <form class="mt-3" action="LoginServlet" method="post" id="login">
                                                        <input id="anchor" type="hidden" name="anchor" value="">
                                                        <input type="hidden" name="logintoken" value="kZNtMvxLy8Hm4nA0GWUO3MDJ5tsbu9w8">
                                                        <div class="form-group">
                                                            <a class="sr-only" href="#" data-tooltip="Username or Password must contain 5 letters">
                                                           
                                                                <input type="text" name="username" id="username" class="form-control" value="" placeholder="Username" autocomplete="username">
                                                            </a>
                                                            
                                                        </div>
                                                        <div class="form-group">
                                                            <a class="sr-only" href="#" data-tooltip="Username or Password must contain 5 letters">
                                                           
                                                                <input type="password" name="password" id="password" value="" class="form-control" placeholder="Password" autocomplete="current-password">
                                                            </a>
                                                            
                                                        </div>
                                                        <div class="rememberpass mt-3">
                                                            <input type="checkbox" name="rememberusername" id="rememberusername" value="1">
                                                            <label for="rememberusername">Remember username</label>
                                                        </div>

                                                        <button type="submit" class="btn btn-primary btn-block mt-3" id="loginbtn">Log in</button>
                                                    </form>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="forgetpass mt-3">
                                                        <p><a href="forgot.jsp">Forgotten your username or password?</a></p>
                                                    </div>

                                                    <div class="mt-3">
                                                        Cookies must be enabled in your browser
                                                        <a class="btn btn-link p-0" href="#"
                                                            data-tooltip="

                                                            The essential one is the session cookie, usually called MoodleSession. You must allow this cookie in your browser 
                                                            to provide continuity and to remain logged in when browsing the site. When you log out or close the browser, this cookie 
                                                            is destroyed (in your browser and on the server).

                                                            The other cookie is purely for convenience, usually called MOODLEID or similar. It just remembers your username in the 
                                                            browser. This means that when you return to this site, the username field on the login page is already filled in for you. 
                                                            It is safe to refuse this cookie - you will just have to retype your username each time you log in.
                                                            ">  👽 
                                                            
                                                        </a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                </div>
                            </div>

                        </section>
                    </div>
                </div>
            </div>
        <!--    <footer id="page-footer" class="py-3 bg-dark text-light">
                <div class="container">
                    <div id="course-footer"></div>


                    <div class="logininfo">You are not logged in.</div>
                    <div class="homelink"><a href="https://lmsdn.fpt.edu.vn/">Home</a></div>
                    <a href="https://download.moodle.org/mobile?version=2021051711.03&amp;lang=en&amp;iosappid=633359593&amp;androidappid=com.moodle.moodlemobile">Get the mobile app</a>


                </div>
            </footer>-->
        </div>
        <script> <%@include file="/javascript/script.js" %></script>
    </body>
</html>

