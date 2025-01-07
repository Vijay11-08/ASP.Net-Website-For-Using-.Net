using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class MobileAccessoryDetails : System.Web.UI.Page
    {
        protected string AccessoryModel { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                AccessoryModel = Request.QueryString["model"].ToString();
                LoadAccessoryDetails(AccessoryModel);
            }
            else
            {
                Response.Redirect("MobileAccessories.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadAccessoryDetails(string model)
        {
            switch (model.ToLower())
            {
                case "phonecover":
                    accessoryName.Text = "Phone Cover";
                    accessoryDescription.Text = "A slim and stylish phone cover to protect your device.";
                    accessoryPrice.Text = "$15";
                    accessoryImage.ImageUrl = "Image/i_cover.jpg"; // Ensure the correct image path is provided
                    break;

                case "chargingcable":
                    accessoryName.Text = "Charging Cable";
                    accessoryDescription.Text = "A fast and durable charging cable for quick power-ups.";
                    accessoryPrice.Text = "$10";
                    accessoryImage.ImageUrl = "Image/i_cable.jpg"; // Ensure the correct image path is provided
                    break;

                case "fastcharger":
                    accessoryName.Text = "Fast Charger";
                    accessoryDescription.Text = "A high-speed charger designed to recharge your device quickly.";
                    accessoryPrice.Text = "$25";
                    accessoryImage.ImageUrl = "Image/i_charger.jpg"; // Ensure the correct image path is provided
                    break;

                case "earphones":
                    accessoryName.Text = "Earphones";
                    accessoryDescription.Text = "Clear and crisp sound quality with noise reduction earphones.";
                    accessoryPrice.Text = "$20";
                    accessoryImage.ImageUrl = "Image/i_ear.jpg"; // Ensure the correct image path is provided
                    break;

                case "wirelessbuds":
                    accessoryName.Text = "Wireless Buds";
                    accessoryDescription.Text = "Wireless buds for the ultimate audio experience with comfort.";
                    accessoryPrice.Text = "$35";
                    accessoryImage.ImageUrl = "Image/i_buds.jpg"; // Ensure the correct image path is provided
                    break;

                case "smartwatch":
                    accessoryName.Text = "Smart Watch";
                    accessoryDescription.Text = "A smart watch with fitness tracking, notifications, and more.";
                    accessoryPrice.Text = "$60";
                    accessoryImage.ImageUrl = "Image/i_watch.jpg"; // Ensure the correct image path is provided
                    break;

                case "temperedglass":
                    accessoryName.Text = "Tempered Glass";
                    accessoryDescription.Text = "Strong tempered glass to protect your phone’s screen from scratches and damage.";
                    accessoryPrice.Text = "$5";
                    accessoryImage.ImageUrl = "Image/i_tem.png"; // Ensure the correct image path is provided
                    break;

                case "ultraslimcover":
                    accessoryName.Text = "Ultra Slim Cover";
                    accessoryDescription.Text = "Strong tempered glass to protect your phone’s screen from scratches and damage.";
                    accessoryPrice.Text = "$18";
                    accessoryImage.ImageUrl = "Image/i_cover.jpg"; // Ensure the correct image path is provided
                    break;

                default:
                    accessoryName.Text = "Accessory Not Found";
                    accessoryDescription.Text = "Sorry, we couldn't find the accessory you're looking for.";
                    accessoryPrice.Text = "$0.00";
                    accessoryImage.ImageUrl = ""; // No image for unknown accessory
                    break;
            }
        }

        protected void addToCart(object sender, EventArgs e)
        {
            // Add the accessory to the cart (logic for cart will be implemented here)
        }
    }
}