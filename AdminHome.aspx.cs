using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Net;
using System.Reflection;

namespace NyraShopping.Root
{
    public partial class AdminHome : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    
                    BindGrid2();
                }
                else
                {
                    Response.Redirect("SignIn.aspx");
                }
            }

        }
        private void BindGrid2()
        {

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand("select  distinct t2.PName,t1.Quantity from tblProductSizeQuantity as t1 inner join tblProducts as t2 on t2.PID=t1.PID", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            rptrreports.DataSource = dt;
            rptrreports.DataBind();
        }
        
    }
}