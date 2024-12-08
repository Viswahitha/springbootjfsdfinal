<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Dashboard - Diet Management</title>
    <style>
        /* General Styles */
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

        .main-content h2 {
            color: #002147;
            margin-bottom: 2rem;
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
    </style>
</head>
<body>
    <header>Admin Dashboard - Diet Management System</header>

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
            <h2>Welcome, Admin</h2>

            <!-- User Management Section -->
            <h3>Users Overview</h3>
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Diet Plan</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>John Doe</td>
                        <td>johndoe@example.com</td>
                        <td>Keto Diet</td>
                        <td><button class="btn">View</button> <button class="btn">Edit</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Smith</td>
                        <td>janesmith@example.com</td>
                        <td>Vegan Diet</td>
                        <td><button class="btn">View</button> <button class="btn">Edit</button></td>
                    </tr>
                    <!-- More users can be dynamically loaded here -->
                </tbody>
            </table>

            <!-- Diet Plan Management Section -->
            <h3>Diet Plans Overview</h3>
            <table>
                <thead>
                    <tr>
                        <th>Diet ID</th>
                        <th>Diet Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Keto Diet</td>
                        <td>A high-fat, low-carb diet for weight loss.</td>
                        <td><button class="btn">View</button> <button class="btn">Edit</button></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Vegan Diet</td>
                        <td>A plant-based diet excluding all animal products.</td>
                        <td><button class="btn">View</button> <button class="btn">Edit</button></td>
                    </tr>
                    <!-- More diet plans can be dynamically loaded here -->
                </tbody>
            </table>

            <!-- Reporting Section -->
            <h3>Reports & Analytics</h3>
            <button class="btn">View User Activity Report</button>
            <button class="btn">View Diet Plan Performance</button>
        </div>
    </div>
</body>
</html>
