<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Diet Balancer App</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            color: #2D2D2D;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        /* Smooth scrolling */
        html {
            scroll-behavior: smooth;
        }

        /* Header Styles */
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

        /* Hero Section Styles */
        .hero {
            background-image: url('/images/backgroundright.avif');
            background-size: cover;
            background-position: center;
            padding: 10rem 2rem;
            text-align: center;
            color: #2D2D2D;
        }

        .hero-content h1 {
            font-family: 'Playfair Display', serif;
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            color: #002147;
        }

        .hero-content p {
            font-size: 1.4rem;
            margin-bottom: 2.5rem;
            color: white;
        }

        .cta-buttons a {
            background-color: #C70039;
            color: white;
            padding: 1rem 2.5rem;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1.2rem;
            margin-right: 1.5rem;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .cta-buttons a.secondary {
            background-color: #FFC300;
        }

        /* About FitPlate Section Styles */
        .about-fitplate {
            background-image: url('/images/background.jpg');
            background-size: cover;
            background-position: center;
            padding: 8rem 2rem;
            text-align: center;
            color: #FFF;
            position: relative;
        }

        .about-fitplate .card {
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            padding: 3rem;
            max-width: 700px;
            margin: 0 auto;
            text-align: left;
            color: #002147;
        }

        .about-fitplate h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
        }

        .about-fitplate p {
            font-size: 1.2rem;
            line-height: 1.8;
        }

        /* Info Cards Section Styles */
        .info-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 5rem 2rem;
            background-color: #F0F0F0;
        }

        .card {
            background-color: white;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.05);
            border-radius: 10px;
            padding: 2rem;
            margin: 1.5rem;
            width: 28%;
            border-left: 5px solid #C70039;
        }

        .card h3 {
            font-family: 'Playfair Display', serif;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
            color: #002147;
        }

        .card p {
            font-size: 1.1rem;
            color: #555;
        }

        /* Contact Us Section */
        .contact-us {
            background-color: #002147; /* A deep blue background for contrast */
            color: white;
            padding: 5rem 2rem;
            text-align: center;
            margin-bottom: 0; /* Removed margin to eliminate gap with footer */
        }

        .contact-us h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
            color: #FFC300; /* Gold color for heading */
        }

        .contact-us p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 1rem;
        }

        .contact-info {
            margin-top: 2rem;
        }

        .contact-info p {
            font-size: 1.2rem;
            margin: 0.5rem 0;
        }

        .contact-info p strong {
            color: #FFC300; /* Gold for labels like Email, Phone, Address */
        }

        /* FAQ Section Styling */
        .faq-section {
            padding: 5rem 2rem;
            background-color: #F7F3EF;
            color: #002147;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .faq-container {
            display: flex;
            max-width: 1200px;
            width: 100%;
        }

        /* Left side: Image */
        .faq-image {
            flex: 1;
            width: calc(100% + 40px); /* Extend image width by 40px */
            margin-right: 2rem;
            height: 300px; /* Adjust the height as needed */
            margin-left: -40px; /
        }

        .faq-image img {
            width: 100%;
            border-radius: 10px;
            object-fit: cover;
        }

        /* Right side: FAQ Cards */
        .faq-cards {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .faq-card {
            background-color: white;
            border-left: 5px solid #C70039;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            margin-bottom: 1.5rem;
            border-radius: 10px;
        }

        .faq-card h3 {
            font-size: 1.6rem;
            margin-bottom: 0.5rem;
        }

        .faq-card p {
            font-size: 1.2rem;
            color: #555;
        }

        /* Ensure cards stack vertically on small screens */
        @media (max-width: 768px) {
            .faq-container {
                flex-direction: column;
            }

            .faq-image {
                margin-right: 0;
                margin-bottom: 2rem;
            }

            .faq-cards {
                flex-direction: column;
            }
        }

        /* Footer Styles */
        footer {
            background-color: #2D2D2D;
            color: white;
            text-align: center;
            padding: 1.5rem;
            margin-top: 0; /* Removed margin to eliminate gap with contact section */
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
                <li><a href="#info-cards">Info</a></li>
                <li><a href="#faq-section">FAQ</a></li>
                <li><a href="#contact-section">Contact</a></li>
                <li><a href="signin.jsp" class="signin">Sign In</a></li> <!-- Added Sign In button -->
            </ul>
        </nav>
    </header>


    <section class="hero">
        <div class="hero-content">
            <h1>Balance Your Diet, Improve Your Health</h1>
            <p>Analyze your dietary habits, get personalized diet recommendations, and track nutrient intake with FitPlate, the smart app designed for your health.</p>
            <div class="cta-buttons">
                <a href="signin.jsp" class="primary">SignIn</a>
                <a href="signup.jsp" class="secondary">SignUp</a>

            </div>
        </div>
    </section>

    <section class="about-fitplate" id="about-section">
        <div class="card">
            <h2>About FitPlate</h2>
            <p>FitPlate is designed to help users balance their diets by providing tools to track nutrient intake and offering personalized meal recommendations.</p>
        </div>
    </section>

    <section class="info-cards" id="info-cards">
        <div class="card">
            <h3>Personalized Plans</h3>
            <p>Get meal plans tailored to your dietary preferences and goals.</p>
        </div>
        <div class="card">
            <h3>Track Your Intake</h3>
            <p>Monitor your nutrient intake and understand your dietary habits better.</p>
        </div>
        <div class="card">
            <h3>Health Insights</h3>
            <p>Receive health insights based on your food intake and lifestyle choices.</p>
        </div>
    </section>

    

    <section class="faq-section" id="faq-section">
        <div class="faq-container">
            <!-- Left side: Image -->
            <div class="faq-image">
                <img src="/images/backgroud2.jpg" alt="FAQ Image">
            </div>

            <!-- Right side: FAQ Cards -->
            <div class="faq-cards">
                <div class="faq-card">
                    <h3>What is FitPlate?</h3>
                    <p>FitPlate is an app that helps you balance your diet by providing personalized meal plans, tracking your nutrient intake, and offering health insights.</p>
                </div>

                <div class="faq-card">
                    <h3>How do I sign up for FitPlate?</h3>
                    <p>You can sign up by clicking on the "Sign Up" button on the homepage and following the instructions to create an account.</p>
                </div>

                <div class="faq-card">
                    <h3>Is FitPlate free?</h3>
                    <p>FitPlate offers both free and premium subscription plans. The free plan includes basic features, while the premium plan offers more advanced features like personalized coaching.</p>
                </div>
            </div>
        </div>
    </section>
<section class="contact-us" id="contact-section">
        <h2>Contact Us</h2>
        <p>If you have any questions or need assistance, feel free to reach out!</p>
        <div class="contact-info">
            <p><strong>Email:</strong> support@fitplate.com</p>
            <p><strong>Phone:</strong> +1 (234) 567-8901</p>
            <p><strong>Address:</strong> 123 Healthy St, Wellness City, HC 12345</p>
        </div>
    </section>
    <footer>
        <p>&copy; 2024 FitPlate. All rights reserved.</p>
    </footer>
</body>
</html>
