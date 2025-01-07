<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="MobileAccessories.aspx.cs" Inherits="NetWebsite.MobileAccessories" %>
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
      <!-- Mobile Accessories Section -->
    <div class="category-section">
        <h2>Mobile Accessories</h2>
        <div class="product-list">
            <!-- Cover -->
            <div class="product-card">
                <img src="Image/i_cover.jpg" alt="Phone Cover">
                <h5>Phone Cover</h5>
                <p>Price: $15</p>
                <button class="btn-add-to-cart" onclick="addToCart('Phone Cover', 15)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=phonecover" class="btn-view-details">View Details</a>
            </div>

            <!-- Cable -->
            <div class="product-card">
                <img src="Image/i_cable.jpg" alt="Charging Cable">
                <h5>Charging Cable</h5>
                <p>Price: $10</p>
                <button class="btn-add-to-cart" onclick="addToCart('Charging Cable', 10)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=chargingcable" class="btn-view-details">View Details</a>
            </div>

            <!-- Charger -->
            <div class="product-card">
                <img src="Image/i_charger.jpg" alt="Fast Charger">
                <h5>Fast Charger</h5>
                <p>Price: $25</p>
                <button class="btn-add-to-cart" onclick="addToCart('Fast Charger', 25)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=fastcharger" class="btn-view-details">View Details</a>
            </div>

            <!-- Earphones -->
            <div class="product-card">
                <img src="Image/i_ear.jpg" alt="Earphones">
                <h5>Earphones</h5>
                <p>Price: $20</p>
                <button class="btn-add-to-cart" onclick="addToCart('Earphones', 20)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=earphones" class="btn-view-details">View Details</a>
            </div>

            <!-- Wireless Buds -->
            <div class="product-card">
                <img src="Image/i_buds.jpg" alt="Wireless Buds">
                <h5>Wireless Buds</h5>
                <p>Price: $35</p>
                <button class="btn-add-to-cart" onclick="addToCart('Wireless Buds', 35)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=wirelessbuds" class="btn-view-details">View Details</a>
            </div>

            <!-- Smart Watch -->
            <div class="product-card">
                <img src="Image/i_watch.jpg" alt="Smart Watch">
                <h5>Smart Watch</h5>
                <p>Price: $60</p>
                <button class="btn-add-to-cart" onclick="addToCart('Smart Watch', 60)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=smartwatch" class="btn-view-details">View Details</a>
            </div>

            <!-- Tempered Glass -->
            <div class="product-card">
                <img src="Image/i_temp.png" alt="Tempered Glass">
                <h5>Tempered Glass</h5>
                <p>Price: $5</p>
                <button class="btn-add-to-cart" onclick="addToCart('Tempered Glass', 5)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=temperedglass" class="btn-view-details">View Details</a>
            </div>

            <!-- Repeat for 40-50 items with different models and product details -->
            <!-- Example: -->
            <div class="product-card">
                <img src="Image/i_cover.jpg" alt="Phone Cover">
                <h5>Ultra Slim Cover</h5>
                <p>Price: $18</p>
                <button class="btn-add-to-cart" onclick="addToCart('Ultra Slim Cover', 18)">Add to Cart</button>
                <a href="MobileAccessoryDetails.aspx?model=ultraslimcover" class="btn-view-details">View Details</a>
            </div>

            <!-- You can continue adding more product cards for different accessories -->
            <!-- Similarly for other categories like Bluetooth speakers, power banks, etc. -->

            <div class="product-card">
    <img src="Image/i_cover.jpg" alt="Phone Cover">
    <h5>Phone Cover</h5>
    <p>Price: $15</p>
    <button class="btn-add-to-cart" onclick="addToCart('Phone Cover', 15)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=phonecover" class="btn-view-details">View Details</a>
</div>

<!-- Cable -->
<div class="product-card">
    <img src="Image/i_cable.jpg" alt="Charging Cable">
    <h5>Charging Cable</h5>
    <p>Price: $10</p>
    <button class="btn-add-to-cart" onclick="addToCart('Charging Cable', 10)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=chargingcable" class="btn-view-details">View Details</a>
</div>

<!-- Charger -->
<div class="product-card">
    <img src="Image/i_charger.jpg" alt="Fast Charger">
    <h5>Fast Charger</h5>
    <p>Price: $25</p>
    <button class="btn-add-to-cart" onclick="addToCart('Fast Charger', 25)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=fastcharger" class="btn-view-details">View Details</a>
</div>

<!-- Earphones -->
<div class="product-card">
    <img src="Image/i_ear.jpg" alt="Earphones">
    <h5>Earphones</h5>
    <p>Price: $20</p>
    <button class="btn-add-to-cart" onclick="addToCart('Earphones', 20)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=earphones" class="btn-view-details">View Details</a>
