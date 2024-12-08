<%@page import="com.placement.project.service.StudentService"%>
<%@page import="com.placement.project.model.Applicants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Jobs</title>
<link rel="stylesheet" type="text/css" href="css/studentview.css">
</head>

<body>
<%@ include file="studentnavbar.jsp" %>

<div class="content">
    <header>
        <h1 class="page-title">Find Your Dream Job</h1>
        <p class="page-subtitle">Explore opportunities tailored to your skills.</p>
    </header>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Company</th>
                    <th>Title</th>
                    <th>Type</th>
                    <th>Role</th>
                    <th>Salary</th>
                    <th>Requirements</th>
                    <th>Education</th>
                    <th>Deadline</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${jobslist}" var="job">
                    <tr>
                        <td><c:out value="${job.companyname}" /></td>
                        <td><c:out value="${job.title}" /></td>
                        <td><c:out value="${job.jobType}" /></td>
                        <td><c:out value="${job.role}" /></td>
                        <td><c:out value="${job.salary}" /></td>
                        <td><c:out value="${job.requirements}" /></td>
                        <td><c:out value="${job.educationQualifications}" /></td>
                        <td><c:out value="${job.deadline}" /></td>
                        <td>
                            <a href="<c:url value='applyjob?companymail=${job.email}&jobid=${job.jobId}&companyname=${job.companyname}' />" 
                               class="btn-apply">Apply Now</a>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty jobslist}">
                    <tr>
                        <td colspan="9" class="no-jobs">No jobs available currently.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
