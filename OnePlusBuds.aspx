<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="OnePlusBuds.aspx.cs" Inherits="NetWebsite.OnePlusBuds" %>
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
   <!-- OnePlus Buds Section -->
<div class="category-section">
    <h2>OnePlus Buds (AirPods)</h2>
    <div class="product-list">
        <!-- AirPods 3 -->
        <div class="product-card">
            <img src="Image/o_buds.jpg" alt="AirPods 3">
            <h5>AirPods 3</h5>
            <p>Price: $179</p>
            <button class="btn-add-to-cart" onclick="addToCart('AirPods 3', 179)">Add to Cart</button>
            <a href="OnePlusBudsDetails.aspx?model=airpods3" class="btn-view-details">View Details</a>
        </div>

        <!-- AirPods Pro -->
        <div class="product-card">
            <img src="Image/o_buds.jpg" alt="AirPods Pro">
            <h5>AirPods Pro</h5>
            <p>Price: $249</p>
            <button class="btn-add-to-cart" onclick="addToCart('AirPods Pro', 249)">Add to Cart</button>
            <a href="OnePlusBudsDetails.aspx?model=airpodspro" class="btn-view-details">View Details</a>
        </div>

        <!-- AirPods 2 -->
        <div class="product-card">
            <img src="Image/o_buds.jpg" alt="AirPods 2">
            <h5>AirPods 2</h5>
            <p>Price: $159</p>
            <button class="btn-add-to-cart" onclick="addToCart('AirPods 2', 159)">Add to Cart</button>
            <a href="OnePlusBudsDetails.aspx?model=airpods2" class="btn-view-details">View Details</a>
        </div>

        <!-- AirPods Max -->
        <div class="product-card">
            <img src="Image/o_buds.jpg" alt="AirPods Max">
            <h5>AirPods Max</h5>
            <p>Price: $549</p>
            <button class="btn-add-to-cart" onclick="addToCart('AirPods Max', 549)">Add to Cart</button>
            <a href="OnePlusBudsDetails.aspx?model=airpodsmax" class="btn-view-details">View Details</a>
        </div>
    </div>
</div>

</asp:Content>
