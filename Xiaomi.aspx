<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Xiaomi.aspx.cs" Inherits="NetWebsite.Xiaomi" %>
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
    <h2>Mobile</h2>


    <div class="brand-container">
   
        <div class="brand-card" onclick="window.location.href='XiaomiMobile.aspx'">
            <img src="Image/x_phone.jpg" alt="Mobile Phone">
            <h4>Mobile Phone</h4>
        </div>

 
        <div class="brand-card" onclick="window.location.href='XiaomiChargers.aspx'">
            <img src="Image/x_charger.jpg" alt="Charger">
            <h4>Charger</h4>
        </div>

       
        <div class="brand-card" onclick="window.location.href='XiaomiCables.aspx'">
            <img src="Image/x_cable.jpg" alt="Cable">
            <h4>Cable</h4>
        </div>

        <div class="brand-card" onclick="window.location.href='XiaomiBuds.aspx'">
            <img src="Image/x_buds.jpg" alt="Buds">
            <h4>Buds</h4>
        </div>

       
        <div class="brand-card" onclick="window.location.href='XiaomiCovers.aspx'">
            <img src="Image/x_cover.jpg" alt="Cover">
            <h4>Cover</h4>
        </div>
    </div>
</div>
</asp:Content>
