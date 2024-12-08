<%@page import="klu.model.Signup"%>
<%
//Ikkada manam broswer lo set cheskunna session varible ni techukuntunnam using session.getAttribute("sessionvarible-name")
//kani aa session varaible ni tecchukunnappudu manam aa session object ni manaku kavalsina object loki typecast checkovali.
//Ikkada case session aney object Signup model object ga typecast avuthundhi.
//ikkda ippudu manam tecchukunna object user aney varaible lo store ayyi undhi.Ee user aney varaible use chesi aa object lo properties ni manam access cheyyachu like name,email, etc.
Signup user = (Signup)session.getAttribute("user");

if(user==null){
	/* System.out.print("No session Found"); */
	response.sendRedirect("expired");
	return;
	//Idhi session handling ki use chestharu for example user aney session ledhu antey aa session expire ayyidhi ani ardham.
	
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitPlate - Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            height: 100vh;
        }
         header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            border-bottom: 2px solid #C70039;
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

        .profile-container {
            background-color: white;
            max-width: 600px;
            min-height: calc(100vh - 60px); /* Adjust height to fill the screen */
            margin: 0 auto;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }
        .profile-container .avatar {
            width: 100px;
            height: 100px;
            background-color: #3498db;
            color: white;
            font-size: 36px;
            line-height: 100px;
            border-radius: 50%;
            margin: 0 auto 20px;
        }
        .profile-container h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .profile-container p {
            margin: 5px 0;
        }
        .profile-container .label {
            font-weight: bold;
        }
    </style>
</head>
<body>

    <!-- Header Navigation Bar -->
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

    <div class="profile-container">
        <div class="avatar">JD</div>
        
        <h2><%=user.getFname()+" "+user.getLname() %></h2>
        <p><span class="label">Email:</span> <%=user.getEmail() %></p>
        <p><span class="label">Age:</span> 28</p>
        <p><span class="label">Height:</span> 175 cm</p>
        <p><span class="label">Weight:</span> 70 kg</p>
        <p><span class="label">Diet Preferences:</span> Vegetarian</p>
        <p><span class="label">Goals:</span> Weight loss, Muscle gain</p>
    </div>

</body>
</html>
