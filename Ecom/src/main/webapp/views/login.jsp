<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - E-Shop</title>

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
        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .login-container h2 {
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
        input[type="text"], input[type="password"] {
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
        .error {
            color: red;
            font-size: 0.9rem;
            margin-top: 10px;
            text-align: center;
        }
        .register-link {
            margin-top: 15px;
            text-align: center;
        }
        .register-link a {
            color: #007bff;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>

    <script>
        function validateForm(event) {
            let isValid = true;

            const email = document.getElementById("email");
            const password = document.getElementById("password");

            email.classList.remove("is-invalid");
            password.classList.remove("is-invalid");

            if (email.value.trim() === "") {
                email.classList.add("is-invalid");
                isValid = false;
            }
            if (password.value.trim() === "") {
                password.classList.add("is-invalid");
                isValid = false;
            }

            if (!isValid) event.preventDefault();
        }
    </script>
</head>
<body>

    <div class="login-container">
        <h2>Login to E-Shop</h2>
        <form action="home" onsubmit="validateForm(event)">
            <div class="input-group">
                <span class="input-group-text">
                    <i class="fas fa-envelope"></i>
                </span>
                <input type="text" id="email" name="email" class="form-control" placeholder="Email" autocomplete="off">
            </div>

            <div class="input-group">
                <span class="input-group-text">
                    <i class="fas fa-lock"></i>
                </span>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password">
            </div>

            <input type="submit" value="Login">

            <% 
                String errorMessage = request.getParameter("error");
                if (errorMessage != null) {
            %>
                <p class="error"><%= errorMessage %></p>
            <% } %>
        </form>

        <div class="register-link">
            <p>Not registered? <a href="register">Register here</a></p>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
