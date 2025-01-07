using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class RealmeCableDetails : System.Web.UI.Page
    {

        protected string CableModel { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                CableModel = Request.QueryString["model"].ToString();
                LoadCableDetails(CableModel);
            }
            else
            {
                Response.Redirect("RealmeCables.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadCableDetails(string model)
        {
            switch (model.ToLower())
            {
                case "lightningusbcable":
                    cableName.Text = "Lightning to USB-A Cable";
                    cableDescription.Text = "This cable provides a fast and reliable connection from Lightning to USB-A.";
                    cablePrice.Text = "$19";
                    cableImage.ImageUrl = "Image/r_cable.jpg"; // Ensure you have the correct image path
                    break;

                case "lightningtousbc":
                    cableName.Text = "Lightning to USB-C Cable";
                    cableDescription.Text = "This cable is designed to provide a fast charging experience with Lightning to USB-C.";
                    cablePrice.Text = "$29";
                    cableImage.ImageUrl = "Image/r_cable.jpg"; // Ensure you have the correct image path
                    break;

                case "usbtolightning":
                    cableName.Text = "USB-C to Lightning Cable";
                    cableDescription.Text = "This cable allows you to connect your USB-C device to a Lightning connector for quick data transfer.";
                    cablePrice.Text = "$25";
                    cableImage.ImageUrl = "Image/r_cable.jpg"; // Ensure you have the correct image path
                    break;

                case "3mlightningcable":
                    cableName.Text = "3M Lightning Cable";
                    cableDescription.Text = "A long 3-meter cable that offers maximum flexibility for charging your device.";
                    cablePrice.Text = "$35";
                    cableImage.ImageUrl = "Image/r_cable.jpg"; // Ensure you have the correct image path
                    break;

                default:
                    cableName.Text = "Cable Not Found";
                    cableDescription.Text = "Sorry, we couldn't find the cable you're looking for.";
                    cablePrice.Text = "$0.00";
                    break;
            }
        }

        protected void addToCart()
        {
            // Your logic for adding the cable to the cart
        }
    }
}