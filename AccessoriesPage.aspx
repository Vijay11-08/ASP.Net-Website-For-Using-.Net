<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="AccessoriesPage.aspx.cs" Inherits="NetWebsite.AccessoriesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .accessories-container {
            padding: 30px;
            background-color: #f8f9fa;
            text-align: center;
        }

        .accessories-container h2 {
            margin-bottom: 20px;
            font-size: 2rem;
        }

        .accessory-item {
            display: inline-block;
            width: 200px;
            margin: 15px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            background: #fff;
        }

        .accessory-item img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .accessory-item h4 {
            font-size: 1rem;
            margin-bottom: 5px;
        }

        .accessory-item p {
            font-size: 0.85rem;
            color: #555;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="accessories-container">
        <h2 id="mobileTitle">Accessories for </h2>
        <div id="accessoriesList">
            <!-- Accessories will be dynamically loaded here -->
        </div>
    </div>

    <script>
        // Get mobile name from query parameter
        const params = new URLSearchParams(window.location.search);
        const mobile = params.get('mobile');

        // Debugging: Log the mobile name
        console.log("Mobile Name: ", mobile);

        // Display mobile name in the title
        document.getElementById('mobileTitle').innerText += mobile;

        // Mock data for accessories
        const accessoriesData = {
            "Samsung Galaxy S21": [
                { name: "Tempered Glass", img: "Image/Image.jpg", description: "High-quality tempered glass." },
                { name: "Phone Cover", img: "Image/Image.jpg", description: "Durable and stylish phone cover." },
                { name: "Wireless Buds", img: "Image/Image.jpg", description: "Seamless audio experience." }
            ],
            "iPhone 13 Pro": [
                { name: "Tempered Glass", img: "Image/Image.jpg", description: "Premium tempered glass." },
                { name: "Leather Case", img: "Image/Image.jpg", description: "Elegant leather phone case." },
                { name: "AirPods", img: "Image/Image.jpg", description: "High-quality AirPods." }
            ],
            "OnePlus 9 Pro": [
                { name: "Tempered Glass", img: "Image/Image.jpg", description: "Strong tempered glass." },
                { name: "Silicone Case", img: "Image/Image.jpg", description: "Soft-touch silicone case." },
                { name: "Wireless Charger", img: "Image/Image.jpg", description: "Quick and efficient wireless charger." }
            ],
            "Xiaomi Mi 11": [
                { name: "Tempered Glass", img: "Image/Image.jpg", description: "Clear and sturdy tempered glass." },
                { name: "Flip Cover", img: "Image/Image.jpg", description: "Premium flip cover for your device." },
                { name: "Bluetooth Earbuds", img: "Image/Image.jpg", description: "Clear sound and comfortable design." }
            ],
            "Realme 8 Pro": [
                { name: "Tempered Glass", img: "Image/Image.jpg", description: "High-quality protection." },
                { name: "Back Cover", img: "Image/Image.jpg", description: "Affordable and durable back cover." },
                { name: "Neckband Earphones", img: "Image/Image.jpg", description: "Comfortable and stylish earphones." }
            ]
        };

        // Display accessories based on the selected mobile
        const accessoriesList = document.getElementById('accessoriesList');
        if (accessoriesData[mobile]) {
            accessoriesData[mobile].forEach(accessory => {
                const item = document.createElement('div');
                item.classList.add('accessory-item');
                item.innerHTML = `
            <img src="${accessory.img}" alt="${accessory.name}">
            <h4>${accessory.name}</h4>
            <p>${accessory.description}</p>
        `;
                accessoriesList.appendChild(item);
            });
        } else {
            accessoriesList.innerHTML = `<p>No accessories available for ${mobile}.</p>`;
        }
     </script>
</asp:Content>
