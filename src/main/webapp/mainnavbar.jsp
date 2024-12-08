<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main Navbar</title>
    <link rel="stylesheet" type="text/css" href="/css/navbar.css">
</head>
<body>

<nav>
    <ul>
        <li><a href="/">Home</a></li>
        <li><a href="mainabout">About</a></li>
        <li><a href="maincontact">Contact Us</a></li>
        <li><a href="addstudent">Student Registration</a></li>
        
        <!-- Login Dropdown -->
        <li class="dropdown">
            <a href="#" class="dropbtn">Login</a>
            <div class="dropdown-content">
                <a href="studentlogin">Student Login</a>
                <a href="companylogin">Company Login</a>
                <a href="adminlogin">Admin Login</a>
            </div>
        </li>
    </ul>
</nav>


</body>
</html>
