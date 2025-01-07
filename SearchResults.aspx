<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="NetWebsite.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>Search Results</h2>

            <!-- No Results Message -->
            <div id="noResultsMessage" runat="server" style="display:none;">
                <p>No results found for your search query.</p>
            </div>

            <!-- Display the search results -->
            <div id="searchResultsContainer">
                <asp:Repeater ID="searchResultsRepeater" runat="server">
                    <ItemTemplate>
                        <div class="search-item">
                            <h4><%# Eval("Title") %></h4>
                            <p><%# Eval("Description") %></p>
                            <a href='<%# Eval("Url") %>'>Read more...</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</asp:Content>
