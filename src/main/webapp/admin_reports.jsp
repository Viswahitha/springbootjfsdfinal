<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reports & Analytics - Diet Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F4F7F9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            text-align: center;
            font-size: 1.5rem;
        }

        .container {
            display: flex;
        }

        .sidebar {
            background-color: #2D2D2D;
            padding: 2rem;
            height: 100vh;
            width: 250px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #C70039;
        }

        .main-content {
            flex-grow: 1;
            padding: 2rem;
        }

        .header-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar input {
            padding: 8px;
            margin-right: 10px;
        }

        .btn {
            padding: 0.5rem 1rem;
            background-color: #C70039;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #FFC300;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 2rem;
        }

        table th, table td {
            padding: 1rem;
            border: 1px solid #ccc;
            text-align: center;
        }

        table th {
            background-color: #002147;
            color: white;
        }

        .pagination {
            text-align: center;
            margin-top: 20px;
        }

        .pagination a {
            padding: 8px 16px;
            text-decoration: none;
            color: #002147;
            border: 1px solid #ddd;
            margin: 0 5px;
        }

        .pagination a.active {
            background-color: #002147;
            color: white;
        }

        /* Chart Section */
        .chart-container {
            display: flex;
            justify-content: space-between;
            gap: 2rem;
            margin-top: 2rem;
            height: 400px;
        }

        .chart {
            background-color: #FFFFFF;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 1rem;
            flex: 1;
            text-align: center;
        }

  .chart canvas {
    width: 100%;
    height: 250px; /* Set a smaller height for the bar graph */
}

       
    </style>
</head>
<body>
    <header>Admin Dashboard - Reports & Analytics</header>

    <div class="container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <a href="admin.jsp">Dashboard</a>
            <a href="admin_users.jsp">Manage Users</a>
            <a href="admin_diet.jsp">Manage Diet Plans</a>
            <a href="admin_reports.jsp">Reports & Analytics</a>
            <a href="landingpage.jsp">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header-bar">
                <h2>Reports & Analytics</h2>

                <!-- Search Bar -->
                <div class="search-bar">
                    <input type="text" placeholder="Search reports...">
                    <button class="btn">Search</button>
                </div>
            </div>

            <!-- Report Summary Table -->
            <table>
                <thead>
                    <tr>
                        <th>Report ID</th>
                        <th>Report Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Static Report Data (Page 1, 4 Reports) -->
                    <tr>
                        <td>1</td>
                        <td>User Activity Report</td>
                        <td>Shows user activity over the past month.</td>
                        <td>
                            <button class="btn">View</button>
                            <button class="btn">Download</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Diet Plan Effectiveness</td>
                        <td>Analyzes the effectiveness of different diet plans.</td>
                        <td>
                            <button class="btn">View</button>
                            <button class="btn">Download</button>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>User Retention Statistics</td>
                        <td>Provides insights into user retention rates.</td>
                        <td>
                            <button class="btn">View</button>
                            <button class="btn">Download</button>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Diet Plan Popularity</td>
                        <td>Shows the popularity of different diet plans.</td>
                        <td>
                            <button class="btn">View</button>
                            <button class="btn">Download</button>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Pagination Controls (Static) -->
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">&raquo;</a>
            </div>

            <!-- Charts Section (Side by Side) -->
            <div class="chart-container">
                <div class="chart">
                    <h3>Diet Plan Popularity - Pie Chart</h3>
                    <canvas id="chart1"></canvas>
                </div>
                <div class="chart">
                    <h3>User Activity - Line Chart</h3>
                    <canvas id="chart2"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Placeholder for Charts (Example static chart with Chart.js)
        window.onload = function() {
    // Bar Chart for Diet Plan Popularity
    var ctx1 = document.getElementById('chart1').getContext('2d');
    var chart1 = new Chart(ctx1, {
        type: 'bar', // Changed from 'pie' to 'bar'
        data: {
            labels: ['Keto', 'Vegan', 'Paleo', 'Mediterranean'],
            datasets: [{
                label: 'Popularity',
                data: [12, 19, 3, 5],
                backgroundColor: ['#C70039', '#FFC300', '#28A745', '#007BFF']
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false, // Allow more flexible sizing
            scales: {
                y: {
                    beginAtZero: true // Ensure the Y-axis starts at 0
                }
            }
        }
    });

    // Line Chart for User Activity (remains the same)
    var ctx2 = document.getElementById('chart2').getContext('2d');
    var chart2 = new Chart(ctx2, {
        type: 'line',
        data: {
            labels: ['January', 'February', 'March', 'April'],
            datasets: [{
                label: 'User Activity',
                data: [30, 45, 60, 75],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                fill: true
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
};

    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>
</html>
