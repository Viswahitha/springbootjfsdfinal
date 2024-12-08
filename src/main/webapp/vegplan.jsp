<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vegetarian Diet Plan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            margin: 0;
            padding: 20px;
        }
        .navbar {
            background-color: #002147; /* Deep blue */
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important; /* White text color */
        }
        .navbar-brand:hover, .nav-link:hover {
            color: #C70039 !important; /* Highlight color on hover */
        }
        .container {
            margin-top: 20px;
        }
        h2 {
            color: #343a40; /* Dark color for headings */
        }
        .meal {
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            padding: 15px;
            margin: 15px 0;
        }
        .meal img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
    </style>
</head>
<body>

<!-- Header Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Diet Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="home.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Diet Plans</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">BMI Calculator</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Body Fat Calculator</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <h2 class="text-center">Vegetarian Diet Plan</h2>
    <div class="meal">
        <img src="vegetarian_meal.jpg" alt="Vegetarian Meal">
        <h4>Breakfast</h4>
        <p>Oatmeal topped with fresh fruits and nuts.</p>
    </div>
    <div class="meal">
        <img src="vegetarian_lunch.jpg" alt="Vegetarian Lunch">
        <h4>Lunch</h4>
        <p>Quinoa salad with a variety of vegetables and a lemon dressing.</p>
    </div>
    <div class="meal">
        <img src="vegetarian_dinner.jpg" alt="Vegetarian Dinner">
        <h4>Dinner</h4>
        <p>Stir-fried tofu with broccoli and brown rice.</p>
    </div>
    <div class="meal">
        <h4>Snacks</h4>
        <p>Hummus with carrot and cucumber sticks, and a handful of almonds.</p>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
