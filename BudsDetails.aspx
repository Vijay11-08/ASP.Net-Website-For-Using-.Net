<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="BudsDetails.aspx.cs" Inherits="NetWebsite.BudsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .details-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f8f9fa;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .details-container img {
            width: 100%;
            max-width: 300px;
            height: auto;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .details-container h2 {
            text-align: center;
            color: #333;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .details-container p {
            font-size: 1.1rem;
            line-height: 1.5;
            margin-bottom: 15px;
        }

        .details-container .btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            text-align: center;
            text-decoration: none;
        }

        .details-container .btn:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="details-container">
      
        <asp:Image ID="budsImage" runat="server" Src="Image/default.jpg" AlternateText="Samsung Buds" />
        <h2><asp:Label ID="budsName" runat="server" Text="Buds Name"></asp:Label></h2>
        <p><asp:Label ID="budsDescription" runat="server" Text="Description of the selected Samsung Buds model will appear here."></asp:Label></p>
        <a id="addToCartBtn" runat="server" href="#" class="btn">Add to Cart</a>
    </div>
</asp:Content>
