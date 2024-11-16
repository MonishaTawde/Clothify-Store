using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NyraShopping.Root
{
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindWishlist();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Save Wishlist to the database
        }

        private void BindWishlist()
        {
            string connectionString = "Your_Connection_String_Here";
            string query = "SELECT * FROM tbl_wishlist";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                adapter.Fill(dataTable);

                // Group the results by name
                DataView view = new DataView(dataTable);
                DataTable distinctNames = view.ToTable(true, "name");

                foreach (DataRow row in distinctNames.Rows)
                {
                    string name = row["name"].ToString();

                    // Display cards for each person
                    // You can use controls like Literal, Panel, etc., to create dynamic HTML
                    Panel cardPanel = new Panel();
                    cardPanel.CssClass = "card";
                    cardPanel.Style["width"] = "18rem";
                    cardPanel.Style["margin-bottom"] = "20px";

                    Panel cardBodyPanel = new Panel();
                    cardBodyPanel.CssClass = "card-body";

                    Literal nameLiteral = new Literal();
                    nameLiteral.Text = "<h5 class='card-title'>" + name + "</h5>";

                    Literal wishesLiteral = new Literal();
                    wishesLiteral.Text = "<p class='card-text'>Here are the wishes:</p>";

                    cardBodyPanel.Controls.Add(nameLiteral);
                    cardBodyPanel.Controls.Add(wishesLiteral);

                    cardPanel.Controls.Add(cardBodyPanel);

                    // Add the panel to the container
                    cardBodyPanel.Controls.Add(cardPanel);
                }
            }
        }
    }
}
    
