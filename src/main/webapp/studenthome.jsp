<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>
    <style>
       
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #333;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .container {
            max-width: 900px;
            margin: 20px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            padding: 40px 50px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .welcome-message {
            font-size: 3rem;
            font-weight: 700;
            color: #2575fc;
            margin-bottom: 20px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in-out;
            letter-spacing: 2px;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Gradient Background Effect */
        .container:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            opacity: 0.2;
            z-index: -1;
            border-radius: 15px;
        }

        /* Decorative lines to give a modern touch */
        .container:after {
            content: "";
            position: absolute;
            top: 20%;
            left: 50%;
            width: 100%;
            height: 5px;
            background: #2575fc;
            transform: translateX(-50%);
            z-index: -1;
        }

        /* Interactive Button */
        .view-jobs-btn {
            background-color: #2575fc;
            color: #fff;
            padding: 15px 25px;
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: 600;
            text-transform: uppercase;
            border: none;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .view-jobs-btn:hover {
            background-color: #1d63db;
            transform: scale(1.1);
        }

        .view-jobs-btn:focus {
            outline: none;
        }

        footer {
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            font-size: 0.9rem;
            color: #666;
        }

        footer a {
            color: #2575fc;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer a:hover {
            color: #1d63db;
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>
    <div class="container">
        <div class="welcome-message">Welcome,<%= st.getName() %>!</div>
        <p>Here's your personalized dashboard. You can view available job opportunities and manage your profile.
        
        
    </div>
    <footer>
        <p>&copy; 2024 Placement Portal | <a href="/privacy-policy">Privacy Policy</a></p>
    </footer>
</body>
</html>
