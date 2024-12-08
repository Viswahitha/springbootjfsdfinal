<%@page import="klu.model.Signup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Signup user = (Signup)session.getAttribute("user");
if(user==null){
	response.sendRedirect("expired");
	return;
	//Idhi session handling ki use chestharu for example user aney session ledhu antey aa session expire ayyidhi ani ardham.
	
}%><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitPlate - Tracking</title>
   <style>
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            margin: 0;
            padding: 20px;
        }

        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            border-bottom: 2px solid #C70039;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 30px;
            height: 30px;
            margin-right: 0.5rem;
        }

        .logo-title {
            font-size: 1.7rem;
            font-weight: bold;
            color: white;
        }

        .nav-links {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .nav-links li {
            display: inline-block;
            margin-right: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: 700;
        }

        .main-content {
            padding: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .header {
            margin-bottom: 30px;
            text-align: center;
        }

        .header h1 {
            font-size: 28px;
            color: #58b27d;
        }

        .welcome-username {
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .cards-container {
            display: flex;
            gap: 20px;
            justify-content: center;
            margin-top: 20px;
            flex-wrap: wrap;
            max-width: 1200px;
            width: 100%;
        }

        .card {
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: calc(25% - 20px);
            min-width: 250px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 80px;
            height: 80px;
            margin-bottom: 15px;
        }

        .card h2 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .card a {
            background-color: #58b27d;
            color: black;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .card a:hover {
            background-color: #45a05a;
        }
    </style>
</head>
<body>
<!-- Header Navigation Bar -->
 <header>
      <nav>
            <div class="logo">
                <img src="/images/fitplate.jpg" alt="Logo">
                <span class="logo-title">FitPlate</span>
            </div>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="tracking.jsp">Tracking</a></li>
                <li><a href="payment.jsp">Membership</a>
                <li><a href="logout">Logout</a></li>
               
            </ul>
        </nav>
    </header>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Track Your Metrics</h1>
            <div class="welcome-username">
                <% 
                    out.print("Welcome, " + user.getFname() + "!");
                %>
            </div>
        </div>

        <!-- Cards Section -->
        <div class="cards-container">
            <!-- Card for Distance Estimator -->
            <div class="card">
                <img src="https://www.mindful.sodexo.com/wp-content/uploads/2024/08/MDF-10k-steps-challenge-mindful.jpeg" alt="Steps Icon">
                <h2>Distance Estimator</h2>
                <a href="distanceestimator.jsp">Check</a>
            </div>

            <!-- Card for Calories Burned -->
            <div class="card">
                <img src="https://t3.ftcdn.net/jpg/07/30/76/88/360_F_730768816_8dy7sDwkfn8UeGqvYSDYMGWjyZaBPlyB.jpg" alt="Calories Icon">
                <h2>Calories Burned</h2>
                <a href="calories.jsp">Check</a>
            </div>

            <!-- Card for Water Intake -->
            <div class="card">
                <img src="https://images.pexels.com/photos/416528/pexels-photo-416528.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="Water Icon">
                <h2>Water Intake</h2>
                <a href="waterintake.jsp">Check</a>
            </div>

            
            
            
        <!-- Card for Track Your Meals -->
        <div class="card">
            <img src="data:image/jpeg;base64,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" alt="Meals Icon">
            <h2>Track Your Meals</h2>
            <a href="trackmeals?email=<%= user.getEmail() %>">Check</a>
        </div>
        </div>
    </div>
</body>
</html>
