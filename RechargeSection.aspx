<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="RechargeSection.aspx.cs" Inherits="NetWebsite.RechargeSection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        .recharge-section {
            padding: 50px 0;
            background-color: #f1f1f1;
        }

        .recharge-section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2rem;
            color: #333;
        }

        .operator-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .operator-card {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .operator-card:hover {
            transform: scale(1.05);
        }

        .operator-card img {
            width: 150px;
            height: auto;
            object-fit: contain;
            margin-bottom: 10px;
        }

        .operator-card h4 {
            font-size: 1.2rem;
            color: #007bff;
        }

        .operator-card h4:hover {
            color: #0056b3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="recharge-section">
        <h2>Select a Mobile Operator</h2>

        <!-- Operator cards -->
        <div class="operator-container">
            <!-- Jio Operator -->
            <div class="operator-card" onclick="window.location.href='JioRecharge.aspx'">
                <img src="Image/jio.png" alt="Jio">
                <h4>Jio</h4>
            </div>

            <!-- Airtel Operator -->
            <div class="operator-card" onclick="window.location.href='AirtelRecharge.aspx'">
                <img src="Image/airtel.png" alt="Airtel">
                <h4>Airtel</h4>
            </div>

            <!-- Vodafone Idea (VI) Operator -->
            <div class="operator-card" onclick="window.location.href='ViRecharge.aspx'">
                <img src="Image/vi.png" alt="VI">
                <h4>Vodafone Idea</h4>
            </div>
        </div>
    </div>
</asp:Content>
