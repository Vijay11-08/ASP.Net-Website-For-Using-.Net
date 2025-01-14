<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="MobileSection.aspx.cs" Inherits="NetWebsite.MobileSection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .mobile-section {
            padding: 50px 0;
            background-color: #f8f9fa;
        }

        .mobile-section h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .category-list {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
            gap: 20px;
        }

        .category-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2rem;
            transition: background-color 0.3s ease;
        }

        .category-button:hover {
            background-color: #0056b3;
        }

        .brand-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }

        .brand-card {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .brand-card:hover {
            transform: scale(1.05);
        }

        .brand-card img {
            width: 150px;
            height: auto;
            object-fit: contain;
            margin-bottom: 10px;
        }

        .brand-card h4 {
            font-size: 1.1rem;
            color: #333;
        }
    </style>





</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mobile-section">
        <h2>Select a Mobile Brand</h2>

        <!-- Brand buttons -->
        <div class="brand-container">
            <!-- Samsung Brand -->
            <div class="brand-card" onclick="window.location.href='Samsung.aspx'">
                <img src="Image/s_phone.jpg" alt="Samsung">
                <h4>Samsung</h4>
            </div>

            <!-- iPhone Brand -->
            <div class="brand-card" onclick="window.location.href='Iphone.aspx'">
                <img src="Image/Image.jpg" alt="iPhone">
                <h4>iPhone</h4>
            </div>

            <!-- OnePlus Brand -->
            <div class="brand-card" onclick="window.location.href='OnePlus.aspx'">
                <img src="Image/o_phone.jpg" alt="OnePlus">
                <h4>OnePlus</h4>
            </div>

            <!-- Xiaomi Brand -->
            <div class="brand-card" onclick="window.location.href='Xiaomi.aspx'">
                <img src="Image/x_phone.jpg" alt="Xiaomi">
                <h4>Xiaomi</h4>
            </div>

            <!-- Realme Brand -->
            <div class="brand-card" onclick="window.location.href='Realme.aspx'">
                <img src="Image/r_phone.jpg" alt="Realme">
                <h4>Realme</h4>
            </div>
        </div>
    </div>
</asp:Content>
