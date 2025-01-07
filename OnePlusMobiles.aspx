<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="OnePlusMobiles.aspx.cs" Inherits="NetWebsite.OnePlusMobiles" %>
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
    <!-- OnePlus Mobiles Section -->
    <div class="category-section">
        <h2>OnePlus Mobile Phones</h2>
        <div class="product-list">
            <!-- OnePlus 9 -->
            <div class="product-card">
                <img src="Image/o9.jpg" alt="OnePlus 9">
                <h5>OnePlus 9</h5>
                <p>Price: $749</p>
                <button class="btn-add-to-cart" onclick="addToCart('OnePlus 9', 749)">Add to Cart</button>
                <a href="OnePlusPhoneDetails.aspx?model=oneplus9" class="btn-view-details">View Details</a>
            </div>

            <!-- OnePlus 9 Pro -->
            <div class="product-card">
                <img src="Image/o9pro.jpg" alt="OnePlus 9 Pro">
                <h5>OnePlus 9 Pro</h5>
                <p>Price: $999</p>
                <button class="btn-add-to-cart" onclick="addToCart('OnePlus 9 Pro', 999)">Add to Cart</button>
                <a href="OnePlusPhoneDetails.aspx?model=oneplus9pro" class="btn-view-details">View Details</a>
            </div>

            <!-- OnePlus 8T -->
            <div class="product-card">
                <img src="Image/o8t.jpg" alt="OnePlus 8T">
                <h5>OnePlus 8T</h5>
                <p>Price: $699</p>
                <button class="btn-add-to-cart" onclick="addToCart('OnePlus 8T', 699)">Add to Cart</button>
                <a href="OnePlusPhoneDetails.aspx?model=oneplus8t" class="btn-view-details">View Details</a>
            </div>

            <!-- OnePlus Nord -->
            <div class="product-card">
                <img src="Image/onord.jpg" alt="OnePlus Nord">
                <h5>OnePlus Nord</h5>
                <p>Price: $399</p>
                <button class="btn-add-to-cart" onclick="addToCart('OnePlus Nord', 399)">Add to Cart</button>
                <a href="OnePlusPhoneDetails.aspx?model=oneplusnord" class="btn-view-details">View Details</a>
            </div>
        </div>
    </div>
</asp:Content>
