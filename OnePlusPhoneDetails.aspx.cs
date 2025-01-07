using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class OnePlusPhoneDetails : System.Web.UI.Page
    {
        protected string PhoneModel { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                PhoneModel = Request.QueryString["model"].ToString();
                LoadPhoneDetails(PhoneModel);
            }
            else
            {
                Response.Redirect("OnePlusMobiles.aspx"); // Redirect if no model is specified
            }
        }
        private void LoadPhoneDetails(string model)
        {
            switch (model.ToLower())
            {
                case "oneplus9pro":
                    phoneName.Text = "OnePlus 9 Pro";
                    phoneDescription.Text = "The OnePlus 9 Pro features a 120Hz Fluid Display, Snapdragon 888 processor, and Hasselblad collaboration for photography.";
                    phonePrice.Text = "$999";
                    phoneImage.ImageUrl = "Image/o9pro.jpg"; // Ensure you have the correct image path
                    break;

                case "oneplus9":
                    phoneName.Text = "OnePlus 9";
                    phoneDescription.Text = "The OnePlus 9 offers a fast Snapdragon 888 processor, 120Hz Fluid Display, and Hasselblad camera system.";
                    phonePrice.Text = "$729";
                    phoneImage.ImageUrl = "Image/o9.jpg"; // Ensure you have the correct image path
                    break;

                case "oneplus8t":
                    phoneName.Text = "OnePlus 8T";
                    phoneDescription.Text = "The OnePlus 8T offers a 120Hz display, Snapdragon 865 chip, and great camera performance.";
                    phonePrice.Text = "$899";
                    phoneImage.ImageUrl = "Image/o8t.jpg"; // Ensure you have the correct image path
                    break;

                case "oneplusnord":
                    phoneName.Text = "OnePlus Nord";
                    phoneDescription.Text = "The OnePlus Nord provides a smooth 90Hz Fluid Display, Snapdragon 865 processor, and great overall performance.";
                    phonePrice.Text = "$699";
                    phoneImage.ImageUrl = "Image/onord.jpg"; // Ensure you have the correct image path
                    break;

                default:
                    phoneName.Text = "Phone Not Found";
                    phoneDescription.Text = "Sorry, we couldn't find the phone you're looking for.";
                    phonePrice.Text = "$0.00";
                    phoneImage.ImageUrl = "Image/placeholder.jpg"; // Ensure you have a placeholder image
                    break;
            }
        }

        protected void addToCart()
        {
            // Your logic for adding the phone to the cart
        }
    }
}