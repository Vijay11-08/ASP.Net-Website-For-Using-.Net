using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NetWebsite
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";

        }
        // Connection string from web.config
        string connStr = ConfigurationManager.ConnectionStrings["Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\Net Website\\NetWebsite\\App_Data\\Database1.mdf\";Integrated Security=True"].ConnectionString;

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Step 1: Validate inputs
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "All fields are required!";
                return;
            }

            // Step 2: Check if user already exists in the database
            if (CheckIfUserExists(username))
            {
                lblMessage.Text = "Username already exists. Please choose a different one.";
                return;
            }

            // Step 3: Insert data into the database
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO Users (Username, Password, Email) VALUES (@Username, @Password, @Email)";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password); // Make sure to hash the password in a real application
                    cmd.Parameters.AddWithValue("@Email", email);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Registration successful!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblMessage.Text = "Error occurred during registration.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }

        // Method to check if the user already exists
        private bool CheckIfUserExists(string username)
        {
            bool userExists = false;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    userExists = true;
                }
            }

            return userExists;
        }
    }
}