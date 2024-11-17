using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

namespace NyraShopping.Root
{
    public partial class UserHome : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Username"] != null)
            {
                btnlogout.Visible = true;
                btnLogin.Visible = false;
                lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
                Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
            }
            else
            {
                btnlogout.Visible = false;
                btnLogin.Visible = true;
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session["Name"] = null;
            Response.Redirect("SignIn.aspx");

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
        
    }
}