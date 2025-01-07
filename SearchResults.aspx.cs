using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the search query from the URL
            string query = Request.QueryString["query"];

            if (!string.IsNullOrEmpty(query))
            {
                // Perform search and bind results
                List<SearchResult> results = SearchContent(query);

                if (results.Count > 0)
                {
                    // Display results in the Repeater control
                    searchResultsRepeater.DataSource = results;
                    searchResultsRepeater.DataBind();
                }
                else
                {
                    // Show no results message
                    noResultsMessage.Visible = true;
                    searchResultsRepeater.Visible = false;
                }
            }
        }

        // Simulated search function (replace with actual database or content search logic)
        private List<SearchResult> SearchContent(string query)
        {
            List<SearchResult> results = new List<SearchResult>();

            // Example data - this would be fetched from your database, files, or other sources
            results.Add(new SearchResult { Title = "Samsung Galaxy S21", Description = "Latest Samsung mobile phone", Url = "SamsungPhoneDetails.aspx?model=s21" });
            results.Add(new SearchResult { Title = "Mobile Section", Description = "Browse mobile phones in various categories", Url = "MobileSection.aspx" });

            // Filter results based on the query
            results = results.FindAll(r => r.Title.ToLower().Contains(query.ToLower()) || r.Description.ToLower().Contains(query.ToLower()));

            return results;
        }
    }

    // SearchResult model to hold the title, description, and URL of each search result
    public class SearchResult
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string Url { get; set; }
    }
}
    
