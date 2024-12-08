<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4a6cf7;
            --secondary-color: #6a11cb;
            --background-light: #f4f7ff;
            --text-dark: #2c3e50;
            --text-muted: #6c757d;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--background-light);
            line-height: 1.6;
            color: var(--text-dark);
        }

        .page-wrapper {
            display: flex;
            min-height: 100vh;
        }

        /* Navbar Styles (Assuming existing navbar) */
        .navbar {
            width: 250px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        /* Main Content Area */
        .main-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            padding: 30px;
            background: linear-gradient(135deg, var(--background-light) 0%, #e9ecef 100%);
        }

        .profile-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 30px;
        }

        .profile-header h1 {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-color);
            align-content: center;
        }

        .profile-container {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .profile-image-section {
            background: linear-gradient(to bottom right, var(--primary-color), var(--secondary-color));
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 30px;
            color: white;
            text-align: center;
        }

        .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            border: 5px solid white;
            object-fit: cover;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .profile-image-section h2 {
            margin-top: 20px;
            font-size: 1.8rem;
            font-weight: 600;
        }

        .profile-details {
            padding: 40px;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
        }

        .detail-card {
            background-color: var(--background-light);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .detail-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .detail-card span {
            display: block;
            color: var(--text-muted);
            font-size: 0.9rem;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .detail-card p {
            color: var(--primary-color);
            font-size: 1.1rem;
            font-weight: 600;
        }

        @media screen and (max-width: 1024px) {
            .profile-container {
                grid-template-columns: 1fr;
            }
            
            .profile-details {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="page-wrapper">
        <%@ include file="studentnavbar.jsp" %>
        
        <div class="main-content">
            <div class="profile-header">
                <h1 align="center">Student Profile</h1>
            </div>
            
            <div class="profile-container">
                <div class="profile-image-section">
                    <h2><%= st.getName() %></h2>
                </div>
                
                <div class="profile-details">
                    <div class="detail-card">
                        <span>Student ID</span>
                        <p><%= st.getId() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Email</span>
                        <p><%= st.getEmail() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Department</span>
                        <p><%= st.getDepartment() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Gender</span>
                        <p><%= st.getGender() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Date of Birth</span>
                        <p><%= st.getDob() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Contact Number</span>
                        <p><%= st.getContact() %></p>
                    </div>
                    <div class="detail-card">
                        <span>Status</span>
                        <p><%= st.getStudentstatus() != null ? st.getStudentstatus() : "Not Available" %></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>