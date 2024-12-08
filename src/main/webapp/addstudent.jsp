<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="/css/Home.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
        /* General Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-image: url("images/user.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .header .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .header .nav-area {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .header .nav-area li a {
            text-decoration: none;
            color: #fff;
            font-size: 1rem;
            transition: color 0.3s ease;
        }

        .header .nav-area li a:hover {
            color: #ffd700;
        }

        .form-container {
            margin: 150px auto; /* Space below the fixed navbar */
            width: 80%;
            max-width: 900px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 1.5rem;
            font-size: 2rem;
            font-weight: bold;
            color: #1a237e;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 1rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        input, select {
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #1a237e;
            box-shadow: 0 0 8px rgba(26, 35, 126, 0.2);
        }

        .btn-container {
            grid-column: span 2;
            text-align: center;
            margin-top: 1.5rem;
        }

        button {
            width: 40%;
            padding: 0.8rem;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 0 1rem;
        }

        .btn-primary {
            background-color: #1a237e;
        }

        .btn-primary:hover {
            background-color: #3949ab;
        }

        .btn-secondary {
            background-color: #d32f2f;
        }

        .btn-secondary:hover {
            background-color: #b71c1c;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-grid {
                grid-template-columns: 1fr;
            }

            button {
                width: 80%;
                margin: 10px 0;
            }
        }

        .footer {
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 20px 0;
            display: flex;
            justify-content: space-around;
            margin-top: 50px;
        }

        .footer h1, .footer p, .footer ul {
            margin-bottom: 10px;
        }

        .footer ul {
            list-style: none;
        }

        .footer ul li a {
            text-decoration: none;
            color: #fff;
            transition: color 0.3s ease;
        }

        .footer ul li a:hover {
            color: #ffd700;
        }

        .social_container {
            display: flex;
            gap: 15px;
        }

        .social_items {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #555;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            transition: background-color 0.3s ease;
        }

        .social_items:hover {
            background: #ffd700;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <div class="header">
        <div class="logo">PlacementCell</div>
        <ul class="nav-area">
            <li><a href="/">Home</a></li>
            <li><a href="#loginas">Login</a></li>
            <li><a href="#contact">Contact Us</a></li>
        </ul>
    </div>

    <!-- Form Container -->
    <div class="form-container">
        <h1>Student Registration</h1>
        <form action="insertstudent" method="post" class="form-grid">
            <div class="form-group">
                <label for="regnum">Registration Number</label>
                <input type="number" min="2200030000" max="22000040000" id="regnum" name="regnum" required />
            </div>
            <div class="form-group">
                <label for="sname">Name</label>
                <input type="text" id="sname" name="sname" required />
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="" disabled selected>Select Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required />
            </div>
            <div class="form-group">
                <label for="semail">Email</label>
                <input type="email" id="semail" name="semail" required />
            </div>
            <div class="form-group">
                <label for="scontact">Contact</label>
                <input type="text" id="scontact" name="scontact" required />
            </div>
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" id="pwd" name="pwd" required />
            </div>
            <div class="form-group">
                <label for="dept">Department</label>
                <select id="dept" name="dept" required>
                    <option value="" disabled selected>Select Department</option>
                    <option value="COMPUTER SCIENCE AND ENGINEERING">CSE</option>
                    <option value="ELECTRICAL ENGINEERING">EE</option>
                    <option value="MECHANICAL ENGINEERING">ME</option>
                    <option value="BUSINESS ADMINISTRATION">BBA</option>
                </select>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn-primary">Register</button>
                <button type="reset" class="btn-secondary">Clear</button>
            </div>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer" id="contact">
        <div>
            <h1>PlacementCell</h1>
        </div>
        <div>
            <ul>
                <li><strong>Quick Links</strong></li>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#Home">Login</a></li>
                <li><a href="#companies">Companies</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>
        </div>
        <div>
            <ul>
                <li><strong>Contact Us</strong>
                <li>29th Street, Plot 234, Washington, USA</li>
                <li>+1 564-783-9233</li>
                <li>info@placementteam.com</li>
            </ul>
        </div>
        <div class="social_container">
            <a href="https://www.facebook.com/" target="_blank" aria-label="Facebook">
                <div class="social_items"><i class="fab fa-facebook-f"></i></div>
            </a>
            <a href="https://www.google.com/" target="_blank" aria-label="Google">
                <div class="social_items"><i class="fab fa-google"></i></div>
            </a>
            <a href="https://www.instagram.com/" target="_blank" aria-label="Instagram">
                <div class="social_items"><i class="fab fa-instagram"></i></div>
            </a>
            <a href="https://www.linkedin.com/" target="_blank" aria-label="LinkedIn">
                <div class="social_items"><i class="fab fa-linkedin-in"></i></div>
            </a>
        </div>
    </div>
</div>

</body>
</html>
                