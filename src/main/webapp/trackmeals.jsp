<%@page import="klu.model.Signup"%>
<%@page import="java.util.List"%>
<%@page import="klu.model.meals"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Signup user = (Signup) session.getAttribute("user");
if (user == null) {
    response.sendRedirect("expired");
    return;
}
List<meals> mealsList = (List<meals>) request.getAttribute("mealsList");
//Retrieve the size of the meals list dynamically
int mealCount = 0;
while (request.getAttribute("meal" + mealCount) != null) {
 mealCount++;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Tracking Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript for Bootstrap -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F7F3EF;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

        main {
            flex: 1;
            padding: 20px;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        thead th {
            background-color: #264653;
            color: white;
            padding: 10px;
            text-align: center;
            font-size: 16px;
        }

        tbody td {
            padding: 12px;
            text-align: center;
            font-size: 14px;
            border-bottom: 1px solid #ddd;
        }

        tbody tr:nth-child(even) {
            background-color: #f4f4f4;
        }

        tbody tr:hover {
            background-color: #e9f7f2;
        }

        /* Footer styles */
        .footer {
            background-color: #002147;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .button-container {
            text-align: center; /* Center the button */
            margin-top: 10px;
        }

        .button-container button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .button-container button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>

<!-- Header Section -->
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

<!-- Main Content -->
<main>
    <h2 class="text-center mt-4">Food Tracking Table</h2>

    <!-- Table to display food tracking -->
    <table id="foodTrackingTable" class="table table-bordered">
        <thead>
            <tr>
                <th>Day</th>
                <th>Meal Type</th>
                <th>Food</th>
            </tr>
        </thead>
        <tbody>
    <% 
    for (int i = 0; i < mealCount; i++) {
        meals meal = (meals) request.getAttribute("meal" + i);
        String mealType = "";
        String dayName = "";

        // Map meal type integer to string
        switch (meal.getMeal()) {
            case 1: mealType = "Breakfast"; break;
            case 2: mealType = "Lunch"; break;
            case 3: mealType = "Dinner"; break;
            case 4: mealType = "Snack"; break;
            default: mealType = "Unknown"; break;
        }

        // Map day integer to day name
        switch (meal.getDay()) {
            case 1: dayName = "Monday"; break;
            case 2: dayName = "Tuesday"; break;
            case 3: dayName = "Wednesday"; break;
            case 4: dayName = "Thursday"; break;
            case 5: dayName = "Friday"; break;
            case 6: dayName = "Saturday"; break;
            case 7: dayName = "Sunday"; break;
            default: dayName = "Unknown"; break;
        }
    %>
    <tr>
        <td><%= dayName %></td>
        <td><%= mealType %></td>
        <td><%= meal.getFood() %></td>
    </tr>
    <% 
    } 
    %>
</tbody>

    </table>

    <!-- Button to trigger Meal Logger form below the table -->
    <div class="button-container">
        <button data-toggle="modal" data-target="#mealLoggerModal">Meal Logger</button>
    </div>
</main>

<!-- Footer Section -->
<div class="footer">
    <p>&copy; 2024 FitPlate. All rights reserved.</p>
</div>

<!-- Modal for Meal Logger -->
<div class="modal fade" id="mealLoggerModal" tabindex="-1" role="dialog" aria-labelledby="mealLoggerModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mealLoggerModalLabel">Log Your Meal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form inside the modal -->
                <form>
                    <div class="form-group">
                        <label for="day">Day</label>
                        <select class="form-control" id="day">
                        <option>Select</option>
                             <option value="1">Monday</option>
            <option value="2">Tuesday</option>
            <option value="3">Wednesday</option>
            <option value="4">Thursday</option>
            <option value="5">Friday</option>
            <option value="6">Saturday</option>
            <option value="7">Sunday</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="meal">Meal Type</label>
                        <select class="form-control" id="meal">
                        <option>Select</option>
                            <option value="1">Breakfast</option>
            <option value="2">Lunch</option>
            <option value="3">Dinner</option>
            <option value="4">Snack</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="food">Food</label>
                        <input type="text" class="form-control" id="food" placeholder="Enter Food (e.g., Rice)">
                    </div>
                </form>
            </div>
            <div class="modal-footer d-flex justify-content-center align-items-center">
                <button type="button" class="btn" style="background-color: #002147; color: white; border: none;">Close</button>
                <button type="button" class="btn" id="saveMeal" style="background-color: #002147; color: white; border: none;">Save Meal</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>
    document.getElementById('saveMeal').addEventListener('click', function () {
        // Retrieve values from the form
        const day = document.getElementById('day').value;
        const meal = document.getElementById('meal').value;
        const food = document.getElementById('food').value;
        const userEmail = "<%= user.getEmail() %>";

        // Check if all fields are filled
        if (!day || !meal || !food) {
            alert('Please fill in all fields!');
            return;
        }

        // Create a meal object to send
        const mealData = {
            day: day,
            meal: meal,
            food: food,
            useremail: userEmail
        };

        // Use Axios to make a POST request
        axios.post("http://localhost:8080/user/addmeals", mealData)
            .then(response => {
                alert("Meal logged successfully!");
                location.reload(); // Reload the page to reflect changes
            })
            .catch(error => {
                console.error("Error:", error);
                alert("Failed to log meal.");
            });

        
    });
   

       </script>
</body>
</html>
