using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class SamsungPhoneDetails : System.Web.UI.Page
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
                Response.Redirect("SamsungMobiles.aspx"); // Redirect if no model is specified
            }
        }

        private void LoadPhoneDetails(string model)
        {
            switch (model.ToLower())
            {
                case "s21":
                    phoneName.Text = "Samsung Galaxy S21";
                    phoneDescription.Text = "The Samsung Galaxy S21 features a 6.2-inch AMOLED display, Exynos 2100 processor, and triple-camera system.";
                    phonePrice.Text = "$799";
                    phoneImage.ImageUrl = "Image/s21.jpg"; // Ensure the correct image path is provided
                    break;

                case "note20":
                    phoneName.Text = "Samsung Galaxy Note 20";
                    phoneDescription.Text = "The Samsung Galaxy Note 20 comes with a 6.7-inch display, S-Pen, and Exynos 990 processor.";
                    phonePrice.Text = "$999";
                    phoneImage.ImageUrl = "Image/snote20.jpg"; // Ensure the correct image path is provided
                    break;

                case "zfold3":
                    phoneName.Text = "Samsung Galaxy Z Fold 3";
                    phoneDescription.Text = "The Samsung Galaxy Z Fold 3 offers a foldable 7.6-inch AMOLED display and Snapdragon 888 processor.";
                    phonePrice.Text = "$1799";
                    phoneImage.ImageUrl = "Image/szfold3.jpg"; // Ensure the correct image path is provided
                    break;

                case "a52":
                    phoneName.Text = "Samsung Galaxy A52";
                    phoneDescription.Text = "The Samsung Galaxy A52 is equipped with a 6.5-inch AMOLED display and quad-camera setup.";
                    phonePrice.Text = "$499";
                    phoneImage.ImageUrl = "Image/sa52.jpg"; // Ensure the correct image path is provided
                    break;

                default:
                    phoneName.Text = "Phone Not Found";
                    phoneDescription.Text = "Sorry, we couldn't find the phone you're looking for.";
                    phonePrice.Text = "$0.00";
                    phoneImage.ImageUrl = ""; // No image for unknown phone
                    break;
            }
        }

        protected void addToCart(object sender, EventArgs e)
        {
            
        }
    }
}
