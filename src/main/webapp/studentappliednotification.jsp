<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Status</title>
<style>
    /* Reset and base styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background: linear-gradient(135deg, #eaf4ff, #f8f9fc);
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    /* Message Container */
    .message-container {
        background-color: #ffffff;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        padding: 30px;
        border-radius: 15px;
        width: 100%;
        max-width: 600px;
        text-align: center;
        margin: 20px auto;
        animation: fadeIn 1.2s ease;
    }

    h2 {
        font-size: 2rem;
        color: #007bff;
        font-weight: 700;
        margin-bottom: 20px;
    }

    .message-text {
        font-size: 1.2rem;
        padding: 15px;
        border-radius: 10px;
        font-weight: 500;
        margin: 10px 0;
    }

    /* Success Message */
    .message-success {
        background-color: #d4edda;
        color: #155724;
        border: 1px solid #c3e6cb;
    }

    /* Error Message */
    .message-error {
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
    }

    /* Animation for page load */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Navbar Styling */
    nav {
        background-color: #34495e;
        padding: 1rem;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        text-align: center;
        color: #ecf0f1;
        font-size: 1.2rem;
    }
</style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<div class="message-container">
    <h2>Application Status</h2>
    <div class="message-text <c:choose>
        <c:when test="${message == 'Application successful!'}">message-success</c:when>
        <c:otherwise>message-error</c:otherwise>
    </c:choose>">
        <c:out value="${message}"></c:out>
    </div>
</div>

</body>
</html>
