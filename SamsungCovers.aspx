<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="SamsungCovers.aspx.cs" Inherits="NetWebsite.SamsungCovers" %>
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
      <!-- Samsung Mobile Covers Section -->
    <div class="category-section">
        <h2>Samsung Mobile Covers</h2>
        <div class="product-list">
            <!-- Samsung Galaxy S21 Cover -->
            <div class="product-card">
                <img src="Image/s21.jpg" alt="Samsung Galaxy S21 Cover">
                <h5>Samsung Galaxy S21 Cover</h5>
                <p>Price: $29</p>
                <button class="btn-add-to-cart" onclick="addToCart('Samsung Galaxy S21 Cover', 29)">Add to Cart</button>
                <a href="SamsungCoverDetails.aspx?model=s21" class="btn-view-details">View Details</a>
            </div>

            <!-- Samsung Galaxy Note 20 Cover -->
            <div class="product-card">
                <img src="Image/snote20.jpg" alt="Samsung Galaxy Note 20 Cover">
                <h5>Samsung Galaxy Note 20 Cover</h5>
                <p>Price: $35</p>
                <button class="btn-add-to-cart" onclick="addToCart('Samsung Galaxy Note 20 Cover', 35)">Add to Cart</button>
                <a href="SamsungCoverDetails.aspx?model=note20" class="btn-view-details">View Details</a>
            </div>

            <!-- Samsung Galaxy Z Fold 3 Cover -->
            <div class="product-card">
                <img src="Image/szfold3.jpg" alt="Samsung Galaxy Z Fold 3 Cover">
                <h5>Samsung Galaxy Z Fold 3 Cover</h5>
                <p>Price: $49</p>
                <button class="btn-add-to-cart" onclick="addToCart('Samsung Galaxy Z Fold 3 Cover', 49)">Add to Cart</button>
                <a href="SamsungCoverDetails.aspx?model=zfold3" class="btn-view-details">View Details</a>
            </div>

            <!-- Samsung Galaxy A52 Cover -->
            <div class="product-card">
                <img src="Image/sa52.jpg" alt="Samsung Galaxy A52 Cover">
                <h5>Samsung Galaxy A52 Cover</h5>
                <p>Price: $19</p>
                <button class="btn-add-to-cart" onclick="addToCart('Samsung Galaxy A52 Cover', 19)">Add to Cart</button>
                <a href="SamsungCoverDetails.aspx?model=a52" class="btn-view-details">View Details</a>
            </div>
        </div>
    </div>
</asp:Content>
