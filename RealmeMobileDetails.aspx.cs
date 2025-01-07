using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class RealmeMobileDetails : System.Web.UI.Page
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
                Response.Redirect("RealmeMobile.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadPhoneDetails(string model)
        {
            switch (model.ToLower())
            {
                case "realme8":
                    phoneName.Text = "Realme 8";
                    phoneDescription.Text = "The Realme 8 features a 6.4-inch AMOLED display, MediaTek Helio G95 processor, and a 64MP quad-camera setup.";
                    phonePrice.Text = "$199";
                    phoneImage.ImageUrl = "Image/r8.jpg";
                    break;

                case "realme8pro":
                    phoneName.Text = "Realme 8 Pro";
                    phoneDescription.Text = "The Realme 8 Pro offers a 108MP camera, Snapdragon 720G processor, and a 6.4-inch AMOLED display.";
                    phonePrice.Text = "$279";
                    phoneImage.ImageUrl = "Image/r8pro.jpg";
                    break;

                case "realmenarzo30":
                    phoneName.Text = "Realme Narzo 30";
                    phoneDescription.Text = "Realme Narzo 30 delivers a powerful gaming experience with a MediaTek Helio G95 processor and a 90Hz refresh rate display.";
                    phonePrice.Text = "$179";
                    phoneImage.ImageUrl = "Image/rnarzo30.jpg";
                    break;

                case "realmec25":
                    phoneName.Text = "Realme C25";
                    phoneDescription.Text = "Realme C25 comes with a massive 6000mAh battery, Helio G70 processor, and a 48MP camera.";
                    phonePrice.Text = "$149";
                    phoneImage.ImageUrl = "Image/rc35.jpg";
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
            // Your logic for adding the phone to the cart
        }
    }
}