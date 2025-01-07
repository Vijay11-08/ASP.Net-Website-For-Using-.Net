<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="MobileDetails.aspx.cs" Inherits="NetWebsite.MobileDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .mobile-details {
            padding: 30px;
            text-align: center;
        }

        .mobile-details img {
            width: 100%;
            max-width: 300px;
            height: auto;
            object-fit: cover;
        }

        .mobile-details h3 {
            color: #333;
        }

        .mobile-details p {
            font-size: 1rem;
            color: #555;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mobile-details">
        <h1 id="mobileName" runat="server"></h1>
        <div class="details-container">
            <img id="mobileImage" runat="server" src="" alt="Mobile Image">
            <p id="mobileDescription" runat="server"></p>
            <p class="deal" id="mobileDeal" runat="server"></p>
        </div>
    </div>
    </div>
</asp:Content>
