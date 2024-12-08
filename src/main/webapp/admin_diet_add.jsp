<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add User - Diet Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F4F7F9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            text-align: center;
            font-size: 1.5rem;
            width: 100%;
        }

        .container {
            display: flex;
            flex-grow: 1;
            overflow: hidden;
            width: 100%;
        }

        .sidebar {
            background-color: #2D2D2D;
            padding: 2rem;
            width: 250px;
            height: 100%;
            position: sticky;
            top: 0;
            flex-shrink: 0; /* Prevent the sidebar from shrinking */
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

        .form-container {
            flex-grow: 1;
            padding: 2rem;
            overflow-y: auto;
            max-height: 100vh;
            box-sizing: border-box;
        }

        .form-container form {
            display: flex;
            flex-direction: column;
        }

        .form-container label {
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        .form-container input,
        .form-container select {
            padding: 0.7rem;
            margin-bottom: 1.2rem;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .form-container button {
            padding: 0.7rem 1.5rem;
            background-color: #C70039;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: #FFC300;
        }

        .form-container .form-footer {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>Add New User</header>

    <div class="container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <a href="admin.jsp">Dashboard</a>
            <a href="admin_users.jsp">Manage Users</a>
            <a href="admin_diet.jsp">Manage Diet Plans</a>
            <a href="admin_reports.jsp">Reports & Analytics</a>
            <a href="landingpage.jsp">Logout</a>
        </div>

         <!-- Form for Adding Diet Plan -->
            <div class="form-container">
                <form >
                    <div class="form-group">
                        <label for="diet_name">Diet Name:</label>
                        <input type="text" id="diet_name" name="diet_name" required>
                    </div>

                    <div class="form-group">
                        <label for="diet_description">Diet Description:</label>
                        <textarea id="diet_description" name="diet_description" rows="4" required></textarea>
                    </div>

                    <div class="form-group">
                        <label for="monday_breakfast">Monday Breakfast:</label>
                        <input type="text" id="monday_breakfast" name="monday_breakfast">
                    </div>

                    <div class="form-group">
                        <label for="monday_lunch">Monday Lunch:</label>
                        <input type="text" id="monday_lunch" name="monday_lunch">
                    </div>

                    <div class="form-group">
                        <label for="monday_dinner">Monday Dinner:</label>
                        <input type="text" id="monday_dinner" name="monday_dinner">
                    </div>

                    <div class="form-group">
                        <label for="monday_snacks">Monday Snacks:</label>
                        <input type="text" id="monday_snacks" name="monday_snacks">
                    </div>

                    <!-- Repeat the above input fields for other days of the week (Tuesday-Sunday) -->

                    <div class="form-group">
                        <label for="calories">Calories (e.g., 300 kcal):</label>
                        <input type="number" id="calories" name="calories" required>
                    </div>

                    <div class="form-group">
                        <label for="protein">Protein (e.g., 20g):</label>
                        <input type="number" id="protein" name="protein" required>
                    </div>

                    <div class="form-group">
                        <label for="carbs">Carbohydrates (e.g., 50g):</label>
                        <input type="number" id="carbs" name="carbs" required>
                    </div>

                    <div class="form-group">
                        <label for="fat">Fat (e.g., 15g):</label>
                        <input type="number" id="fat" name="fat" required>
                    </div>

                    <div class="form-group">
                        <label for="fiber">Fiber (e.g., 10g):</label>
                        <input type="number" id="fiber" name="fiber" required>
                    </div>

                    <div class="form-group">
                        <label for="sugars">Sugars (e.g., 20g):</label>
                        <input type="number" id="sugars" name="sugars" required>
                    </div>

                    <div class="form-group">
                        <label for="iron">Iron (e.g., 5mg):</label>
                        <input type="number" id="iron" name="iron" required>
                    </div>

                    <div class="form-group">
                        <label for="calcium">Calcium (e.g., 200mg):</label>
                        <input type="number" id="calcium" name="calcium" required>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn" onclick="save()">Save Diet Plan</button>
                    </div>
                </form>
            </div>
    </div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script>
function save() {
    const dietName = document.getElementById("diet_name").value;
    const dietDescription = document.getElementById("diet_description").value;
    const mondayBreakfast = document.getElementById("monday_breakfast").value;
    const mondayLunch = document.getElementById("monday_lunch").value;
    const mondayDinner = document.getElementById("monday_dinner").value;
    const mondaySnacks = document.getElementById("monday_snacks").value;
    const calories = document.getElementById("calories").value;
    const protein = document.getElementById("protein").value;
    const carbs = document.getElementById("carbs").value;
    const fat = document.getElementById("fat").value;
    const fiber = document.getElementById("fiber").value;
    const sugars = document.getElementById("sugars").value;
    const iron = document.getElementById("iron").value;
    const calcium = document.getElementById("calcium").value;

    const data = JSON.stringify({
        diet_name: dietName,
        diet_description: dietDescription,
        monday_breakfast: mondayBreakfast,
        monday_lunch: mondayLunch,
        monday_dinner: mondayDinner,
        monday_snacks: mondaySnacks,
        calories: calories,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fiber: fiber,
        sugars: sugars,
        iron: iron,
        calcium: calcium
    });
    console.log(data);
	var url="http://localhost:8080/admin/savedietplan"
	callApi("POST",url,data,savehandler);
}
function savehandler(response){
	  if (response && response.success) { // Assuming your API response contains a 'success' field
	        alert("Diet plan saved successfully!");
	    } else if (response && response.error) { // Assuming your API response contains an 'error' field
	        alert("Error saving diet plan: " + response.error);
	    } else {
	        alert("An unexpected error occurred while saving the diet plan.");
	    }
	console.log(response);
}

</script>
</html>













