<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Manage Diet Plans - Diet Management System</title>
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
       /* Modal Styles */.modal-content {
    background-color: white;
    margin: auto; /* Center horizontally */
    padding: 20px;
    border: 1px solid #888;
    width: 90%; /* Increase the width to make it larger */
    max-width: 1200px; /* Allow for larger screens */
    height: 80%; /* Add height for more content */
    position: relative; /* Required for the close button positioning */
    overflow: auto; /* Add scroll if content overflows */
    top: 10%; /* Center vertically */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add a shadow for better visibility */
    border-radius: 10px; /* Optional: rounded corners */
}

.modal {
    display: none; /* Hidden by default */
    position: fixed;
    z-index: 1000;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Black background with transparency */
    display: flex; /* Enable flexbox for centering */
    align-items: center; /* Center vertically */
    justify-content: center; /* Center horizontally */
}

.close-btn {
    color: #aaa;
    font-size: 28px;
    font-weight: bold;
    position: absolute; /* Position the close button */
    top: 10px;
    right: 25px;
    cursor: pointer;
}

.close-btn:hover,
.close-btn:focus {
    color: black;
    text-decoration: none;
}

    </style>
</head>
<body>
    <header>Admin Dashboard - Manage Diet Plans</header>

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
                <h2>Diet Plans</h2>

                <!-- Search Bar -->
                <div class="search-bar">
                    <input type="text" placeholder="Search diet plans...">
                    <button class="btn">Search</button>
                </div>
            </div>

            <!-- Diet Plans Table -->
            <table id="dietTable">
                <thead>
                    <tr>
                        <th>Diet ID</th>
                        <th>Diet Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Data will be inserted here dynamically -->
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

            <!-- Add New Diet Plan Form -->
            <div class="add-user-btn">
                <a href="admin_diet_add.jsp">Add New diet</a>
            </div>
        </div>
    </div>
    <!-- Popup Modal for Viewing Diet Details -->
<div id="dietModal" class="modal">
    <div class="modal-content">
        <span class="close-btn" onclick="closeModal()">&times;</span>
        <h2>Diet Plan Details</h2>
        <table id="dietDetailsTable">
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
                <!-- Data will be inserted here dynamically -->
            </tbody>
        </table>
        
          <!-- Additional Information -->
<div id="additionalInfo">
    <h3>Additional Information</h3>
    <ul>
        <li><strong>Calories:</strong> 
            <input type="text" id="calories" value="0" />
        </li>
        <li><strong>Protein:</strong> 
            <input type="text" id="protein" value="0" />
        </li>
        <li><strong>Fat:</strong> 
            <input type="text" id="fat" value="0" />
        </li>
        <li><strong>Carbs:</strong> 
            <input type="text" id="carbs" value="0" />
        </li>
        <li><strong>Fiber:</strong> 
            <input type="text" id="fiber" value="0" />
        </li>
        <li><strong>Iron:</strong> 
            <input type="text" id="iron" value="0" />
        </li>
        <li><strong>Calcium:</strong> 
            <input type="text" id="calcium" value="0" />
        </li>
        <li><strong>Description:</strong> 
            <input type="text" id="dietDescription" value="" />
        </li>
        <li><strong>Image:</strong>
            <img id="dietImage" src="" alt="Diet Image" style="max-width: 300px; margin-top: 10px;" />
            <br />
            <input type="file" id="imageUpload" onchange="uploadImage(event)" />
        </li>
    </ul>
</div>

        <!-- Popup Modal for Saving Diet Changes -->
<div id="confirmationModal" class="modal">
    <div class="modal-content">
        <span class="close-btn" onclick="closeConfirmationModal()">&times;</span>
        <h2>Save Changes?</h2>
        <p>Do you want to save the changes to this diet plan?</p>
        <button class="btn" onclick="saveDietChanges()">Yes, Save</button>
        <button class="btn" onclick="closeConfirmationModal()">No, Cancel</button>
    </div>
</div>
        
        
        <button class="btn" onclick="editDiet()">Edit</button>
        <button class="btn" onclick="closeModal()">Close</button>
    </div>
</div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script>
let currentPage = 1; // Keep track of the current page
const itemsPerPage = 5; // Number of items per page
let usersData = []; // Store fetched data here

window.onload = function() {
    fetchdiet();
    document.getElementById("dietModal").style.display = "none"; // Ensure the modal is hidden on page load
    document.getElementById("confirmationModal").style.display = "none"; // Save modal


};

function fetchdiet() {
	
    const url = "http://localhost:8080/admin/readdietplan"; // Adjust API URL as needed

    // Using callApi function to make the GET request
    callApi("GET", url, "", function(response) {
        usersData = response; // Store data globally
        renderTable(); // Render table for the first time
        //renderPagination(); // Render pagination controls
    });
}

