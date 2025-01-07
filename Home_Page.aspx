<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="NetWebsite.Home_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Custom styling for the home page */
        .hero-section {
            background: url('Image/Image.jpg') no-repeat center center/cover;
            height: 500px;
            color: white;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        .hero-section p {
            font-size: 1.5rem;
            margin-top: 10px;
        }

        .featured-products .card {
            margin: 15px;
        }

        /* Offer section styling */
        .offer-section {
            background-color: #ffcc00;
            padding: 30px;
            text-align: center;
            margin-top: 50px;
        }

        .offer-section h3 {
            font-size: 2rem;
            font-weight: bold;
        }

        .offer-section p {
            font-size: 1.2rem;
            margin-top: 10px;
        }

        .offer-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            font-size: 1rem;
            cursor: pointer;
        }

        /* Carousel styling */
        .carousel-item img {
            width: 100%;
            height: 500px;
            object-fit: cover;
        }

        .carousel-indicators li {
            background-color: #000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Welcome to Mobile Shop</h1>
        <p>Find the best mobiles, accessories, and deals here!</p>
        <a href="#exploreCarousel" data-bs-toggle="carousel" class="btn btn-primary btn-lg mt-3">Explore Now</a>
    </div>

    <!-- Featured Products Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Featured Products</h2>
        <div class="row">
            <!-- Mobile Phone -->
            <div class="col-md-4">
                <div class="card">
                    <img src="Image/Image.jpg" class="card-img-top" alt="Mobile Phone">
                    <div class="card-body">
                        <h5 class="card-title">Mobile Phone</h5>
                        <p class="card-text">Latest mobile with cutting-edge technology.</p>
                        <a href="MobileSection.aspx" class="btn btn-primary">Mobile Section</a>
                    </div>
                </div>
            </div>

            <!-- Recharge -->
            <div class="col-md-4">
                <div class="card">
                    <img src="Image/Image.jpg" class="card-img-top" alt="Recharge">
                    <div class="card-body">
                        <h5 class="card-title">Recharge</h5>
                        <p class="card-text">Recharge your mobile with various plans.</p>
                        <a href="RechargeSection.aspx" class="btn btn-primary">Recharge Section</a>
                    </div>
                </div>
            </div>

            <!-- Mobile Accessories -->
            <div class="col-md-4">
                <div class="card">
                    <img src="Image/Image.jpg" class="card-img-top" alt="Mobile Accessories">
                    <div class="card-body">
                        <h5 class="card-title">Mobile Accessories</h5>
                        <p class="card-text">Affordable and stylish accessories for your mobile.</p>
                        <a href="MobileAccessories.aspx" class="btn btn-primary">Mobile Accessories </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Explore Carousel Section -->
    <div id="exploreCarousel" class="carousel slide" data-bs-ride="carousel">

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#exploreCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#exploreCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#exploreCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <div class="carousel-inner">

            <div class="carousel-item active">
                <img src="Image/Image.jpg" class="d-block w-100" alt="Explore 1">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Discover the Best Deals!</h5>
                    <p>Get exclusive deals and offers on mobiles.</p>
                </div>
            </div>

            <div class="carousel-item">
                <img src="Image/Image.jpg" class="d-block w-100" alt="Explore 2">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Latest Mobile Phones</h5>
                    <p>Browse our collection of the latest phones.</p>
                </div>
            </div>

            <div class="carousel-item">
                <img src="Image/Image.jpg" class="d-block w-100" alt="Explore 3">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Mobile Accessories</h5>
                    <p>Enhance your experience with the best accessories.</p>
                </div>
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#exploreCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>

        <button class="carousel-control-next" type="button" data-bs-target="#exploreCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>

    </div>

    <!-- Offer Section -->
    <div class="offer-section">
        <h3>Exclusive Offer: Get 20% Off on All Mobile Phones!</h3>
        <p>Don't miss out on this limited-time offer. Hurry up and grab your mobile phone at an amazing discount!</p>
        <button class="offer-btn" onclick="window.location.href='MobileSection.aspx'">Shop Now</button>
    </div>

    <!-- About Us Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4">About Us</h2>
        <p class="text-center">At Mobile Shop, we are committed to providing the latest technology, premium quality products, and exceptional customer service. Explore a wide range of mobiles and accessories tailored to meet your needs.</p>
        <div class="text-center">
            <a href="About_Us.aspx" class="btn btn-secondary">Learn More</a>
        </div>
    </div>
</asp:Content>
