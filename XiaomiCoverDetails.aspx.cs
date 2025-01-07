using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class XiaomiCoverDetails : System.Web.UI.Page
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
                Response.Redirect("XiaomiCovers.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadCoverDetails(string model)
        {
            switch (model.ToLower())
            {
                case "clearcase":
                    coverName.Text = "Clear Case";
                    coverDescription.Text = "A slim and transparent cover that protects your Xiaomi phone without hiding its design.";
                    coverPrice.Text = "$19";
                    coverImage.ImageUrl = "Image/x_cover.jpg"; // Ensure the correct image path is provided
                    break;

                case "leathercase":
                    coverName.Text = "Leather Case";
                    coverDescription.Text = "A premium leather case that adds a touch of luxury while protecting your Xiaomi phone.";
                    coverPrice.Text = "$39";
                    coverImage.ImageUrl = "Image/x_cover.jpg"; // Ensure the correct image path is provided
                    break;

                case "siliconecase":
                    coverName.Text = "Silicone Case";
                    coverDescription.Text = "A soft-touch silicone case that provides a comfortable grip and excellent protection for your Xiaomi phone.";
                    coverPrice.Text = "$29";
                    coverImage.ImageUrl = "Image/x_cover.jpg"; // Ensure the correct image path is provided
                    break;

                case "ruggedcase":
                    coverName.Text = "Rugged Case";
                    coverDescription.Text = "A rugged case that offers maximum protection for your Xiaomi phone, designed for tough environments.";
                    coverPrice.Text = "$49";
                    coverImage.ImageUrl = "Image/x_cover.jpg"; // Ensure the correct image path is provided
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