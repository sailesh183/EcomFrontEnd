<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>

    <style>
        /* Global Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
        }

        /* Header Section */
        .header {
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            padding: 10px 10px;
            color: white;
            text-align: center;
        }

        .header h2 {
            font-size: 2rem;
            margin: 0;
        }

        /* Contact Container */
        .contact-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .contact-container p {
            font-size: 1.2rem;
            margin: 20px 0;
            color: #333;
        }

        .contact-container a {
            color: #0077b6;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .contact-container a:hover {
            color: #023e8a;
        }

        /* Footer Section */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #0077b6;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h2>Contact Us</h2>
    </div>

    <!-- Contact Information Section -->
    <div class="contact-container">
        <p>
            📧 Email: 
            <a href="mailto:saileshpotti369@gmaiil.com">saileshpotti369@gmaiil.com</a>
        </p>
        <p>
            📞 Mobile: 
            <a href="tel:+917981555822">7981555822</a>
        </p>
    </div>

    <!-- Footer Section -->
    <footer>
        &copy; <%= new java.util.Date().getYear() + 1900 %> YourShop. All rights reserved.
    </footer>

</body>
</html>
