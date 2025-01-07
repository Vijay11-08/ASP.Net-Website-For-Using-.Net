using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class XiaomiMobileDetails : System.Web.UI.Page
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
                Response.Redirect("XiaomiMobile.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadPhoneDetails(string model)
        {
            switch (model.ToLower())
            {
                case "mi11":
                    phoneName.Text = "Xiaomi Mi 11";
                    phoneDescription.Text = "Xiaomi Mi 11 comes with a stunning 6.81-inch AMOLED display, Snapdragon 888, and a 108MP triple-camera system.";
                    phonePrice.Text = "$699";
                    phoneImage.ImageUrl = "Image/xmi11.jpg";
                    break;

                case "redminote10":
                    phoneName.Text = "Redmi Note 10";
                    phoneDescription.Text = "Redmi Note 10 offers a 6.43-inch AMOLED display, Snapdragon 678, and a 48MP quad-camera setup.";
                    phonePrice.Text = "$199";
                    phoneImage.ImageUrl = "Image/xnote10.jpg";
                    break;

                case "pocox3":
                    phoneName.Text = "Poco X3";
                    phoneDescription.Text = "Poco X3 delivers a smooth 120Hz display, Snapdragon 732G, and a massive 6000mAh battery.";
                    phonePrice.Text = "$249";
                    phoneImage.ImageUrl = "Image/xpocox3.jpg";
                    break;

                case "mi10t":
                    phoneName.Text = "Mi 10T";
                    phoneDescription.Text = "Mi 10T features a 144Hz AdaptiveSync display, Snapdragon 865, and a 64MP camera for ultimate performance.";
                    phonePrice.Text = "$499";
                    phoneImage.ImageUrl = "Image/x10t.jpg";
                    break;

                default:
                    phoneName.Text = "Phone Not Found";
                    phoneDescription.Text = "Sorry, we couldn't find the phone you're looking for.";
                    phonePrice.Text = "$0.00";
                    phoneImage.ImageUrl = "Image/placeholder.jpg";
                    break;
            }
        }

        protected void addToCart()
        {
            // Logic for adding the phone to the cart
        }
    }
}