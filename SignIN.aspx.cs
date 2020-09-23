using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security; 
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectExcercise
{
    public partial class SignIN : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader srdr;
        string constr = "server=IN-5CG016FNSN;database=SecurityDb;trusted_connection=true";


        protected void Page_Load(object sender, EventArgs e)
        {
            
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblmsg.Visible = false;
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            lblmsg.Visible = true;
            try
            {
                
               

                con = new SqlConnection(constr);
                cmd = new SqlCommand
                {
                    CommandText = "select UserName from UserDetails where UserName=@un and UserPwd=@upw",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@un", txtName.Text);
                cmd.Parameters.AddWithValue("@upw", txtPwd.Text);
                con.Open();
                srdr = cmd.ExecuteReader();
                if (srdr.HasRows)
                {
                    FormsAuthentication.RedirectFromLoginPage(txtName.Text,true);
             

                }

                else
                {
                    lblmsg.Text = "Login Failed";
                }
                Response.Redirect("SignIN.aspx");
                con.Close();
            }
            
            catch (Exception ex)
            {
                lblmsg.Text = "Error" + ex.Message;
            }
            
        }
    }
}