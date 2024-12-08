<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company List</title>
    <style>
        /* Reset and Base Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #e0e0e0, #f8f9fc);
            color: #444;
            line-height: 1.6;
        }

        .table-container {
            margin-left: 360px; /* Offset for sidebar */
            padding: 20px;
            width: 80%;
            max-width: 1000px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            animation: slideIn 0.5s ease;
        }

        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .table-container h2 {
            text-align: center;
            color: #004080;
            margin-bottom: 20px;
            font-size: 1.8rem;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .table-container .no-records {
            text-align: center;
            font-size: 1.2rem;
            color: #888;
        }

        /* Search Bar Styling */
        .search-bar {
            width: 100%;
            margin: 20px 0;
            display: flex;
            justify-content: center;
        }

        .search-input {
            width: 60%;
            padding: 12px 20px;
            border: 2px solid #0073e6;
            border-radius: 25px;
            font-size: 1rem;
            outline: none;
            transition: border-color 0.3s;
        }

        .search-input:focus {
            border-color: #005bb5;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #ffffff;
            overflow-x: auto;
        }

        table thead tr {
            background: #0073e6;
            color: #ffffff;
        }

        table th,
        table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table tbody tr:nth-child(even) {
            background: #f8f9fc;
        }

        table tbody tr:hover {
            background: rgba(0, 115, 230, 0.1);
        }

        table th {
            text-transform: uppercase;
            font-weight: bold;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .table-container {
                margin-left: 20px;
                width: 90%;
            }
        }

        @media (max-width: 768px) {
            table th,
            table td {
                padding: 8px;
            }
        }

        @media (max-width: 576px) {
            table {
                font-size: 0.9rem;
            }

            .table-container {
                margin-left: 10px;
                width: 100%;
            }
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="table-container">
        <h2>Company List</h2>

        <!-- Search Bar -->
        <div class="search-bar">
            <input type="text" id="searchInput" class="search-input" placeholder="Search companies..." onkeyup="searchTable()">
        </div>

        <c:if test="${empty companylist}">
            <p class="no-records">No companies found.</p>
        </c:if>

        <table id="companyTable">
            <thead>
                <tr>
                    <th>Company Email</th>
                    <th>Company Field</th>
                    <th>Company Location</th>
                    <th>Company Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${companylist}" var="comp">
                    <tr>
                        <td><c:out value="${comp.email}" /></td>
                        <td><c:out value="${comp.field}" /></td>
                        <td><c:out value="${comp.location}" /></td>
                        <td><c:out value="${comp.name}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script>
        function searchTable() {
            var input = document.getElementById("searchInput");
            var filter = input.value.toLowerCase();
            var table = document.getElementById("companyTable");
            var tr = table.getElementsByTagName("tr");

            for (var i = 1; i < tr.length; i++) {
                var tdEmail = tr[i].getElementsByTagName("td")[0];
                var tdField = tr[i].getElementsByTagName("td")[1];
                var tdLocation = tr[i].getElementsByTagName("td")[2];
                var tdName = tr[i].getElementsByTagName("td")[3];

                if (tdEmail && tdField && tdLocation && tdName) {
                    var txtValueEmail = tdEmail.textContent || tdEmail.innerText;
                    var txtValueField = tdField.textContent || tdField.innerText;
                    var txtValueLocation = tdLocation.textContent || tdLocation.innerText;
                    var txtValueName = tdName.textContent || tdName.innerText;

                    // Search in all columns
                    if (
                        txtValueEmail.toLowerCase().indexOf(filter) > -1 ||
                        txtValueField.toLowerCase().indexOf(filter) > -1 ||
                        txtValueLocation.toLowerCase().indexOf(filter) > -1 ||
                        txtValueName.toLowerCase().indexOf(filter) > -1
                    ) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
</body>

</html>
