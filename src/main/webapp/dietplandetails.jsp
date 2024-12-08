<%@ page import="klu.model.Dietplan" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet Plan Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    /* General styles */
   /* General styles */
body {
    font-family: 'Arial', sans-serif;
    background-image: url('images/backgroundleft.jpeg'); /* Replace with the URL or path to your image */
    background-size: cover; /* Ensures the image covers the entire background */
    background-repeat: no-repeat; /* Prevents repeating the image */
    background-attachment: fixed; /* Keeps the image fixed when scrolling */
    background-position: center; /* Centers the image */
    color: #333;
    margin: 0;
    padding: 0;
}


    /* Header styles */
    h3 {
        color: #2a9d8f;
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
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

    /* Container styles */
    .container {
        max-width: 900px;
        margin: 0 auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    /* Responsive styles */
    @media (max-width: 768px) {
        table {
            font-size: 12px;
        }
        h3 {
            font-size: 24px;
        }
    }
    .nutritional-info-section {
    margin: 20px 0;
}

.nutritional-info-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* Two items per row */
    gap: 10px; /* Space between items */
    padding: 10px;
    background-color: #f9f9f9; /* Optional background color for better visibility */
    border: 1px solid #ddd; /* Optional border */
    border-radius: 8px; /* Optional rounded corners */
}

.nutritional-info-grid div {
    padding: 5px;
    font-size: 14px;
    color: #333;
}

.nutritional-info-grid span {
    font-weight: bold;
}
    
    </style>
</head>
<body>
    <div class="container mt-5">
        <h3 class="text-center">Diet Plan Details: <%= request.getAttribute("dietplanname") %></h3>
                <li><span>Description:</span> <%= request.getAttribute("dietplandesp") %></li>
        
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Day</th>
                    <th>Breakfast</th>
                    <th>Lunch</th>
                    <th>Dinner</th>
                    <th>Snacks</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Monday</td>
                    <td><%= request.getAttribute("dietmonbreakfast") %></td>
                    <td><%= request.getAttribute("dietmonlunch") %></td>
                    <td><%= request.getAttribute("dietmondinner") %></td>
                    <td><%= request.getAttribute("dietmonsnacks") %></td>
                </tr>
                <tr>
                    <td>Tuesday</td>
                    <td><%= request.getAttribute("diettuebreakfast") %></td>
                    <td><%= request.getAttribute("diettuelunch") %></td>
                    <td><%= request.getAttribute("diettuedinner") %></td>
                    <td><%= request.getAttribute("diettuesnacks") %></td>
                </tr>
                <tr>
                    <td>Wednesday</td>
                    <td><%= request.getAttribute("dietwedbreakfast") %></td>
                    <td><%= request.getAttribute("dietwedlunch") %></td>
                    <td><%= request.getAttribute("dietweddinner") %></td>
                    <td><%= request.getAttribute("dietwedsnacks") %></td>
                </tr>
                <tr>
                    <td>Thursday</td>
                    <td><%= request.getAttribute("dietthubreakfast") %></td>
                    <td><%= request.getAttribute("dietthulunch") %></td>
                    <td><%= request.getAttribute("dietthudinner") %></td>
                    <td><%= request.getAttribute("dietthusnacks") %></td>
                </tr>
                <tr>
                    <td>Friday</td>
                    <td><%= request.getAttribute("dietfribreakfast") %></td>
                    <td><%= request.getAttribute("dietfrilunch") %></td>
                    <td><%= request.getAttribute("dietfridinner") %></td>
                    <td><%= request.getAttribute("dietfrisnacks") %></td>
                </tr>
                <tr>
                    <td>Saturday</td>
                    <td><%= request.getAttribute("dietsatbreakfast") %></td>
                    <td><%= request.getAttribute("dietsatlunch") %></td>
                    <td><%= request.getAttribute("dietsatdinner") %></td>
                    <td><%= request.getAttribute("dietsatsnacks") %></td>
                </tr>
                <tr>
                    <td>Sunday</td>
                    <td><%= request.getAttribute("dietsunbreakfast") %></td>
                    <td><%= request.getAttribute("dietsunlunch") %></td>
                    <td><%= request.getAttribute("dietsundinner") %></td>
                    <td><%= request.getAttribute("dietsunsnacks") %></td>
                </tr>
            </tbody>
        </table>
        <!-- Nutritional Information Section -->
<div class="nutritional-info-section">
    <h4>Nutritional Information</h4>
    <div class="nutritional-info-grid">
        <div><span>Calories:</span> <%= request.getAttribute("calories") %> kcal</div>
        <div><span>Protein:</span> <%= request.getAttribute("protein") %> g</div>
        <div><span>Carbohydrates:</span> <%= request.getAttribute("carbs") %> g</div>
        <div><span>Fat:</span> <%= request.getAttribute("fat") %> g</div>
        <div><span>Fiber:</span> <%= request.getAttribute("fiber") %> g</div>
        <div><span>Sugars:</span> <%= request.getAttribute("sugars") %> g</div>
        <div><span>Iron:</span> <%= request.getAttribute("iron") %> mg</div>
        <div><span>Calcium:</span> <%= request.getAttribute("calcium") %> mg</div>
    </div>
</div>
<div class="text-center mt-4">
    <button class="btn btn-primary" onclick="goBack()">Back</button>
</div>

    </div>
</body>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</html>
