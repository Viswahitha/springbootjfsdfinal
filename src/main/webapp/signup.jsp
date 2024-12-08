<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up - FitPlate</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            color: #2D2D2D;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-image: url('/images/backgroundright.avif'); /* Update this with your image URL */
            background-size: cover; /* Adjust to fit the screen */
            background-position: center; /* Center the background */
        }

        /* Header Styles */
        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            border-bottom: 2px solid #C70039;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: space-between; /* Aligns items to corners */
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


        .logo-title {
            font-size: 1.7rem;
            font-weight: bold;
            color: white;
        }

        /* Signup Section Styles */
        .signup-container {
            max-width: 500px;
            margin: 5rem auto;
            margin-left: 100px; /* Shift the form to the right by 100px */
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            padding: 2rem;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            color: white; /* Text color adjusted for contrast */
        }

        .signup-container h2 {
            text-align: center;
            font-family: 'Playfair Display', serif;
            color: #C70039; /* Header color */
            margin-bottom: 1.5rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Light border for visibility */
            border-radius: 5px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            color: white; /* Change text color to white for contrast */
        }

        .form-group input:focus {
            border-color: #C70039; /* Highlight border on focus */
            outline: none;
            background-color: rgba(0, 0, 0, 0.7); /* Darker on focus */
        }

        .btn {
            background-color: #C70039;
            color: white;
            padding: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #FFC300; /* Hover effect */
            color: #2D2D2D;
        }

        /* Footer Styles */
        footer {
            background-color: #2D2D2D;
            color: white;
            text-align: center;
            padding: 1.5rem;
            margin-top: 2rem;
        }

        footer p {
            margin: 0;
            font-size: 1rem;
        }
    </style>
</head>
<body>
     <header>
      <nav>
            <div class="logo">
                <img src="/images/fitplate.jpg" alt="Logo">
                <span class="logo-title">FitPlate</span>
            </div>
            <ul class="nav-links">
                <li><a href="#about-section">About</a></li>
                <li><a href="#info">Info</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#contact-section">Contact</a></li>
                <li><a href="/signin" class="signin">Sign In</a></li> <!-- Added Sign In button -->
            </ul>
        </nav>
    </header>

    <div class="signup-container">
        <h2>Create an Account</h2>
        <form  method="POST">
            <div class="form-group">
                <label for="name">First Name</label>
                <input type="text" id="fname" name="fname" required>
            </div>
             <div class="form-group">
                <label for="name">Last Name</label>
                <input type="text" id="lname" name="lname" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" id="confirmpassword" name="confirmpassword" required>
            </div>
            <button type="button" onclick="signup()" class="btn">Sign Up</button>
        </form>
        <p>Have an account?SignIn <a href="signin.jsp">Sign In</a></p> 
    </div>

    <footer>
        <p>&copy; 2024 FitPlate. All rights reserved.</p>
    </footer>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript"> 
function signup(){
	var fname=document.getElementById("fname");
	var lname=document.getElementById("lname");
	var email=document.getElementById("email");
	var password=document.getElementById("password");
	var confirmpassword=document.getElementById("confirmpassword");
	 if(password.value != confirmpassword.value) {
	        alert("Passwords do not match");
	        return;
	    }
	var data= JSON.stringify({
		fname: fname.value,
		lname: lname.value,
		email: email.value,
		password: password.value
	});
	var url="http://localhost:8080/user/save"
	callApi("POST",url,data,saveHandler);
	return;
	}
	

function saveHandler(response)
{
	console.log("Server response:", response);
	alert(response.msg);
	if(response.code==200){
		window.location.href="/signin.jsp";
	}
	/*if(response.code=="200")
		L1.style.color="green";
	else
		L1.style.color="red";
	L1.innerHTML=response.msg;*/
}
</script>
</html>
