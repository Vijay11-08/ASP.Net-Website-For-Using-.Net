<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="XiaomiMobile.aspx.cs" Inherits="NetWebsite.XiaomiMobile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .category-section {
            padding: 50px 0;
            background-color: #f8f9fa;
            margin-bottom: 40px;
        }

        .category-section h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }

        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .product-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            text-align: center;
            padding: 15px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-card h5 {
            margin-top: 10px;
            font-size: 1.1rem;
            color: #333;
        }

        .product-card p {
            color: #555;
            font-size: 1rem;
            margin: 10px 0;
        }

        .btn-add-to-cart, .btn-view-details {
            margin-top: 10px;
            padding: 8px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .btn-add-to-cart:hover, .btn-view-details:hover {
            background-color: #0056b3;
        }

        .btn-add-to-cart {
            background-color: #28a745;
        }

        .btn-add-to-cart:hover {
            background-color: #218838;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Xiaomi Mobiles Section -->
    <div class="category-section">
        <h2>Xiaomi Mobile Phones</h2>
        <div class="product-list">
            <!-- Xiaomi Mi 11 -->
            <div class="product-card">
                <img src="Image/xmi11.jpg" alt="Xiaomi Mi 11">
                <h5>Xiaomi Mi 11</h5>
                <p>Price: $749</p>
                <button class="btn-add-to-cart" onclick="addToCart('Xiaomi Mi 11', 749)">Add to Cart</button>
                <a href="XiaomiMobileDetails.aspx?model=mi11" class="btn-view-details">View Details</a>
            </div>

            <!-- Redmi Note 10 -->
            <div class="product-card">
                <img src="Image/xnote10.jpg" alt="Redmi Note 10">
                <h5>Redmi Note 10</h5>
                <p>Price: $199</p>
                <button class="btn-add-to-cart" onclick="addToCart('Redmi Note 10', 199)">Add to Cart</button>
                <a href="XiaomiMobileDetails.aspx?model=redminote10" class="btn-view-details">View Details</a>
            </div>

            <!-- Poco X3 -->
            <div class="product-card">
                <img src="Image/xpocox3.jpg" alt="Poco X3">
                <h5>Poco X3</h5>
                <p>Price: $229</p>
                <button class="btn-add-to-cart" onclick="addToCart('Poco X3', 229)">Add to Cart</button>
                <a href="XiaomiMobileDetails.aspx?model=pocox3" class="btn-view-details">View Details</a>
            </div>

            <!-- Mi 10T -->
            <div class="product-card">
                <img src="Image/x10t.jpg" alt="Mi 10T">
                <h5>Mi 10T</h5>
                <p>Price: $499</p>
                <button class="btn-add-to-cart" onclick="addToCart('Mi 10T', 499)">Add to Cart</button>
                <a href="XiaomiMobileDetails.aspx?model=mi10t" class="btn-view-details">View Details</a>
            </div>
        </div>
    </div>
</asp:Content>
