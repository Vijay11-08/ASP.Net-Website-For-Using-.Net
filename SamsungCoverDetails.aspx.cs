using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class SamsungCoverDetails : System.Web.UI.Page
    {
        protected string CoverModel { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                CoverModel = Request.QueryString["model"].ToString();
                LoadCoverDetails(CoverModel);
            }
            else
            {
                Response.Redirect("SamsungCovers.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadCoverDetails(string model)
        {
            switch (model.ToLower())
            {
                case "s21":
                    coverName.Text = "Samsung Galaxy S21 Cover";
                    coverDescription.Text = "This protective cover is designed for the Samsung Galaxy S21, offering durability and style.";
                    coverPrice.Text = "$29.99";
                    coverImage.ImageUrl = "Image/s21.jpg"; // Ensure the correct image path is provided
                    break;

                case "note20":
                    coverName.Text = "Samsung Galaxy Note 20 Cover";
                    coverDescription.Text = "A stylish and sturdy cover for the Samsung Galaxy Note 20, designed to protect and enhance your device.";
                    coverPrice.Text = "$34.99";
                    coverImage.ImageUrl = "Image/snote20.jpg"; // Ensure the correct image path is provided
                    break;

                case "zfold3":
                    coverName.Text = "Samsung Galaxy Z Fold 3 Cover";
                    coverDescription.Text = "A premium cover designed for the Samsung Galaxy Z Fold 3, offering both protection and elegance.";
                    coverPrice.Text = "$59.99";
                    coverImage.ImageUrl = "Image/szfold3.jpg"; // Ensure the correct image path is provided
                    break;

                case "a52":
                    coverName.Text = "Samsung Galaxy A52 Cover";
                    coverDescription.Text = "A protective cover for the Samsung Galaxy A52 that combines practicality and design.";
                    coverPrice.Text = "$19.99";
                    coverImage.ImageUrl = "Image/sa52.jpg"; // Ensure the correct image path is provided
                    break;

                default:
                    coverName.Text = "Cover Not Found";
                    coverDescription.Text = "Sorry, we couldn't find the cover you're looking for.";
                    coverPrice.Text = "$0.00";
                    coverImage.ImageUrl = ""; // No image for unknown cover
                    break;
            }
        }

        protected void addToCart(object sender, EventArgs e)
        {
            // Add the cover to the cart (logic for cart will be implemented here)
        }
    }
}