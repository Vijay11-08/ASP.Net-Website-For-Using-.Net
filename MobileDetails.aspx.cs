using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class MobileDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Simulated data (Replace with database logic)
            var mobiles = new Dictionary<string, (string Name, string Image, string Description, string Deal)>
            {
                { "1", ("Latest Smartphone", "Image/Image.jpg", "This is the latest smartphone with cutting-edge features.", "Get 10% off!") },
                { "2", ("Sleek Design", "Image/Image.jpg", "Experience a sleek design with powerful performance.", "Flat 20% discount!") },
                { "3", ("High Performance", "Image/Image.jpg", "Unmatched performance for gaming and multitasking.", "Special Deal: Free Accessories!") },
                { "4", ("Affordable Prices", "Image/Image.jpg", "Quality phones at prices you can afford.", "Buy One Get One Free!") },
                { "5", ("Top Brands", "Image/Image.jpg", "Choose from the top brands in the market.", "Limited Time Offer: Extra Warranty!") },
                { "6", ("Accessories", "Image/Image.jpg", "Find the best accessories for your mobile devices.", "Exclusive Offer: 30% Off on Accessories!") }
            };

            string mobileId = Request.QueryString["mobileId"];
            if (!string.IsNullOrEmpty(mobileId) && mobiles.ContainsKey(mobileId))
            {
                var mobile = mobiles[mobileId];
                mobileName.InnerText = mobile.Name;
                mobileImage.Src = mobile.Image;
                mobileDescription.InnerText = mobile.Description;
                mobileDeal.InnerText = mobile.Deal;
            }
            else
            {
                mobileName.InnerText = "Mobile Not Found";
                mobileDescription.InnerText = "The mobile you are looking for does not exist.";
            }

        }
    }
}