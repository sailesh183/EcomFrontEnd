<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - E-commerce</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- Custom CSS -->
    <style>
        /* Navbar Styling */
        .navbar {
            background-color: #343a40; /* Dark background */
        }
        .navbar-brand, .nav-link {
            color: white !important;
        }
        .navbar-brand i {
            margin-right: 8px;
        }
        .navbar-nav .nav-link:hover {
            color: #f8f9fa !important; /* Light hover effect */
            background-color: #495057;
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Page Background and Content */
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            color: #343a40;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            text-align: center;
            font-size: 18px;
            color: #6c757d;
        }

        /* Product Card Styles */
        .card {
            border: none;
            border-radius: 10px;
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        /* Set fixed height for product images */
        .card-img-top {
            height: 200px; /* Fixed height */
            object-fit: contain; /* Maintain aspect ratio */
        }

        /* Footer Styling */
        .footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="fas fa-shopping-cart"></i> E-Shop
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary nav-link text-white" href="login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <h1>Welcome to E-Shop!</h1>
        <p>Your one-stop destination for all your shopping needs.</p>

        <!-- Products Section -->
        <div class="row">
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-blue-witb-202209_FMT_WHH?wid=560&hei=744&fmt=jpeg&qlt=90&.v=1660679135472" class="card-img-top" alt="iPhone 14">
                    <div class="card-body">
                        <h5 class="card-title">iPhone 14</h5>
                        <p class="card-text">$999.00</p>
                        <a href="product-detail?id=iphone14" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/ipad-air-storage-select-202405-11inch-starlight-wifi_FMT_WHH?wid=1280&hei=720&fmt=p-jpg&qlt=80&.v=TENLTVRoeFdHUUI5ZE1ZZmxpQUlNMm5pQUoxb0NIVEJFSjRVRzZ4dzV5UUlEcGtXd28zb0o3S2tQV3RUSEhpaGxzVWxuaTA3UGxIdzhKNUtuSEF5VlVtYW1kMXNQLzdDd2NuUVFzTDNlZmEyTE1mSHgwMHh1SlVoUDJNTksyTUZHVHhra3BlaEFzL2ZuQnhySE81cXh3&traceId=1" class="card-img-top" alt="iPad Air">
                    <div class="card-body">
                        <h5 class="card-title">iPad Air</h5>
                        <p class="card-text">$599.00</p>
                        <a href="product-detail?id=ipad-air" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://www.apple.com/newsroom/images/product/mac/standard/Apple_MacBook-Pro_16-inch-Screen_10182021_big_carousel.jpg.slideshow-xlarge.jpg" class="card-img-top" alt="MacBook Pro">
                    <div class="card-body">
                        <h5 class="card-title">MacBook Pro</h5>
                        <p class="card-text">$1299.00</p>
                        <a href="product-detail?id=macbook-pro" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://www.apple.com/v/airpods-pro/m/images/meta/og__eui2mpgzwyaa_overview.png" class="card-img-top" alt="AirPods Pro">
                    <div class="card-body">
                        <h5 class="card-title">AirPods Pro</h5>
                        <p class="card-text">$249.00</p>
                        <a href="product-detail?id=airpods" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://www.apple.com/newsroom/images/product/watch/standard/Apple-Watch-S8-2up-hero-220907_Full-Bleed-Image.jpg.large.jpg" class="card-img-top" alt="Apple Watch Series 8">
                    <div class="card-body">
                        <h5 class="card-title">Apple Watch Series 8</h5>
                        <p class="card-text">$399.00</p>
                        <a href="product-detail?id=apple-watch" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/m/imac-24-blue-selection-hero-202310__1_-removebg-preview.png" class="card-img-top" alt="iMac 24-inch">
                    <div class="card-body">
                        <h5 class="card-title">iMac 24-inch</h5>
                        <p class="card-text">$1299.00</p>
                        <a href="product-detail?id=imac" class="btn btn-primary">View Product</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 E-Shop. All Rights Reserved.
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core"/>