function renderTable() {
    const tableBody = document.querySelector("#dietTable tbody");
    tableBody.innerHTML = ""; // Clear the table before adding new data

    // Calculate the range of items to display for the current page
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = Math.min(startIndex + itemsPerPage, usersData.length);
    const currentPageData = usersData.slice(startIndex, endIndex);

    // Render the rows
    currentPageData.forEach(function(diet) {
        const row = document.createElement("tr");

        row.innerHTML = `
            <td>` + diet.dietId + `</td>
            <td>` + diet.dietName + `</td>
            <td>` + diet.dietDescription + `</td>
            <td>
                <button class="btn" onclick='viewDietDetails(` + JSON.stringify(diet) + `)'>View</button>
                <button class="btn">Delete</button>
            </td>`;
        tableBody.appendChild(row);
    });
    renderPagination();

}
function renderPagination() {
    const paginationContainer = document.querySelector(".pagination");
    paginationContainer.innerHTML = ""; // Clear previous pagination buttons

    const totalPages = Math.ceil(usersData.length / itemsPerPage);

    // Create "Previous" button
    const prevButton = document.createElement("a");
    prevButton.innerHTML = "&laquo;";
    prevButton.href = "#";
    prevButton.onclick = () => {
        if (currentPage > 1) {
            currentPage--;
            renderTable();
        }
    };
    paginationContainer.appendChild(prevButton);

    // Create page number buttons
    for (let i = 1; i <= totalPages; i++) {
        const pageButton = document.createElement("a");
        pageButton.innerHTML = i;
        pageButton.href = "#";
        if (i === currentPage) {
            pageButton.classList.add("active");
        }
        pageButton.onclick = () => {
            currentPage = i;
            renderTable();
        };
        paginationContainer.appendChild(pageButton);
    }

    // Create "Next" button
    const nextButton = document.createElement("a");
    nextButton.innerHTML = "&raquo;";
    nextButton.href = "#";
    nextButton.onclick = () => {
        if (currentPage < totalPages) {
            currentPage++;
            renderTable();
        }
    };
    paginationContainer.appendChild(nextButton);
}
function viewDietDetails(diet) {
	console.log(diet)
    const modal = document.getElementById("dietModal");
    const tableBody = document.querySelector("#dietDetailsTable tbody");
    tableBody.innerHTML = ""; // Clear previous data
    const rowMonday = document.createElement("tr");
    rowMonday.innerHTML = `
        <td>Day 1</td>
        <td><input type="text" id="mondayBreakfast" value="`+ diet.mondayBreakfast+`" /></td>
        <td><input type="text" id="mondayLunch" value="`+diet.mondayLunch+`" /></td>
        <td><input type="text" id="mondayDinner" value="`+diet.mondayDinner+`" /></td>
        <td><input type="text" id="mondaySnacks" value="`+diet.mondaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowMonday);

    const rowTuesday = document.createElement("tr");
    rowTuesday.innerHTML = `
        <td>Day 2</td>
        <td><input type="text" id="tuesdayBreakfast" value="`+diet.tuesdayBreakfast+`" /></td>
        <td><input type="text" id="tuesdayLunch" value="`+diet.tuesdayLunch+`" /></td>
        <td><input type="text" id="tuesdayDinner" value="`+diet.tuesdayDinner+`" /></td>
        <td><input type="text" id="tuesdaySnacks" value="`+diet.tuesdaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowTuesday);

    const rowWednesday = document.createElement("tr");
    rowWednesday.innerHTML = `
        <td>Day 3</td>
        <td><input type="text" id="wednesdayBreakfast" value="`+diet.wednesdayBreakfast+`" /></td>
        <td><input type="text" id="wednesdayLunch" value="`+diet.wednesdayLunch+`" /></td>
        <td><input type="text" id="wednesdayDinner" value="`+diet.wednesdayDinner+`" /></td>
        <td><input type="text" id="wednesdaySnacks" value="`+diet.wednesdaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowWednesday);

    const rowThursday = document.createElement("tr");
    rowThursday.innerHTML = `
        <td>Day 4</td>
        <td><input type="text" id="thursdayBreakfast" value="`+diet.thursdayBreakfast+`" /></td>
        <td><input type="text" id="thursdayLunch" value="`+diet.thursdayLunch+`" /></td>
        <td><input type="text" id="thursdayDinner" value="`+diet.thursdayDinner+`" /></td>
        <td><input type="text" id="thursdaySnacks" value="`+diet.thursdaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowThursday);

    const rowFriday = document.createElement("tr");
    rowFriday.innerHTML = `
        <td>Day 5</td>
        <td><input type="text" id="fridayBreakfast" value="`+diet.fridayBreakfast+`" /></td>
        <td><input type="text" id="fridayLunch" value="`+diet.fridayLunch+`" /></td>
        <td><input type="text" id="fridayDinner" value="`+diet.fridayDinner+`" /></td>
        <td><input type="text" id="fridaySnacks" value="`+diet.fridaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowFriday);

    const rowSaturday = document.createElement("tr");
    rowSaturday.innerHTML = `
        <td>Day 6</td>
        <td><input type="text" id="saturdayBreakfast" value="`+diet.saturdayBreakfast+`" /></td>
        <td><input type="text" id="saturdayLunch" value="`+diet.saturdayLunch+`" /></td>
        <td><input type="text" id="saturdayDinner" value="`+diet.saturdayDinner+`" /></td>
        <td><input type="text" id="saturdaySnacks" value="`+diet.saturdaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowSaturday);

    const rowSunday = document.createElement("tr");
    rowSunday.innerHTML = `
        <td>Day 7</td>
        <td><input type="text" id="sundayBreakfast" value="`+diet.sundayBreakfast+`" /></td>
        <td><input type="text" id="sundayLunch" value="`+diet.sundayLunch+`" /></td>
        <td><input type="text" id="sundayDinner" value="`+diet.sundayDinner+`" /></td>
        <td><input type="text" id="sundaySnacks" value="`+diet.sundaySnacks+`" /></td>
    `;
    tableBody.appendChild(rowSunday);

    document.getElementById("calories").value = diet.calories;
    document.getElementById("protein").value = diet.protein;
    document.getElementById("fat").value = diet.fat;
    document.getElementById("carbs").value = diet.carbs;
    document.getElementById("fiber").value = diet.fiber;
    document.getElementById("iron").value = diet.iron;
    document.getElementById("calcium").value = diet.calcium;
    document.getElementById("dietDescription").value = diet.dietDescription;

    // Convert the base64 string to a data URL for the image
    if (diet.image) {
        const base64Image = diet.image;
        document.getElementById("dietImage").src = `data:image/jpeg;base64,`+ base64Image+``;
    } else {
        document.getElementById("dietImage").src = ""; // Empty source if no image
    }


    modal.style.display = "flex"; // Open the modal
}

