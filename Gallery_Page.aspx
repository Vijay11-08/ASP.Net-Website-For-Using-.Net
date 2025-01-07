<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Gallery_Page.aspx.cs" Inherits="NetWebsite.Gallery_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gallery-section {
            padding: 50px 0;
            background-color: #f8f9fa;
        }

        .gallery-section h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .gallery-container {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
        }

        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease-in-out;
        }

        .gallery-item:hover img {
            transform: scale(1.1);
        }

        .gallery-item .caption {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            color: #fff;
            width: 100%;
            text-align: center;
            padding: 10px;
            font-size: 1.1rem;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container gallery-section">
    <h2>Gallery</h2>
    <div class="row gallery-container">
        <!-- Replace the src attributes with your actual image paths -->
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=1">
                <img src="Image/Image.jpg" alt="Mobile 1">
                <div class="caption">Latest Smartphone</div>
            </a>
        </div>
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=2">
                <img src="Image/Image.jpg" alt="Mobile 2">
                <div class="caption">Sleek Design</div>
            </a>
        </div>
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=3">
                <img src="Image/Image.jpg" alt="Mobile 3">
                <div class="caption">High Performance</div>
            </a>
        </div>
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=4">
                <img src="Image/Image.jpg" alt="Mobile 4">
                <div class="caption">Affordable Prices</div>
            </a>
        </div>
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=5">
                <img src="Image/Image.jpg" alt="Mobile 5">
                <div class="caption">Top Brands</div>
            </a>
        </div>
        <div class="col-md-2 gallery-item">
            <a href="MobileDetails.aspx?mobileId=6">
                <img src="Image/Image.jpg" alt="Mobile 6">
                <div class="caption">Accessories</div>
            </a>
        </div>
    </div>
</div>

</asp:Content>
