using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Diagnostics.Eventing.Reader;


namespace NyraShopping.Root
{
    public partial class SignUp : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            Clr();
        }

        protected void Txtsignup_Click(object sender, EventArgs e)
        {
            if (Isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString))
                {
                    con.Open();
                    string checkEmailQuery = "select count(*) from tblUsers where Email=@Email";
                    SqlCommand checkEmailCmd = new SqlCommand(checkEmailQuery, con);
                    checkEmailCmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    int emailCount = 0;

                    using (SqlDataReader reader = checkEmailCmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            emailCount = (int)reader[0];
                        }
                    }

                    if (emailCount > 0)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Email Already Exist','Unsuccessfull Registration. Try Again','error')", true);
                    }
                    else
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Name,Email,Usertype) Values(@Username,@Password,@Name,@Email,'User')", con);

                        cmd.Parameters.AddWithValue("Username", txtUname.Text);
                        cmd.Parameters.AddWithValue("Password", txtPass.Text);
                        cmd.Parameters.AddWithValue("Name", txtName.Text);
                        cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                        

                        cmd.ExecuteNonQuery();
                        
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Registration successfull!','Your details has been successfully submitted. Thanks!','success')", true);
                        Clr();

                        

                        
                        //Response.Redirect("SignIn.aspx");
                    }
                }
            }
        }

        private bool Isformvalid()
        {
            if (txtUname.Text == "")
            {
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text == "")
            {

                txtPass.Focus();
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {

                txtCPass.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {

                txtEmail.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {

                txtName.Focus();
                return false;
            }
            

            return true;
        }


        private void Clr()
        {
            txtName.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCPass.Text = string.Empty;
            txtUname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            
        }



    }
}

