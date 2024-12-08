<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #ffafbd, #ffc3a0);
            color: #444;
            line-height: 1.6;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .table-container {
            width: 100%;
            max-width: 90%;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .table-container h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 2rem;
            font-weight: 600;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto;
            margin-top: 20px;
            background: #ffffff;
            border-radius: 10px;
            overflow: hidden;
        }

        table th, table td {
            padding: 15px 20px;
            text-align: left;
            border: 1px solid #ddd;
            font-size: 1.1rem;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        table th {
            background-color: #2980b9;
            color: #ffffff;
            text-transform: uppercase;
            font-weight: bold;
        }

        table tbody tr:nth-child(even) {
            background: #f7f7f7;
        }

        table tbody tr:hover {
            background: #f1f1f1;
            transform: translateY(-2px);
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .table-container a {
            display: inline-block;
            font-size: 1.1rem;
            text-decoration: none;
            text-align: center;
            width: 35px;
            height: 35px;
            line-height: 30px;
            border-radius: 5px;
            margin: 0 5px;
            transition: all 0.3s ease;
        }

        .table-container a.accept {
            background-color: #28a745;
            color: #fff;
            border: 1px solid #28a745;
        }

        .table-container a.accept:hover {
            background-color: #218838;
        }

        .table-container a.reject {
            background-color: #dc3545;
            color: #fff;
            border: 1px solid #dc3545;
        }

        .table-container a.reject:hover {
            background-color: #c82333;
        }

        @media (max-width: 768px) {
            table th, table td {
                font-size: 0.9rem;
                padding: 10px;
            }

            .table-container {
                padding: 10px;
            }
        }
    </style>
</head>

<body>

    <%@ include file="adminnavbar.jsp" %>

    <div class="table-container">
        <h2>Student List</h2>

        <c:if test="${empty studentlist}">
            <p class="no-records">No students found.</p>
        </c:if>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Department</th>
                    <th>Contact</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${studentlist}" var="student">
                    <tr>
                        <td><c:out value="${student.id}"></c:out></td>
                        <td><c:out value="${student.name}"></c:out></td>
                        <td><c:out value="${student.dob}"></c:out></td>
                        <td><c:out value="${student.email}"></c:out></td>
                        <td><c:out value="${student.gender}"></c:out></td>
                        <td><c:out value="${student.department}"></c:out></td>
                        <td><c:out value="${student.contact}"></c:out></td>
                        <td><c:out value="${student.studentstatus}"></c:out></td>
                        <td>
                            <a href='<c:url value="updatestudentstatus?status=APPROVED&stid=${student.id}"></c:url>' class="accept">✔</a>
                            <a href='<c:url value="updatestudentstatus?status=REJECTED&stid=${student.id}"></c:url>' class="reject">❌</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>

</html>
