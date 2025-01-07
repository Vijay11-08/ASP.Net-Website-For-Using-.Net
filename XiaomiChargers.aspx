<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="XiaomiChargers.aspx.cs" Inherits="NetWebsite.XiaomiChargers" %>
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
  <!-- Xiaomi Chargers Section -->
<div class="category-section">
    <h2>Xiaomi Chargers</h2>
    <div class="product-list">
        <!-- Lightning to USB-C Cable -->
        <div class="product-card">
            <img src="Image/x_charger.jpg" alt="Lightning to USB-C Cable">
            <h5>Lightning to USB-C Cable</h5>
            <p>Price: $19</p>
            <button class="btn-add-to-cart" onclick="addToCart('Lightning to USB-C Cable', 19)">Add to Cart</button>
            <a href="XiaomiChargerDetails.aspx?model=lightningusbc" class="btn-view-details">View Details</a>
        </div>

        <!-- MagSafe Charger -->
        <div class="product-card">
            <img src="Image/x_charger.jpg" alt="MagSafe Charger">
            <h5>MagSafe Charger</h5>
            <p>Price: $39</p>
            <button class="btn-add-to-cart" onclick="addToCart('MagSafe Charger', 39)">Add to Cart</button>
            <a href="XiaomiChargerDetails.aspx?model=magsafecharger" class="btn-view-details">View Details</a>
        </div>

        <!-- 20W USB-C Power Adapter -->
        <div class="product-card">
            <img src="Image/x_charger.jpg" alt="20W USB-C Power Adapter">
            <h5>20W USB-C Power Adapter</h5>
            <p>Price: $19</p>
            <button class="btn-add-to-cart" onclick="addToCart('20W USB-C Power Adapter', 19)">Add to Cart</button>
            <a href="XiaomiChargerDetails.aspx?model=20wusbcadapter" class="btn-view-details">View Details</a>
        </div>

        <!-- Wireless Charging Pad -->
        <div class="product-card">
            <img src="Image/x_charger.jpg" alt="Wireless Charging Pad">
            <h5>Wireless Charging Pad</h5>
            <p>Price: $29</p>
            <button class="btn-add-to-cart" onclick="addToCart('Wireless Charging Pad', 29)">Add to Cart</button>
            <a href="XiaomiChargerDetails.aspx?model=wirelesschargingpad" class="btn-view-details">View Details</a>
        </div>
    </div>
</div>
</asp:Content>
