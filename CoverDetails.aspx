<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="CoverDetails.aspx.cs" Inherits="NetWebsite.CoverDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        .cover-details {
            padding: 50px 0;
            background-color: #f8f9fa;
        }

        .cover-details h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }

        .details-card {
            display: flex;
            justify-content: center;
            gap: 40px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .details-card img {
            width: 300px;
            height: auto;
            object-fit: cover;
        }

        .details-card .info {
            max-width: 600px;
        }

        .details-card h3 {
            font-size: 1.5rem;
            color: #333;
        }

        .details-card p {
            color: #555;
            font-size: 1.1rem;
            margin: 10px 0;
        }

        .btn-add-to-cart {
            padding: 10px 25px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2rem;
            transition: background-color 0.3s ease;
        }

        .btn-add-to-cart:hover {
            background-color: #218838;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="phone-details">
        <h2 id="coverName" runat="server">Samsung Galaxy S21 Cover</h2>
        <div class="details-card">
            <img id="coverImage" runat="server" src="Image/S21Cover.jpg" alt="Samsung Galaxy S21">
            <div class="info">
                <h3 id="H1" runat="server">Samsung Galaxy S21</h3>
                <p id="coverDescription" runat="server">Protect your Samsung Galaxy S21 with a stylish cover.</p>
                <p><strong>Price:</strong> $29.99</p>
                <button id="addToCartBtn" class="btn-add-to-cart" runat="server" onclick="addToCart('Samsung Galaxy S21', 29.99)">Add to Cart</button>
            </div>
        </div>
    </div>
</asp:Content>
</asp:Content>
