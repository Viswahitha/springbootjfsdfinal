<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Manage Users - Diet Management System</title>
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

        .header-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        /* Styling for the search bar */
        .search-bar {
            margin-left: auto;
        }

        .search-bar input[type="text"] {
            padding: 0.5rem;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
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

        /* Pagination styling */
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 1rem;
        }

        .pagination a {
            padding: 0.5rem 1rem;
            margin: 0 5px;
            background-color: #002147;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .pagination a:hover {
            background-color: #C70039;
        }

        .pagination a.active {
            background-color: #FFC300;
        }

         .add-user-btn {
        margin-top: 2rem;
        text-align: center;
    }

    .add-user-btn a {
        display: inline-block;
        padding: 0.7rem 1.5rem;
        background-color: #002147;
        color: white;
        text-decoration: none;
        font-size: 1rem;
        font-weight: bold;
        border-radius: 8px;
        transition: background-color 0.3s, transform 0.2s;
    }

    .add-user-btn a:hover {
        background-color: #C70039;
        transform: scale(1.05);
    }
         .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 30%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .modal-header {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            text-align: center;
            color: #002147;
        }

        .modal-body {
            margin-bottom: 1rem;
        }

        .modal-close {
            background-color: #C70039;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
        }

        .modal-close:hover {
            background-color: #FFC300;
        }
    </style>
</head>
<body>
    <header>Admin Dashboard - Manage Users</header>

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
            <!-- Users Header with Search Bar -->
            <div class="header-row">
                <h2>Users</h2>
                <!-- Search Bar -->
                <div class="search-bar">
                    <form action="searchUserServlet" method="get">
                        <input type="text" name="search" placeholder="Search by name or email...">
                        <button class="btn" type="submit">Search</button>
                    </form>
                </div>
            </div>

            <!-- Users Table -->
            <table id="userTable">
                <thead>
                    <tr>
                        
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Diet Plan</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Data will be inserted here dynamically -->
                </tbody>
            </table>

            <!-- Pagination Controls -->
            <div class="pagination">
                <a href="#">&laquo;</a> <!-- Previous page -->
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">&raquo;</a> <!-- Next page -->
            </div>

            <!-- Add New User Button -->
            <div class="add-user-btn">
                <a href="add_user.jsp">Add New User</a>
            </div>
        </div>
    </div>
    
       <div id="userModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                User Details
            </div>
            <div class="modal-body">
                <p><strong>Full Name:</strong> <span id="userName"></span></p>
                <p><strong>Email:</strong> <span id="userEmail"></span></p>
                <p><strong>Diet Plan:</strong> <span id="userDietPlan"></span></p>
                <p><strong>Date of Birth:</strong> <span id="userDob"></span></p>
            <p><strong>Gender:</strong> <span id="userGender"></span></p>
            <p><strong>Phone Number:</strong> <span id="userPhone"></span></p>
            <p><strong>Address:</strong> <span id="userAddress"></span></p>
            <p><strong>Diet Plan:</strong> <span id="userDietPlan"></span></p>
             <p><strong>Allergies:</strong> <span id="userAllergies"></span></p>
            <p><strong>Height:</strong> <span id="userHeight"></span> cm</p>
            <p><strong>Weight:</strong> <span id="userWeight"></span> kg</p>
            <p><strong>Goal:</strong> <span id="userGoal"></span></p>
            </div>
            <div class="modal-footer">
                <button class="modal-close" onclick="closeModal()">Close</button>
            </div>
        </div>
    </div>
<script type="text/javascript" src="js/main.js"></script>

