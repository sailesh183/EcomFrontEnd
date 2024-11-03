<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - E-Shop</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f3f4f6;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }
        .register-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            position: relative; /* Ensure relative positioning for absolute child elements */
        }
        .register-container h2 {
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            color: #333;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group-text {
            background-color: #007bff;
            color: white;
            border: none;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            border-radius: 0 5px 5px 0;
            border: 1px solid #ddd;
            padding: 10px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .password-tooltip {
            display: none;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            position: absolute;
            margin-top: 5px;
            left: 0;
            font-size: 0.85em;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }
        .error {
            color: red;
            font-size: 0.9em;
            margin-top: 10px;
        }
        .form-group {
            position: relative;
        }
    </style>

    <script>
        function validateForm(event) {
            const password = document.getElementById("password");
            const confirmPassword = document.getElementById("confirmPassword");
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            password.classList.remove("is-invalid");
            confirmPassword.classList.remove("is-invalid");

            let isValid = true;

            if (!passwordPattern.test(password.value)) {
                alert("Password must be at least 8 characters long, with one uppercase letter, one lowercase letter, one number, and one special character.");
                password.classList.add("is-invalid");
                isValid = false;
            }

            if (password.value !== confirmPassword.value) {
                alert("Passwords do not match.");
                confirmPassword.classList.add("is-invalid");
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault();
            }
        }

        // Show the tooltip when the password input is focused
        function showTooltip() {
            document.querySelector('.password-tooltip').style.display = 'block';
        }

        // Hide the tooltip when the password input loses focus
        function hideTooltip() {
            document.querySelector('.password-tooltip').style.display = 'none';
        }
    </script>
</head>
<body>

    <div class="register-container">
        <h2>Register</h2>
        <form action="register" method="post" onsubmit="validateForm(event)">
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="First Name" required>
            </div>

            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Last Name" required>
            </div>

            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                <input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required onfocus="showTooltip()" onblur="hideTooltip()">
                <div class="password-tooltip">
                    Password must contain:
                    <ul>
                        <li>At least 8 characters</li>
                        <li>One uppercase letter</li>
                        <li>One lowercase letter</li>
                        <li>One number</li>
                        <li>One special character (@, $, !, %, *, ?, &)</li>
                    </ul>
                </div>
            </div>
            <br/>
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm Password" required>
            </div>

            <input type="submit" value="Register">
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
