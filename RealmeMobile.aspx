<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="RealmeMobile.aspx.cs" Inherits="NetWebsite.RealmeMobile" %>

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
    <!-- Realme Mobiles Section -->
    <div class="category-section">
        <h2>Realme Mobile Phones</h2>
        <div class="product-list">
            <!-- Realme 8 -->
            <div class="product-card">
                <img src="Image/r8.jpg" alt="Realme 8">
                <h5>Realme 8</h5>
                <p>Price: $249</p>
                <button class="btn-add-to-cart" onclick="addToCart('Realme 8', 249)">Add to Cart</button>
                <a href="RealmeMobileDetails.aspx?model=realme8" class="btn-view-details">View Details</a>
            </div>

            <!-- Realme 8 Pro -->
            <div class="product-card">
                <img src="Image/r8pro.jpg" alt="Realme 8 Pro">
                <h5>Realme 8 Pro</h5>
                <p>Price: $299</p>
                <button class="btn-add-to-cart" onclick="addToCart('Realme 8 Pro', 299)">Add to Cart</button>
                <a href="RealmeMobileDetails.aspx?model=realme8pro" class="btn-view-details">View Details</a>
            </div>

            <!-- Realme Narzo 30 -->
            <div class="product-card">
                <img src="Image/rnarzo30.jpg" alt="Realme Narzo 30">
                <h5>Realme Narzo 30</h5>
                <p>Price: $179</p>
                <button class="btn-add-to-cart" onclick="addToCart('Realme Narzo 30', 179)">Add to Cart</button>
                <a href="RealmeMobileDetails.aspx?model=realmenarzo30" class="btn-view-details">View Details</a>
            </div>

            <!-- Realme C25 -->
            <div class="product-card">
                <img src="Image/rc35.jpg" alt="Realme C25">
                <h5>Realme C25</h5>
                <p>Price: $139</p>
                <button class="btn-add-to-cart" onclick="addToCart('Realme C25', 139)">Add to Cart</button>
                <a href="RealmeMobileDetails.aspx?model=realmec25" class="btn-view-details">View Details</a>
            </div>
        </div>
    </div>
</asp:Content>