</div>

<!-- Wireless Buds -->
<div class="product-card">
    <img src="Image/i_buds.jpg" alt="Wireless Buds">
    <h5>Wireless Buds</h5>
    <p>Price: $35</p>
    <button class="btn-add-to-cart" onclick="addToCart('Wireless Buds', 35)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=wirelessbuds" class="btn-view-details">View Details</a>
</div>

<!-- Smart Watch -->
<div class="product-card">
    <img src="Image/i_watch.jpg" alt="Smart Watch">
    <h5>Smart Watch</h5>
    <p>Price: $60</p>
    <button class="btn-add-to-cart" onclick="addToCart('Smart Watch', 60)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=smartwatch" class="btn-view-details">View Details</a>
</div>

<!-- Tempered Glass -->
<div class="product-card">
    <img src="Image/i_temp.png" alt="Tempered Glass">
    <h5>Tempered Glass</h5>
    <p>Price: $5</p>
    <button class="btn-add-to-cart" onclick="addToCart('Tempered Glass', 5)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=temperedglass" class="btn-view-details">View Details</a>
</div>

<!-- Repeat for 40-50 items with different models and product details -->
<!-- Example: -->
<div class="product-card">
    <img src="Image/i_cover.jpg" alt="Phone Cover">
    <h5>Ultra Slim Cover</h5>
    <p>Price: $18</p>
    <button class="btn-add-to-cart" onclick="addToCart('Ultra Slim Cover', 18)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=ultraslimcover" class="btn-view-details">View Details</a>
</div>
            <div class="product-card">
    <img src="Image/i_cover.jpg" alt="Phone Cover">
    <h5>Phone Cover</h5>
    <p>Price: $15</p>
    <button class="btn-add-to-cart" onclick="addToCart('Phone Cover', 15)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=phonecover" class="btn-view-details">View Details</a>
</div>

<!-- Cable -->
<div class="product-card">
    <img src="Image/i_cable.jpg" alt="Charging Cable">
    <h5>Charging Cable</h5>
    <p>Price: $10</p>
    <button class="btn-add-to-cart" onclick="addToCart('Charging Cable', 10)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=chargingcable" class="btn-view-details">View Details</a>
</div>

<!-- Charger -->
<div class="product-card">
    <img src="Image/i_charger.jpg" alt="Fast Charger">
    <h5>Fast Charger</h5>
    <p>Price: $25</p>
    <button class="btn-add-to-cart" onclick="addToCart('Fast Charger', 25)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=fastcharger" class="btn-view-details">View Details</a>
</div>

<!-- Earphones -->
<div class="product-card">
    <img src="Image/i_ear.jpg" alt="Earphones">
    <h5>Earphones</h5>
    <p>Price: $20</p>
    <button class="btn-add-to-cart" onclick="addToCart('Earphones', 20)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=earphones" class="btn-view-details">View Details</a>
</div>

<!-- Wireless Buds -->
<div class="product-card">
    <img src="Image/i_buds.jpg" alt="Wireless Buds">
    <h5>Wireless Buds</h5>
    <p>Price: $35</p>
    <button class="btn-add-to-cart" onclick="addToCart('Wireless Buds', 35)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=wirelessbuds" class="btn-view-details">View Details</a>
</div>

<!-- Smart Watch -->
<div class="product-card">
    <img src="Image/i_watch.jpg" alt="Smart Watch">
    <h5>Smart Watch</h5>
    <p>Price: $60</p>
    <button class="btn-add-to-cart" onclick="addToCart('Smart Watch', 60)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=smartwatch" class="btn-view-details">View Details</a>
</div>

<!-- Tempered Glass -->
<div class="product-card">
    <img src="Image/i_temp.png" alt="Tempered Glass">
    <h5>Tempered Glass</h5>
    <p>Price: $5</p>
    <button class="btn-add-to-cart" onclick="addToCart('Tempered Glass', 5)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=temperedglass" class="btn-view-details">View Details</a>
</div>

<!-- Repeat for 40-50 items with different models and product details -->
<!-- Example: -->
<div class="product-card">
    <img src="Image/i_cover.jpg" alt="Phone Cover">
    <h5>Ultra Slim Cover</h5>
    <p>Price: $18</p>
    <button class="btn-add-to-cart" onclick="addToCart('Ultra Slim Cover', 18)">Add to Cart</button>
    <a href="MobileAccessoryDetails.aspx?model=ultraslimcover" class="btn-view-details">View Details</a>
</div>
        </div>
    </div>
</asp:Content>
