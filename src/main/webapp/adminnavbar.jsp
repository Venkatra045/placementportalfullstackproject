<%@ page import="com.placement.project.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionexpiry");
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
            <li><a href="adminhome" class="active" data-tooltip="Go to Admin Home"><i class="fas fa-tachometer-alt"></i> Admin Dashboard</a></li>
            <li><a href="addcompany" data-tooltip="Add a New Company"><i class="fas fa-building"></i> Add Company</a></li>
            <li><a href="viewallcompanies" data-tooltip="View All Companies"><i class="fas fa-briefcase"></i> View Companies</a></li>
            <li><a href="viewallstudents" data-tooltip="View All Students"><i class="fas fa-users"></i> View Students</a></li>
            <li><a href="AdminLogin" data-tooltip="Logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
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























