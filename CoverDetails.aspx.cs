using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class CoverDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cover = Request.QueryString["cover"];
                if (!string.IsNullOrEmpty(cover))
                {
                    LoadCoverDetails(cover);
                }
                else
                {
                    Response.Redirect("SamsungCovers.aspx");
                }
            }
        }

        private void LoadCoverDetails(string cover)
        {
            // Example data - replace with actual data retrieval from database or other source
            var coverData = new System.Collections.Generic.Dictionary<string, (string Description, string Image, double Price)>
            {
                { "Samsung Galaxy S21 Cover", ("Protect your Samsung Galaxy S21 with a stylish cover.", "Image/S21Cover.jpg", 29.99) },
                { "Samsung Galaxy S20 Cover", ("Keep your Samsung Galaxy S20 safe with a protective case.", "Image/S20Cover.jpg", 25.99) }
            };

            if (coverData.ContainsKey(cover))
            {
                var details = coverData[cover];
                coverName.InnerText = cover; // Assigning the cover name to the page
                coverDescription.InnerText = details.Description; // Assigning the description
                coverImage.Src = details.Image; // Assigning the image path
                addToCartBtn.Attributes["onclick"] = $"addToCart('{cover}', {details.Price})"; // Assigning onclick to add the item to the cart
            }
            else
            {
                coverName.InnerText = "Product Not Found";
                coverDescription.InnerText = "The cover you are looking for is not available.";
                coverImage.Src = "Image/notfound.jpg"; // Placeholder image if cover is not found
                addToCartBtn.Visible = false; // Hide Add to Cart button
            }
        }
    }
}