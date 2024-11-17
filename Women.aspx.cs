using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using System.Configuration;


namespace NyraShopping.Root
{
    public partial class Women : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["BuyNow"] == "YES")
                    {

                    }
                    BindProductRepeater();
                    BindCartNumber();

                }
            }
            else
            {
                if (Request.QueryString["BuyNow"] == "YES")
                {
                    Response.Redirect("SignIn.aspx");
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }

        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts11", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                        if (dt.Rows.Count <= 0)
                        {
                            // Label1.Text = "Sorry! Currently no products in this category.";
                        }
                        else
                        {
                            //Label1.Text = "Showing All Products";
                        }
                    }
                }
            }
        }

        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "₹";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }
        public void BindCartNumber()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserIDD);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                            //CartBadge.InnerText = CartQuantity;
                        }
                        else
                        {
                            // _ = CartBadge.InnerText == 0.ToString();
                            //CartBadge.InnerText = "0";
                        }
                    }
                }
            }
        }

        protected void TxtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {
            string searchText = txtFilterGrid1Record.Text.Trim();
            if (!string.IsNullOrEmpty(searchText))
            {

                string query = @"SELECT TOP 1 A.*,B.*,C.Name AS BrandName, A.PPrice - A.PSelPrice AS DiscAmount, B.Name AS ImageName, B.Extention AS extension FROM tblProducts A INNER JOIN tblBrands C ON C.BrandID = A.PBrandID CROSS APPLY (SELECT TOP 1 * FROM tblProductImages B WHERE B.PID = A.PID ORDER BY B.PID DESC) B WHERE A.PName LIKE @searchText OR C.Name LIKE @searchText ORDER BY A.PID DESC";

                using (SqlConnection con = new SqlConnection(CS))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@searchText", "%" + searchText + "%");
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                        {
                            rptrProducts.DataSource = ds.Tables[0];
                            rptrProducts.DataBind();
                        }
                        else
                        {
                            // Handle case when no results are found, such as displaying a message.
                            // For example: lblMessage.Text = "No results found.";
                            // You can also clear the data repeater: rptrProducts.DataSource = null; rptrProducts.DataBind();
                        }
                    }
                }
            }
            else
            {
                // Handle case when the search text is empty. You may want to clear the data repeater or display a message.
                // For example: lblMessage.Text = "Please enter a search query.";
                // You can also clear the data repeater: rptrProducts.DataSource = null; rptrProducts.DataBind();
            }
        }
    }
}