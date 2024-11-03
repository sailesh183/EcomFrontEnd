<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - EShop</title>

    <style>
        /* Global Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f3f4f6;
            color: #333;
        }

        /* Hero Section */
        .about-hero {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: white;
            text-align: center;
            padding: 10px 10px;
        }

        .about-hero h1 {
            font-size: 2rem;
            margin: 0;
        }

        /* About Container */
        .about-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 30px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .about-container h2 {
            margin-top: 30px;
            color: #333;
            border-bottom: 2px solid #00b4d8;
            padding-bottom: 10px;
            display: inline-block;
        }

        .about-container p {
            font-size: 1.1rem;
            line-height: 1.8;
            margin: 15px 0;
        }

        .about-container ul {
            list-style: none;
            padding: 0;
        }

        .about-container ul li {
            margin: 10px 0;
            font-size: 1rem;
            padding-left: 20px;
            position: relative;
        }

        .about-container ul li::before {
            content: "✔";
            color: #00b4d8;
            position: absolute;
            left: 0;
            top: 0;
            font-size: 1.2rem;
            margin-right: 5px;
        }

        /* Links */
        .about-container a {
            color: #0077b6;
            text-decoration: none;
            transition: color 0.3s;
        }

        .about-container a:hover {
            color: #023e8a;
        }

        /* Footer */
        footer {
            margin-top: 40px;
            text-align: center;
            font-size: 0.9rem;
            color: #666;
        }
    </style>
</head>
<body>
    
    <div class="about-hero">
        <h1>About Us</h1>
    </div>

    <div class="about-container">
        <p>
            Welcome to <strong><%= request.getAttribute("companyName") != null 
                ? request.getAttribute("companyName") : "EShop" %></strong>, your one-stop destination 
            for all your shopping needs. We offer high-quality products at competitive prices 
            while ensuring a seamless shopping experience.
        </p>

        <h2>Our Mission</h2>
        <p>
            At <strong>YourShop</strong>, our mission is to bring the latest products to your doorstep, 
            ensuring satisfaction with every purchase. We empower customers with access to trusted brands 
            and excellent service.
        </p>

        <h2>What We Offer</h2>
        <ul>
            <li>A wide range of categories, including fashion, electronics, and home essentials.</li>
            <li>Exclusive discounts and deals throughout the year.</li>
            <li>Fast and secure shipping for timely deliveries.</li>
            <li>Easy returns and 24/7 customer support.</li>
        </ul>

        <h2>Why Shop With Us?</h2>
        <p>
            Quality, reliability, and transparency are our core values. Join thousands of happy customers 
            and explore our collection today!
        </p>

        <h2>Contact Us</h2>
        <p>
            Have questions? Reach out at 
            <a href="mailto:<%= request.getAttribute("supportEmail") != null 
                ? request.getAttribute("supportEmail") : "support@eshop.com" %>">
                <%= request.getAttribute("supportEmail") != null 
                    ? request.getAttribute("supportEmail") : "support@eshop.com" %>
            </a>.
        </p>

        <footer>
            <p>&copy; <%= new Date().getYear() + 1900 %> YourShop. All rights reserved.</p>
        </footer>
    </div>

</body>
</html>
