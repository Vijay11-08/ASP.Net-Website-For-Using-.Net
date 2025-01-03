<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="NetWebsite.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        .contact-section {
            padding: 50px 0;
        }

        .contact-section h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .contact-section .info-box {
            margin-bottom: 30px;
        }

        .info-box h5 {
            margin-bottom: 15px;
        }

        .info-box p {
            margin-bottom: 5px;
        }

        .map-container {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container contact-section">
        <h2>Contact Us</h2>
        <div class="row">
            <div class="col-md-6 info-box">
                <h5>Get in Touch</h5>
                <p><strong>Phone:</strong> +91 9876543210</p>
                <p><strong>Email:</strong> info@likezonemobileshop.com</p>
                <p><strong>Address:</strong> Like Zone Mobile Shop, Rajkot, Gujarat, India</p>
            </div>
            <div class="col-md-6 map-container">
                <h5>Find Us Here</h5>
                <iframe 
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1497.9133076861314!2d70.9084468!3d22.2273058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959b3551aaaaaa3%3A0xdb55ec52f4a4c4f4!2sLike%20Zone%20Mobile%20Shop!5e0!3m2!1sen!2sin!4v1674857150042!5m2!1sen!2sin" 
    allowfullscreen="" 
    loading="lazy">
</iframe>
            </div>
        </div>
    </div>
</asp:Content>
