<%@ Page Title="Realme Covers" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="RealmeCovers.aspx.cs" Inherits="NetWebsite.RealmeCovers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /* styles.css */
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
     <!-- Realme Covers Section -->
    <div class="category-section">
        <h2>Realme Covers</h2>
        <div class="product-list">
            <!-- Clear Case -->
            <div class="product-card">
                <img src="Image/r_cover.jpg" alt="Clear Case">
                <h5>Clear Case</h5>
                <p>Price: $19</p>
                <button class="btn-add-to-cart" onclick="addToCart('Clear Case', 19)">Add to Cart</button>
                <a href="RealmeCoverDetails.aspx?model=clearcase" class="btn-view-details">View Details</a>
            </div>

            <!-- Leather Case -->
            <div class="product-card">
                <img src="Image/r_cover.jpg" alt="Leather Case">
                <h5>Leather Case</h5>
                <p>Price: $39</p>
                <button class="btn-add-to-cart" onclick="addToCart('Leather Case', 39)">Add to Cart</button>
                <a href="RealmeCoverDetails.aspx?model=leathercase" class="btn-view-details">View Details</a>
            </div>

            <!-- Silicone Case -->
            <div class="product-card">
                <img src="Image/r_cover.jpg" alt="Silicone Case">
                <h5>Silicone Case</h5>
                <p>Price: $29</p>
                <button class="btn-add-to-cart" onclick="addToCart('Silicone Case', 29)">Add to Cart</button>
                <a href="RealmeCoverDetails.aspx?model=siliconecase" class="btn-view-details">View Details</a>
            </div>

            <!-- Rugged Case -->
            <div class="product-card">
                <img src="Image/r_cover.jpg" alt="Rugged Case">
                <h5>Rugged Case</h5>
                <p>Price: $49</p>
                <button class="btn-add-to-cart" onclick="addToCart('Rugged Case', 49)">Add to Cart</button>
                <a href="RealmeCoverDetails.aspx?model=ruggedcase" class="btn-view-details">View Details</a>
            </div>
        </div>
    </div>
</asp:Content>
