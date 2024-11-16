using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace NyraShopping.Root
{
    public partial class ProductReport : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridview1();
            if (!IsPostBack)
            {


                
                BindGridview1();

            }


            
        }

        
        private void BindGridview1()
        {
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("SELECT distinct t1.PID, t1.PName, t1.PPrice, t1.PSelPrice, t2.Name AS Brand, t3.CatName, t4.SubCatName, t5.GenderName AS Gender, t6.SizeName, t8.Quantity, t9.Name AS ImageName, t9.Extention AS extension FROM tblProducts AS t1 INNER JOIN tblBrands AS t2 ON t2.BrandID = t1.PBrandID INNER JOIN  tblCategory AS t3 ON t3.CatID = t1.PCategoryID INNER JOIN tblSubCategory AS t4 ON t4.SubCatID = t1.PSubCatID INNER JOIN tblGender AS t5 ON t5.GenderID = t1.PGender INNER JOIN tblSizes AS t6 ON t6.SubCategoryID = t1.PSubCatID INNER JOIN tblProductSizeQuantity AS t8 ON t8.PID = t1.PID CROSS APPLY (SELECT TOP 1 * FROM tblProductImages AS t9 WHERE t9.PID = t1.PID ORDER BY t9.PID DESC) AS t9 ORDER BY t1.PName;", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }


        }

        protected void TxtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {
            string searchText = txtFilterGrid1Record.Text.Trim();

            if (!string.IsNullOrEmpty(searchText))
            {
                string query = @"SELECT TOP 1 t1.PID, t1.PName, t1.PPrice, t1.PSelPrice, t2.Name AS Brand, t3.CatName, t4.SubCatName, t5.GenderName AS Gender, t6.SizeName, t8.Quantity, t9.Name AS ImageName, t9.Extention AS extension 
                        FROM tblProducts AS t1 
                        INNER JOIN tblBrands AS t2 ON t2.BrandID = t1.PBrandID 
                        INNER JOIN tblCategory AS t3 ON t3.CatID = t1.PCategoryID 
                        INNER JOIN tblSubCategory AS t4 ON t4.SubCatID = t1.PSubCatID 
                        INNER JOIN tblGender AS t5 ON t5.GenderID = t1.PGender 
                        INNER JOIN tblSizes AS t6 ON t6.SubCategoryID = t1.PSubCatID 
                        INNER JOIN tblProductSizeQuantity AS t8 ON t8.PID = t1.PID 
                        CROSS APPLY (
                            SELECT TOP 1 * FROM tblProductImages AS t9 WHERE t9.PID = t1.PID ORDER BY t9.PID DESC
                        ) t9 
                        WHERE t1.PName LIKE @searchText OR t1.PID LIKE @searchText OR t2.Name LIKE @searchText 
                        ORDER BY t1.PID DESC";

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
                            GridView1.DataSource = ds.Tables[0];
                            GridView1.DataBind();
                        }
                        else
                        {
                            // Handle case when no results are found
                            // For example: lblMessage.Text = "No results found.";
                            GridView1.DataSource = null;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            else
            {
                // Handle case when the search text is empty
                // For example: lblMessage.Text = "Please enter a search query.";
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
    }
}