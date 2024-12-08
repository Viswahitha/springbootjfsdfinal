<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Online Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
            overflow-y: auto; /* Enables scrolling if content overflows */
        }

        .payment-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            text-align: center;
            overflow-y: auto; /* Ensures the form is scrollable */
        }

        h1 {
            margin-bottom: 20px;
            font-size: 1.8rem;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Align form elements to the left */
        }

        .form-group {
            margin-bottom: 15px;
            width: 100%;
        }

        label {
            font-size: 1.2rem;
            color: #333;
            display: block;
            margin-bottom: 5px;
            text-align: left; /* Ensure labels are left-aligned */
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        .hidden-fields {
            display: none;
            width: 100%;
        }

        .payment-methods img {
            width: 50px;
            margin: 10px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
            transition: background 0.3s;
            margin-top: 20px;
        }

        button:hover {
            background: #218838;
        }
    </style>
    <script>
        function toggleCardFields() {
            var paymentMethod = document.querySelector('input[name="payment-method"]:checked').value;
            var cardFields = document.getElementById("card-fields");

            if (paymentMethod === "credit-card" || paymentMethod === "debit-card") {
                cardFields.style.display = "block";
            } else {
                cardFields.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <div class="payment-container">
        <h1>Choose Your Payment Method</h1>
        <form action="confirmation.jsp" method="post">
            <div class="form-group">
                <label>
                    <input type="radio" name="payment-method" value="gpay" onclick="toggleCardFields()" required>
                    Gpay
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="radio" name="payment-method" value="credit-card" onclick="toggleCardFields()">
                    Credit Card
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="radio" name="payment-method" value="debit-card" onclick="toggleCardFields()">
                    Debit Card
                </label>
            </div>

            <!-- Credit/Debit Card fields (hidden initially) -->
            <div id="card-fields" class="hidden-fields">
                <div class="form-group">
                    <label for="card-number">Card Number</label>
                    <input type="text" id="card-number" class="input-field" placeholder="Enter card number" />
                </div>
                <div class="form-group">
                    <label for="cvv">CVV</label>
                    <input type="text" id="cvv" class="input-field" placeholder="Enter CVV" />
                </div>
                <div class="form-group">
                    <label for="expiry-date">Expiry Date</label>
                    <input type="text" id="expiry-date" class="input-field" placeholder="MM/YY" />
                </div>
            </div>

            <button type="submit">Proceed</button>
        </form>
    </div>
</body>
</html>