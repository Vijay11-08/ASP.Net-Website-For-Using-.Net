<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="JioRecharge.aspx.cs" Inherits="NetWebsite.JioRecharge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
        .recharge-plans {
            padding: 50px 20px;
            background-color: #f8f9fa;
        }

        .recharge-plans h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2rem;
            color: #d70f64;
        }

        .phone-input {
            text-align: center;
            margin-bottom: 30px;
        }

        .phone-input input {
            padding: 10px;
            font-size: 1rem;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .phone-input button {
            background-color: #d70f64;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
        }

        .phone-input button:hover {
            background-color: #b00b52;
        }

        .plans-table {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
            text-align: left;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .plans-table th, .plans-table td {
            padding: 12px;
            border: 1px solid #ddd;
        }

        .plans-table th {
            background-color: #d70f64;
            color: white;
        }

        .plans-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .plans-table tr:hover {
            background-color: #f8d7da;
        }

        .add-to-cart-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-to-cart-btn:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="recharge-plans">
        <h2>Jio Recharge Plans</h2>

        <!-- Phone Number Input -->
        <div class="phone-input">
            <input type="text" id="phoneNumber" placeholder="Enter Mobile Number" />
            <button onclick="setPhoneNumber()">Submit</button>
        </div>

        <!-- Plans Table -->
        <table class="plans-table">
            <thead>
                <tr>
                    <th>Plan</th>
                    <th>Validity</th>
                    <th>Data</th>
                    <th>Price</th>
                    <th>Add to Cart</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1.5GB/Day Plan</td>
                    <td>28 Days</td>
                    <td>42GB</td>
                    <td>₹299</td>
                    <td>
                        <button class="add-to-cart-btn" onclick="addToCart('₹299', '1.5GB/Day Plan')">Add to Cart</button>
                    </td>
                </tr>
                <tr>
                    <td>2GB/Day Plan</td>
                    <td>56 Days</td>
                    <td>112GB</td>
                    <td>₹499</td>
                    <td>
                        <button class="add-to-cart-btn" onclick="addToCart('₹499', '2GB/Day Plan')">Add to Cart</button>
                    </td>
                </tr>
                <tr>
                    <td>3GB/Day Plan</td>
                    <td>84 Days</td>
                    <td>252GB</td>
                    <td>₹999</td>
                    <td>
                        <button class="add-to-cart-btn" onclick="addToCart('₹999', '3GB/Day Plan')">Add to Cart</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
        let mobileNumber = '';

        // Set Mobile Number
        function setPhoneNumber() {
            const input = document.getElementById('phoneNumber').value;
            if (input.length === 10 && /^[6-9]\d{9}$/.test(input)) {
                mobileNumber = input;
                alert(`Mobile Number set to ${mobileNumber}`);
            } else {
                alert('Please enter a valid 10-digit mobile number.');
            }
        }

        // Add to Cart
        function addToCart(price, plan) {
            if (!mobileNumber) {
                alert('Please set your mobile number first!');
                return;
            }
            alert(`Recharge Plan: ${plan} added for number ${mobileNumber}. Total: ${price}`);
        }
    </script>
</asp:Content>
