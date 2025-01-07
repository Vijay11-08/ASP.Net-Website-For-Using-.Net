using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class IphonePhoneDetails : System.Web.UI.Page
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
                Response.Redirect("IphoneMobiles.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadPhoneDetails(string model)
        {
            switch (model.ToLower())
            {
                case "iphone13":
                    phoneName.Text = "iPhone 13";
                    phoneDescription.Text = "The iPhone 13 features a stunning 6.1-inch display, A15 Bionic chip, and an advanced dual-camera system.";
                    phonePrice.Text = "$799";
                    phoneImage.ImageUrl = "Image/i13.jpg"; // Ensure the correct image path is provided
                    break;

                case "iphone13pro":
                    phoneName.Text = "iPhone 13 Pro";
                    phoneDescription.Text = "The iPhone 13 Pro includes a ProMotion display, triple-camera system, and an ultra-fast A15 Bionic chip.";
                    phonePrice.Text = "$999";
                    phoneImage.ImageUrl = "Image/i13pro.jpg"; // Ensure the correct image path is provided
                    break;

                case "iphone12":
                    phoneName.Text = "iPhone 12";
                    phoneDescription.Text = "The iPhone 12 offers a powerful A14 Bionic chip, Super Retina XDR display, and ceramic shield.";
                    phonePrice.Text = "$699";
                    phoneImage.ImageUrl = "Image/i12.jpg"; // Ensure the correct image path is provided
                    break;

                case "iphonese":
                    phoneName.Text = "iPhone SE";
                    phoneDescription.Text = "The iPhone SE packs a powerful A13 Bionic chip into a compact design at an affordable price.";
                    phonePrice.Text = "$399";
                    phoneImage.ImageUrl = "Image/ise.jpg"; // Ensure the correct image path is provided
                    break;

                default:
                    phoneName.Text = "Phone Not Found";
                    phoneDescription.Text = "Sorry, we couldn't find the phone you're looking for.";
                    phonePrice.Text = "$0.00";
                    break;
            }
        }

        protected void addToCart(object sender, EventArgs e)
        {
            // Logic to add the phone to the cart
          //  string message = $"{phoneName.Text} has been added to your cart!";
            // Optionally, display a confirmation message
           // ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{message}');", true);
        }
    }
}