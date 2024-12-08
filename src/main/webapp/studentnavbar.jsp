<%@ page import="com.placement.project.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Student st = (Student) session.getAttribute("student");
    if (st == null) {
        response.sendRedirect("studentsessionexpiry.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuickHire Navigation</title>
    <link rel="stylesheet" href="/css/Sidenavbar.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav>
        <div class="logo-container">
            <img src="university.png" alt="Logo Icon" class="logo-icon">
            <h1 class="logo-text">QuickHire</h1>
        </div>
        <ul>
            <li><a href="studenthome" data-tooltip="Go to Home"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="studentviewalljobs" data-tooltip="View Available Jobs"><i class="fas fa-briefcase"></i> View Jobs</a></li>
            <li><a href="studentviewappliedjobs" data-tooltip="Check Applied Jobs"><i class="fas fa-file-alt"></i> Applied Jobs</a></li>
            <li><a href="studentprofile" data-tooltip="Check Applied Jobs"><i class="fas fa-file-alt"></i> Student Profile</a></li>
            <li><a href="studentlo" data-tooltip="End Session"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </nav>

   

    <script >
 // File: sidenavbar.js

 // Add a dynamic hover animation to links
 const links = document.querySelectorAll('nav ul li a');

 links.forEach(link => {
     link.addEventListener('mouseover', () => {
         link.style.transform = 'scale(1.1)';
     });
     link.addEventListener('mouseout', () => {
         link.style.transform = 'scale(1)';
     });
 });

    </script>
</body>
</html>
