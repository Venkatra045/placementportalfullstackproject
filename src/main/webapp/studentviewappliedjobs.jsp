<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Applied Jobs</title>
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
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Content Wrapper */
        .table-container {
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            overflow-x: auto;
        }

        h2 {
            font-size: 2.5rem;
            color: #007bff;
            font-weight: 700;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        .background-text {
            font-size: 1.2rem;
            color: #6c757d;
            margin-bottom: 30px;
            font-weight: 500;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        thead {
            background: linear-gradient(90deg, #007bff, #00c6ff);
            color: #ffffff;
            text-transform: uppercase;
            font-size: 1rem;
            font-weight: 700;
        }

        table th,
        table td {
            padding: 12px 20px;
            text-align: left;
            font-size: 1rem;
            border-right: 1px solid #ddd;
        }

        table th:last-child, table td:last-child {
            border-right: none;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: rgba(0, 123, 255, 0.1);
        }

        .no-records {
            text-align: center;
            font-size: 1.2rem;
            color: #e74c3c;
            font-weight: 600;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .table-container {
                padding: 1.5rem;
            }

            table th,
            table td {
                font-size: 0.9rem;
                padding: 10px;
            }
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

        body {
            animation: fadeIn 1.2s ease;
        }
</style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<div class="table-container">
    <h2>Applied Jobs</h2>
    <div class="background-text">Here are the jobs you have applied for.</div>

    <table>
        <thead>
            <tr>
                <th>Applicant ID</th>
                <th>Applied Time</th>
                <th>Job Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${appliedlist}" var="app">
                <tr>
                    <td><c:out value="${app.applicantId}"></c:out></td>
                    <td><c:out value="${app.appliedTime}"></c:out></td>
                    <td><c:out value="${app.jobStatus}"></c:out></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <c:if test="${empty appliedlist}">
        <div class="no-records">You haven't applied for any jobs yet.</div>
    </c:if>
</div>

</body>
</html>
