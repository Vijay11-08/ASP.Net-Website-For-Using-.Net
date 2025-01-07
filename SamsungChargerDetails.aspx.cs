using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class SamsungChargerDetails : System.Web.UI.Page
    {

        protected string ChargerModel { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                ChargerModel = Request.QueryString["model"].ToString();
                LoadChargerDetails(ChargerModel);
            }
            else
            {
                Response.Redirect("SamsungChargers.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadChargerDetails(string model)
        {
            switch (model.ToLower())
            {
                case "lightningusbc":
                    chargerName.Text = "Lightning to USB-C Cable";
                    chargerDescription.Text = "A high-speed Lightning to USB-C cable for fast charging.";
                    chargerPrice.Text = "$19";
                    chargerImage.ImageUrl = "Image/s_charger.jpg"; // Ensure the correct image path is provided
                    break;

                case "magsafecharger":
                    chargerName.Text = "MagSafe Charger";
                    chargerDescription.Text = "MagSafe Charger offers fast wireless charging for iPhone.";
                    chargerPrice.Text = "$39";
                    chargerImage.ImageUrl = "Image/s_charger.jpg"; // Ensure the correct image path is provided
                    break;

                case "20wusbcadapter":
                    chargerName.Text = "20W USB-C Power Adapter";
                    chargerDescription.Text = "The 20W USB-C power adapter provides fast charging for your iPhone.";
                    chargerPrice.Text = "$19";
                    chargerImage.ImageUrl = "Image/s_charger.jpg"; // Ensure the correct image path is provided
                    break;

                case "wirelesschargingpad":
                    chargerName.Text = "Wireless Charging Pad";
                    chargerDescription.Text = "A sleek wireless charging pad compatible with all Qi-enabled devices.";
                    chargerPrice.Text = "$29";
                    chargerImage.ImageUrl = "Image/s_charger.jpg"; // Ensure the correct image path is provided
                    break;

                default:
                    chargerName.Text = "Charger Not Found";
                    chargerDescription.Text = "Sorry, we couldn't find the charger you're looking for.";
                    chargerPrice.Text = "$0.00";
                    break;
            }
        }

        protected void addToCart()
        {
            // Your logic for adding the charger to the cart
        }
    }
}