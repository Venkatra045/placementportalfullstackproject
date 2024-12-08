<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Jobs</title>
    <!-- Link to external CSS file -->
    <link type="text/css" rel="stylesheet" href="css/companyviewall.css">
</head>
<body>

<%@ include file="companynavbar.jsp" %>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Job ID</th>
                <th>Job Title</th>
                <th>Job Type</th>
                <th>Job Role</th>
                <th>Job Salary</th>
                <th>Job Requirements</th>
                <th>Education Qualifications</th>
                <th>Deadline</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${jobslist}" var="job">
                <tr>
                    <td><c:out value="${job.jobId}" /></td>
                    <td><c:out value="${job.title}" /></td>
                    <td><c:out value="${job.jobType}" /></td>
                    <td><c:out value="${job.role}" /></td>
                    <td><c:out value="${job.salary}" /></td>
                    <td><c:out value="${job.requirements}" /></td>
                    <td><c:out value="${job.educationQualifications}" /></td>
                    <td><c:out value="${job.deadline}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
