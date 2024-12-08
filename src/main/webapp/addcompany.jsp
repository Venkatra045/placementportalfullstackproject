<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Company</title>
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
            margin: 0;
            display: flex;
        }

        /* Sidebar Offset */
        .form-container {
            margin-left: 360px; /* Adjust for the sidebar */
            padding: 20px;
            width: 80%;
            max-width: 800px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            animation: slideIn 0.5s ease;
        }

        @keyframes slideIn {
            from {
                transform: translateX(-50px);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        .form-container h2 {
            text-align: center;
            color: #004080;
            margin-bottom: 20px;
            font-size: 1.8rem;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        /* Styling for form labels and inputs */
        .form-container label {
            font-size: 1rem;
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #444;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
            margin-bottom: 20px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="email"]:focus,
        .form-container input[type="password"]:focus {
            border-color: #0073e6;
            box-shadow: 0 0 8px rgba(0, 115, 230, 0.3);
            outline: none;
        }

        .form-container .form-btns {
            display: flex;
            justify-content: space-between;
        }

        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            background: #0073e6;
            color: #ffffff;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background: #004080;
            box-shadow: 0 6px 15px rgba(0, 115, 230, 0.5);
        }

        .form-container input[type="reset"] {
            background: #e0e0e0;
            color: #444;
        }

        .form-container input[type="reset"]:hover {
            background: #cccccc;
            box-shadow: 0 6px 15px rgba(128, 128, 128, 0.3);
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .form-container {
                margin-left: 20px;
                width: 90%;
            }
        }

        @media (max-width: 768px) {
            .form-container {
                margin-left: 10px;
                width: 100%;
            }
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="form-container">
        <h2>Add Company</h2>
        <form:form modelAttribute="company" method="post" action="insertcompany">

            <label for="name">Enter Name</label>
            <form:input path="name" required="required" placeholder="Enter company name" id="name"></form:input>

            <label for="field">Enter Field</label>
            <form:input path="field" required="required" placeholder="Enter company field" id="field"></form:input>

            <label for="location">Enter Location</label>
            <form:input path="location" required="required" placeholder="Enter company location" id="location"></form:input>

            <label for="email">Enter Email ID</label>
            <form:input path="email" required="required" placeholder="Enter company email" id="email"></form:input>

            <label for="password">Enter Password</label>
            <form:input path="password" required="required" type="password" placeholder="Enter company password" id="password"></form:input>

            <div class="form-btns">
                <input type="submit" value="Add" />
                <input type="reset" value="Clear" />
            </div>

        </form:form>
    </div>
</body>

</html>
