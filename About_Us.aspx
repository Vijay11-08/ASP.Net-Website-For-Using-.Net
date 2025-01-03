<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="NetWebsite.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        .about-section {
            padding: 50px 0;
            background-color: #f8f9fa;
        }

        .about-section h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .about-section p {
            font-size: 1.2rem;
            line-height: 1.8;
            text-align: justify;
        }

        .map-container {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container about-section">
        <h2>About Us</h2>
        <p>
            Welcome to Like Zone Mobile Shop! We are dedicated to bringing you the latest mobile technology and accessories at competitive prices. With a focus on quality, reliability, and excellent customer service, we aim to make your shopping experience enjoyable and hassle-free.
        </p>
        <p>
            Located in the heart of the city, Like Zone Mobile Shop is your one-stop destination for all your mobile needs. From smartphones to accessories, our wide range of products caters to diverse preferences and budgets. Visit us today to explore our collection and experience unparalleled service.
        </p>
        <div class="map-container">
            <h5>Our Location</h5>
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1497.9133076861314!2d70.9084468!3d22.2273058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959b3551aaaaaa3%3A0xdb55ec52f4a4c4f4!2sLike%20Zone%20Mobile%20Shop!5e0!3m2!1sen!2sin!4v1674857150042!5m2!1sen!2sin" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>
    </div>
</asp:Content>
