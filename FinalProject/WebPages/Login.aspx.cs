using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.dsBrandedHardwareTableAdapters;
using System.Web.Security;
using FinalProject.Classes;


namespace FinalProject.WebPages
{

    public partial class Login : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (SecurityLogic.AuthUser(username, password))
            {
                FormsAuthentication.RedirectFromLoginPage(username, false); // false for the presisten cookie 
            }
            else
            {
                lblMsg.Text = "Login Failed";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }

        }
        

       
    }
}