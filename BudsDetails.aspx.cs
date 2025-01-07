using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class BudsDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string buds = Request.QueryString["buds"];
                if (!string.IsNullOrEmpty(buds))
                {
                    LoadBudsDetails(buds);
                }
                else
                {
                    Response.Redirect("SamsungBuds.aspx");
                }
            }
        }

        private void LoadBudsDetails(string buds)
        {
            // Example data - replace with actual database queries if needed
            var budsData = new Dictionary<string, (string Description, string Image)>
            {
                { "Samsung Galaxy Buds Pro", ("High-quality sound with active noise cancellation.", "Image/BudsPro.jpg") },
                { "Samsung Galaxy Buds Live", ("Comfortable fit with noise-canceling features.", "Image/BudsLive.jpg") }
            };

            if (budsData.ContainsKey(buds))
            {
                var details = budsData[buds];
                budsName.Text = buds;  // Use .Text instead of .InnerText
                budsDescription.Text = details.Description;  // Use .Text instead of .InnerText
                budsImage.ImageUrl = details.Image;  // Use .ImageUrl instead of .Src
               // addToCartBtn.NavigateUrl = $"Cart_Page.aspx?product={buds}";  // Use .NavigateUrl instead of .HRef
            }
            else
            {
                budsName.Text = "Product Not Found";  // Use .Text instead of .InnerText
                budsDescription.Text = "The product you are looking for is not available.";  // Use .Text instead of .InnerText
                budsImage.ImageUrl = "Image/notfound.jpg";  // Use .ImageUrl instead of .Src
                addToCartBtn.Visible = false;  // Hide the button if product is not found
            }
        }
    }
}