function closeModal() {
    const modal = document.getElementById("dietModal");
    modal.style.display = "none"; // Close the modal
}

function editDiet() {
    const inputs = document.querySelectorAll("#dietDetailsTable input");
    inputs.forEach(input => {
        input.disabled = false; // Enable editing of fields
    });

    // Show the confirmation modal instead of adding a save button directly
    const confirmationModal = document.getElementById("confirmationModal");
    confirmationModal.style.display = "flex"; // Open the modal
}

function closeConfirmationModal() {
    const confirmationModal = document.getElementById("confirmationModal");
    confirmationModal.style.display = "none"; // Close the modal
}
function saveDietChanges() {
    const dietDetails = {};

    // Get the new values from the inputs in the modal
    dietDetails.calories = document.getElementById("calories").value;
    dietDetails.protein = document.getElementById("protein").value;
    dietDetails.fat = document.getElementById("fat").value;
    dietDetails.carbs = document.getElementById("carbs").value;
    dietDetails.fiber = document.getElementById("fiber").value;
    dietDetails.iron = document.getElementById("iron").value;
    dietDetails.calcium = document.getElementById("calcium").value;
    dietDetails.dietDescription = document.getElementById("dietDescription").value;
	dietDetails.mondayBreakfast=document.getElementById("mondayBreakfast").value;
	console.log(mondayBreakfast);

    
    const base64Image = document.getElementById("dietImage").src;
    if (base64Image) {
        dietDetails.image = base64Image.split(',')[1]; // Extract the base64 string from the data URL
    }

    // Log the updated values to the console
    const jsonData = JSON.stringify(dietDetails);
    console.log("Updated Diet Plan:", dietDetails);
    console.log(jsonData)
	var url="http://localhost:8080/admin/updatedietplan"
	callApi("POST",url,jsonData,updateHandler);
    // Optional: After saving the changes, close the modal
    closeModal();
    closeConfirmationModal();

}
function updateHandler(response){
	console.log(response.msg);
}

function uploadImage(event) {
    const file = event.target.files[0]; // Get the selected file
    if (file) {
        const reader = new FileReader();
        
        // Convert the image to base64 string
        reader.onloadend = function() {
            const base64Image = reader.result.split(',')[1]; // Extract base64 string without the data URL prefix
            document.getElementById("dietImage").src = reader.result; // Display the image in the modal
            // You can store or send the base64Image to your backend if necessary
            console.log(base64Image); // Log for debugging, remove in production
        };
        
        reader.readAsDataURL(file); // Start reading the file as a Data URL
    }
}

</script>
</html>
