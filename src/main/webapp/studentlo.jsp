
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>User Login </title>
    <link rel="stylesheet" href="/css/Home.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
        body {
            background-image: url("images/user.jpg");
        }
    </style>

</head>

<body>
    <div class="header">
        <div class="container header_conatiner">
            <div class="logo" style="padding-left:20px;">
                PlacementCell
            </div>
            <div>
                <ul class="nav-area" style="padding-right:15px;">
                    <li><a href="/">Home</a></li>
                    <li><a href="/loginas">Login</a></li>
                    <li><a href="#contact">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div>


<div class="content" id="loginas" style="padding-top: 5px;">

    <br>
    <header>Student</header>
    
                    <c:if test="${not empty message}">
                    <p class="error-message"><c:out value="${message}" /></p>
                </c:if>
    <br>

    <form action="checkstudentlogin" method="post">
        <!-- Corrected input names to match controller parameters -->
        <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" name="studentid" required placeholder="Student ID">
        </div>
        <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" name="studentpassword" class="pass-key" required placeholder="Password">
        </div>
        <br>
        <div style="background-color: blue; text-align: center;">
            <input type="submit" value="LOGIN" style="color: white; background: none; border: none; font-size: 18px; cursor: pointer; padding: 10px 20px;">
        </div>
    </form>

    <div class="signup" style="text-align: center; margin-top: 10px;">
        Don't have an account?
        <a href="addstudent" style="color: blue; text-decoration: underline;">Signup Now</a>
    </div>
</div>


    <div style="padding-top:600px;">
        <div class="footer" id="contact">
            <div class="container footer_container">
                <div class="footer_child footer_child_1">
                    <h1 class="footer_logo">PlacementCell</h1>
                </div>
                <div class="footer_child">
                    <ul>
                        <li class="first" style="color:white;">Quick Links</li>
                        <li>
                            <a href="#home ">
                                <p style="color:white; ">Home</p>
                            </a>
                        </li>
                        <li>
                            <a href="#about ">
                                <p style="color:white; ">Aboutus</p>
                            </a>
                        </li>
                        <li>
                            <a href="#Home ">
                                <p style="color:white; ">Login</p>
                            </a>
                        </li>
                        <li>
                            <a href="#companies ">
                                <p style="color:white; ">companies</p>
                            </a>
                        </li>
                        <li>
                            <a href="#contact ">
                                <p style="color:white; ">Contact Us</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer_child ">
                    <ul>
                        <li class="first ">Contact Us</li>
                        <li>29th Street, plot 234 washingTon,USA
                        </li>
                        <li>5647839233</li>
                        <li>info@placementteam.com</li>
                    </ul>
                </div>
                <div class="footer_child footer_child_4 ">
                    <div class="container social_container ">


                        <a href="https://www.facebook.com/ ">
                            <div class="social_items si1 "></div>
                            <br> </a>

                        <a href="https://www.google.com/ ">
                            <div class="social_items si2 "></div>
                            <br>
                        </a>

                        <a href="https://www.instagram.com/ ">
                            <div class="social_items si3 "></div>
                            <br>
                        </a>


                        <a href="https://www.linkedin.com/ ">
                            <div class="social_items si4 "></div>
                            <br>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

</html>

</html>