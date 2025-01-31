﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace NyraShopping.Root
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NyraShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //Send Reset link via Email

                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi ," + Username + "<br/><br/>Click the link below to reset your password<br/> <br/> https://localhost:44391/Root/RecoverPassword.aspx?Id=" + myGUID;

                    MailMessage PassRecMail = new MailMessage("clothifyystore@gmail.com", ToEmailAddress)
                    {
                        Body = EmailBody,
                        IsBodyHtml = true,
                        Subject = ("Reset Password")
                    };

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("clothifyystore@gmail.com", "vzwz swti bpwj cyzk");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.Send(PassRecMail);
                    }
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Reset Link Send !','Check YOur email for reset password. Thanks!','success')", true);

                    //lblResetPassMsg.Text = "Reset Link send ! Check YOur email for reset password";
                    //lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    //txtEmailID.Text = string.Empty;
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('OOps!','This Email Does not Exist...Try agian','warning')", true);
                    //lblResetPassMsg.Text = "OOps! This Email Does not Exist...Try agian ";
                    // lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    //txtEmailID.Text = string.Empty;
                    //txtEmailID.Focus();
                }
            }
        }
    }
}