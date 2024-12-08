<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7fa;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 30px;
            padding-left: 15%; /* Adjust this value to shift content further right */
        }

        .welcome-message {
            font-size: 24px;
            font-weight: bold;
            color: #343a40;
            align-items: center;
        }

        .dashboard-card {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: center;
        }

        .dashboard-card h4 {
            color: #495057;
        }

        .dashboard-card i {
            font-size: 36px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .card-title {
            font-size: 18px;
            font-weight: 600;
        }

        .footer {
            text-align: center;
            padding: 20px;
            font-size: 14px;
            color: #6c757d;
        }

        .card-container {
            display: flex;
            justify-content: flex-start; /* Align cards to the left inside the container */
            flex-wrap: wrap;
        }

        .card-container .card {
            flex: 1 1 30%;
            margin: 10px;
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="container">
        <div class="welcome-message">
            Welcome, <%= a.getUsername() %>!
        </div>

        <div class="card-container">
            <!-- Students Count Card -->
            <div class="card dashboard-card">
                <i class="fas fa-users"></i>
                <h4 class="card-title">Number of Students</h4>
                <p class="display-4"><c:out value="${studentcount}"></c:out></p>
            </div>

            <!-- Jobs Count Card -->
            <div class="card dashboard-card">
                <i class="fas fa-briefcase"></i>
                <h4 class="card-title">Number of Jobs</h4>
                <p class="display-4"><c:out value="${jobcount}"></c:out></p>
            </div>

            <!-- Companies Count Card -->
            <div class="card dashboard-card">
                <i class="fas fa-building"></i>
                <h4 class="card-title">Number of Companies</h4>
                <p class="display-4"><c:out value="${ccount}"></c:out></p>
            </div>
        </div>

        <div class="card-container">
            <!-- HireRate Card -->
            <div class="card dashboard-card">
                <i class="fas fa-percent"></i>
                <h4 class="card-title">Hire Rate</h4>
                <p class="display-4"><c:out value="${hirerate}"></c:out></p>
            </div>
        </div>

    </div>

    

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
</body>

</html>
