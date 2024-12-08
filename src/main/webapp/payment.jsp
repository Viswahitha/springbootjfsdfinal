<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Membership Module</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-image: url('https://images.unsplash.com/photo-1490818387583-1baba5e638af?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            overflow: hidden;
        }

        .membership-module {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 1.8rem;
            color: #222;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
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
        }

        input[type="radio"] {
            margin-right: 10px;
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
        }

        button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="membership-module">
        <h1>Choose Your Membership</h1>
        <form action="Onlinepayment.jsp" method="post">
            <div class="form-group">
                <label>
                    <input type="radio" name="membership" value="1-month - $10" required>
                    1 Month - $10
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="radio" name="membership" value="3-months - $25">
                    3 Months - $25
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="radio" name="membership" value="6-months - $45">
                    6 Months - $45
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="radio" name="membership" value="1-year - $80">
                    1 Year - $80
                </label>
            </div>
            <button type="submit">Subscribe</button>
        </form>
    </div>
</body>
</html>