<script>
    window.onload = function() {
        fetchUsers();
    }

    let currentPage = 1; // Keep track of the current page
    const itemsPerPage = 5; // Number of items per page
    let usersData = []; // Store fetched data here

    // Function to fetch user data from API
    function fetchUsers() {
        const url = "http://localhost:8080/admin/readusers"; // Adjust API URL as needed

        // Using callApi function to make the GET request
        callApi("GET", url, "", function(response) {
            usersData = response; // Store data globally
            renderTable(); // Render table for the first time
            renderPagination(); // Render pagination controls
        });
    }

    // Function to render the table
    function renderTable() {
        const tableBody = document.querySelector("#userTable tbody");
        tableBody.innerHTML = ""; // Clear the table before adding new data

        // Calculate the range of items to display for the current page
        const startIndex = (currentPage - 1) * itemsPerPage;
        const endIndex = Math.min(startIndex + itemsPerPage, usersData.length);
        const currentPageData = usersData.slice(startIndex, endIndex);

        // Render the rows
        currentPageData.forEach(function(user) {
            const row = document.createElement("tr");

            row.innerHTML = `
                <td>` + user.firstName + `</td>
                <td>` + user.email + `</td>
                <td>` + user.dietType + `</td>
                <td>
                    <button class="btn" onclick='viewUserDetails(`+JSON.stringify(user)+`)'>View</button>
                    <button class="btn" onclick='del()'>Delete</button>
                </td>`;
            tableBody.appendChild(row);
        });
    }

    // Function to render pagination controls
    function renderPagination() {
        const paginationDiv = document.querySelector(".pagination");
        paginationDiv.innerHTML = ""; // Clear existing pagination controls

        const totalPages = Math.ceil(usersData.length / itemsPerPage);

        // Create "Previous" button
        const prevButton = document.createElement("a");
        prevButton.href = "#";
        prevButton.innerHTML = "&laquo;";
        prevButton.onclick = function() {
            if (currentPage > 1) {
                currentPage--;
                renderTable();
                renderPagination();
            }
        };
        paginationDiv.appendChild(prevButton);

        // Create page number buttons
        for (let i = 1; i <= totalPages; i++) {
            const pageButton = document.createElement("a");
            pageButton.href = "#";
            pageButton.innerHTML = i;
            if (i === currentPage) {
                pageButton.classList.add("active");
            }
            pageButton.onclick = function() {
                currentPage = i;
                renderTable();
                renderPagination();
            };
            paginationDiv.appendChild(pageButton);
        }

        // Create "Next" button
        const nextButton = document.createElement("a");
        nextButton.href = "#";
        nextButton.innerHTML = "&raquo;";
        nextButton.onclick = function() {
            if (currentPage < totalPages) {
                currentPage++;
                renderTable();
                renderPagination();
            }
        };
        paginationDiv.appendChild(nextButton);
    }
    function viewUserDetails(user) {
        // Populate modal with user details
        console.log("inside viewuserdetails")
        console.log(user)
        document.getElementById("userName").textContent = user.firstName;
        document.getElementById("userEmail").textContent = user.email;
        document.getElementById("userDietPlan").textContent = user.dietType;
        document.getElementById("userDob").textContent = new Date(user.dob).toLocaleDateString(); // Format Date of Birth
        document.getElementById("userGender").textContent = user.gender;
        document.getElementById("userPhone").textContent = user.phoneNumber;
        document.getElementById("userAddress").textContent = user.address;
        document.getElementById("userAllergies").textContent = user.allergies || "None";
        document.getElementById("userHeight").textContent = `${user.height} cm`;
        document.getElementById("userWeight").textContent = `${user.weight} kg`;
        document.getElementById("userGoal").textContent = user.goal;

        // Display the modal
        const modal = document.getElementById("userModal");
        modal.style.display = "block";
    }

    // Function to close the modal
    function closeModal() {
        const modal = document.getElementById("userModal");
        modal.style.display = "none";
    }

    function del(){
		var T1=document.getElementById("userEmail");
		var url="http://localhost:8080/admin/deleteuser?email=" +T1.value;
			callApi("DELETE",url, "",deleteHandler);
		
	}
    function deleteHandler(response){
	}
</script>

</body>
</html>
