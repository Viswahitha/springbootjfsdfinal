<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Steps to Distance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f8fa;
            margin: 0;
            padding: 0;
            position: relative;
            overflow: hidden;
        }

        /* Blurred background image */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('https://images.unsplash.com/photo-1490818387583-1baba5e638af?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            filter: blur(8px);
            z-index: -1;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
            position: relative;
            z-index: 1;
            margin-left: auto;
            margin-right: 50px; /* This will shift the form towards the right */
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #888;
            margin-bottom: 30px;
        }

        .unit-selector {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .unit-selector label {
            font-weight: 600;
            color: #333;
        }

        .input-fields {
            margin-bottom: 30px;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            font-weight: 600;
            color: #333;
        }

        input[type="number"] {
            width: 100px;
            padding: 8px;
            margin-top: 8px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .pace-options {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .pace-button {
            padding: 10px 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f5f6f7;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .pace-button:hover {
            background-color: #ddd;
        }

        .pace-button.active {
            background-color: #ff5a5f;
            color: #fff;
            border-color: #ff5a5f;
        }

        .calculate-btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .calculate-btn {
            background-color: #ff5a5f;
            color: #fff;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            margin-right: 10px;
        }

        .calculate-btn:hover {
            background-color: #ff474b;
        }

        .back-btn {
            background-color: #ff5a5f;
            color: #fff;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        .back-btn:hover {
            background-color: #ff474b;
        }

        /* Message Box */
        .message-box {
            background-color: #f5f6f7;
            padding: 20px;
            margin-top: 20px;
            border-radius: 5px;
            display: none;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            border: 2px solid #ff5a5f;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h1>Steps to Distance</h1>
            <p>Enter a few things below and find out!</p>
            
            <div class="unit-selector">
                <label for="imperial">Imperial</label>
                <input type="radio" id="imperial" name="unit" checked>
                <label for="metric">Metric</label>
                <input type="radio" id="metric" name="unit">
            </div>
            
            <div class="input-fields">
                <div class="input-group">
                    <label for="steps">Total steps</label>
                    <input type="number" id="steps" value="34">
                </div>

                <div class="input-group">
                    <label for="height-feet">Your height</label>
                    <input type="number" id="height-feet" value="5" min="0">
                    <input type="number" id="height-inches" value="2" min="0">
                </div>
                
                <div class="input-group">
                    <label>Your pace (Time)</label>
                    <div class="pace-options">
                        <button class="pace-button" data-time="10">10 minutes</button>
                        <button class="pace-button" data-time="12">12 minutes</button>
                        <button class="pace-button" data-time="15">15 minutes</button>
                        <button class="pace-button" data-time="18">18 minutes</button>
                        <button class="pace-button" data-time="20">20 minutes</button>
                        <button class="pace-button" data-time="25">25 minutes</button>
                    </div>
                </div>
            </div>
            
            <div class="calculate-btn-container">
                <button id="calculate" class="calculate-btn">Calculate</button>
                <button id="back" class="back-btn" onclick="window.history.back();">Back</button>
            </div>

            <div class="message-box" id="messageBox">
                Distance: <span id="distance">0</span> km
            </div>
        </div>
    </div>

    <script>
        let selectedTime = 10;

        // Pace button selection
        document.querySelectorAll('.pace-button').forEach(button => {
            button.addEventListener('click', function() {
                document.querySelectorAll('.pace-button').forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                selectedTime = this.dataset.time;
                console.log(Selected Time: ${selectedTime} min);
            });
        });

        // Calculate distance when 'Calculate' button is clicked
        document.getElementById('calculate').addEventListener('click', function() {
            const totalSteps = document.getElementById('steps').value;
            const heightFeet = document.getElementById('height-feet').value;
            const heightInches = document.getElementById('height-inches').value;

            // Convert height to inches and calculate step length
            const heightInInches = (parseInt(heightFeet) * 12) + parseInt(heightInches);
            const stepLength = (heightInInches * 0.413);  // Approximate step length in inches based on height
            
            // Convert step length to meters for Metric, or to feet for Imperial
            let distanceInMeters = (totalSteps * stepLength * 0.0254); // Convert inches to meters for Metric
            let distanceInFeet = (totalSteps * stepLength * 0.08333); // Convert inches to feet for Imperial

            // Convert distance to km for Metric, miles for Imperial
            let distance = 0;
            const isImperial = document.getElementById('imperial').checked;
            if (isImperial) {
                distance = (distanceInFeet / 5280).toFixed(2); // Convert feet to miles
            } else {
                distance = (distanceInMeters / 1000).toFixed(2); // Convert meters to km
            }

            // Display the result
            document.getElementById('distance').textContent = distance;
            document.getElementById('messageBox').style.display = 'block';
        });
    </script>
</body>
</html>