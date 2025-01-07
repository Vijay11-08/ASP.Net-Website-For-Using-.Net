using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class OnePlusBudsDetails : System.Web.UI.Page
    {

        protected string BudsModel { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            // Check if the 'model' query string exists
            if (Request.QueryString["model"] != null)
            {
                BudsModel = Request.QueryString["model"].ToString();
                LoadBudsDetails(BudsModel);
            }
            else
            {
                Response.Redirect("OnePlusBuds.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadBudsDetails(string model)
        {
            switch (model.ToLower())
            {
                case "airpodspro":
                    budsName.Text = "AirPods Pro";
                    budsDescription.Text = "The AirPods Pro offers active noise cancellation, customizable fit, and superior sound quality.";
                    budsPrice.Text = "$249";
                    budsImage.ImageUrl = "Image/o_buds.jpg"; // Ensure you have the correct image path
                    break;

                case "airpodsmax":
                    budsName.Text = "AirPods Max";
                    budsDescription.Text = "AirPods Max delivers incredible sound, spatial audio, and active noise cancellation in a premium over-ear design.";
                    budsPrice.Text = "$549";
                    budsImage.ImageUrl = "Image/o_buds.jpg"; // Ensure you have the correct image path
                    break;

                case "airpods3":
                    budsName.Text = "AirPods 3";
                    budsDescription.Text = "AirPods 3 delivers incredible sound, spatial audio, and active noise cancellation in a premium over-ear design.";
                    budsPrice.Text = "$549";
                    budsImage.ImageUrl = "Image/o_buds.jpg"; // Ensure you have the correct image path
                    break;

                case "airpods2":
                    budsName.Text = "AirPods (2nd Generation)";
                    budsDescription.Text = "The original AirPods with great sound and simple setup for Apple devices.";
                    budsPrice.Text = "$159";
                    budsImage.ImageUrl = "Image/o_buds.jpg"; // Ensure you have the correct image path
                    break;

                default:
                    budsName.Text = "Buds Not Found";
                    budsDescription.Text = "Sorry, we couldn't find the buds you're looking for.";
                    budsPrice.Text = "$0.00";
                    break;
            }
        }

        protected void addToCart()
        {
            // Your logic for adding the buds to the cart
        }
    }
}