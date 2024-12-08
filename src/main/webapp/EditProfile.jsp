<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

        /* Header Styling */
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
            display: flex;
        }

        .nav-links li {
            margin-right: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: 700;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: #C70039;
        }

        /* Content Section */
        .container {
            margin-top: 20px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
        }

        .form-group {
            flex: 1;
            min-width: 45%;
            margin-right: 20px;
        }

        .form-group:last-child {
            margin-right: 0;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .footer {
            background-color: #002147;
            color: white;
            padding: 1rem;
            text-align: center;
            margin-top: auto;
        }

        .footer p {
            margin: 0;
        }

        /* Button Style */
        .btn-primary {
            background-color: #C70039;
            border-color: #C70039;
        }

        .btn-primary:hover {
            background-color: #9B0033;
            border-color: #9B0033;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <nav class="container">
            <div class="logo">
                <img src="/images/fitplate.jpg" alt="Logo">
                <span class="logo-title">FitPlate</span>
            </div>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="tracking.jsp">Tracking</a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="container mt-4">
        <h3>Edit Your Details</h3>
        <form action="updateUserDetails" method="POST">
            <div class="form-row">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="user@example.com" required>
                </div>
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="John" required>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="Doe" required>
                </div>
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" class="form-control" id="dob" name="dob" value="1990-01-01" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="text" class="form-control" id="gender" name="gender" value="Male" required>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="123-456-7890" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" class="form-control" id="address" name="address" value="123 Street Name, City" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="dietType">Diet Type:</label>
                    <input type="text" class="form-control" id="dietType" name="dietType" value="Vegetarian" required>
                </div>
                <div class="form-group">
                    <label for="caloriesIntake">Calories Intake:</label>
                    <input type="number" class="form-control" id="caloriesIntake" name="caloriesIntake" value="2000" required>
                </div>
                <div class="form-group">
                    <label for="proteinIntake">Protein Intake:</label>
                    <input type="number" class="form-control" id="proteinIntake" name="proteinIntake" value="100" required>
                </div>
                <div class="form-group">
                    <label for="carbsIntake">Carbs Intake:</label>
                    <input type="number" class="form-control" id="carbsIntake" name="carbsIntake" value="250" required>
                </div>
                <div class="form-group">
                    <label for="fatIntake">Fat Intake:</label>
                    <input type="number" class="form-control" id="fatIntake" name="fatIntake" value="70" required>
                </div>
                <div class="form-group">
                    <label for="allergies">Allergies:</label>
                    <input type="text" class="form-control" id="allergies" name="allergies" value="None" required>
                </div>
                <div class="form-group">
                    <label for="height">Height (cm):</label>
                    <input type="number" class="form-control" id="height" name="height" value="175" required>
                </div>
                <div class="form-group">
                    <label for="weight">Weight (kg):</label>
                    <input type="number" class="form-control" id="weight" name="weight" value="70" required>
                </div>
                <div class="form-group">
                    <label for="goal">Goal:</label>
                    <input type="text" class="form-control" id="goal" name="goal" value="Lose weight" required>
                </div>
            </div>

            <!-- Save Changes Button -->
            <div class="button-container">
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </div>
        </form>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 FitPlate. All rights reserved.</p>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>