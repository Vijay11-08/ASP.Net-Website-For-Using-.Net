<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="RealmeBudsDetails.aspx.cs" Inherits="NetWebsite.RealmeBudsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* General Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    /* Section Style */
    .phone-details-section {
        padding: 60px 0;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .phone-details-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: 0 auto;
        flex-wrap: wrap;
        padding: 20px;
    }

    /* Image Styling */
    .phone-details-container img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    /* Info Section Styling */
    .phone-details-info {
        flex: 1;
        max-width: 50%;
        margin-left: 20px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .phone-details-info h2 {
        color: #333;
        font-size: 2.5rem;
        font-weight: bold;
        margin-bottom: 15px;
        line-height: 1.4;
    }

    .phone-details-info p {
        color: #555;
        font-size: 1.2rem;
        line-height: 1.6;
        margin-bottom: 20px;
    }

    .phone-details-info strong {
        font-weight: bold;
        color: #333;
    }

    /* Button Style */
    .btn-add-to-cart {
        background-color: #28a745;
        color: white;
        padding: 12px 25px;
        font-size: 1.2rem;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        text-align: center;
        margin-top: 20px;
    }

    .btn-add-to-cart:hover {
        background-color: #218838;
    }

    .btn-add-to-cart:focus {
        outline: none;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .phone-details-container {
            flex-direction: column;
            align-items: center;
        }

        .phone-details-info {
            max-width: 100%;
            margin-left: 0;
            text-align: center;
        }

        .phone-details-info h2 {
            font-size: 2rem;
        }

        .phone-details-info p {
            font-size: 1rem;
        }
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="phone-details-section">
     <div class="phone-details-container">
         <!-- Change this to an asp:Image control for AirPods -->
         <asp:Image ID="budsImage" runat="server" Alt="AirPods Image" />
         <div class="phone-details-info">
             <h2><asp:Label ID="budsName" runat="server" Text="AirPods Pro"></asp:Label></h2>
             <p><asp:Label ID="budsDescription" runat="server" Text="The AirPods Pro delivers high-quality sound and noise-cancellation technology, making them perfect for all your needs."></asp:Label></p>
             <p><strong>Price: </strong><asp:Label ID="budsPrice" runat="server" Text="$249"></asp:Label></p>
             <button class="btn-add-to-cart" onclick="addToCart()">Add to Cart</button>
         </div>
     </div>
 </div>

</asp:Content>
