<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Applicant's Status</title>
    <link type="text/css" rel="stylesheet" href="css/companyviewall.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #f4f7fc;
            font-size: 16px;
            color: #333;
            line-height: 1.5;
        }

        body {
            margin-top: 80px; /* Adjust this margin if needed based on the navbar height */
        }

        /* Table container and centering */
        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            border-radius: 10px;
        }

        /* Table header */
        table th {
            background-color: #0073e6;
            color: #ffffff;
            padding: 12px;
            text-align: center;
            font-weight: 600;
        }

        /* Table rows */
        table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #eaf4ff;
        }

        /* Action buttons styling */
        .action-button {
            padding: 8px 15px;
            border-radius: 5px;
            color: white;
            font-size: 14px;
            display: inline-block;
            text-align: center;
            text-decoration: none;
            margin: 0 5px;
            cursor: pointer;
        }

        .action-button.accept {
            background-color: #28a745;
        }

        .action-button.reject {
            background-color: #dc3545;
        }

        .action-button:hover {
            opacity: 0.8;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            table {
                font-size: 14px;
            }

            .action-button {
                padding: 6px 12px;
                font-size: 12px;
            }
        }

        @media (max-width: 576px) {
            .table-container {
                padding: 10px;
                width: 100%;
            }

            table {
                font-size: 12px;
            }

            .action-button {
                padding: 5px 10px;
                font-size: 10px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="companynavbar.jsp" %>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Applicant ID</th>
                    <th>Job Seeker Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${applicants}" var="app">
                    <tr>
                        <td><c:out value="${app.applicantId}" /></td>
                        <td><c:out value="${app.jobSeekerEmail}" /></td>
                        <td>
                            <a href='<c:url value="updatestatus?status=Accepted&jobid=${app.jobId}&applicantid=${app.applicantId}" />'
                               class="action-button accept">Accept</a>
                            <a href='<c:url value="updatestatus?status=Rejected&jobid=${app.jobId}&applicantid=${app.applicantId}" />'
                               class="action-button reject">Reject</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
