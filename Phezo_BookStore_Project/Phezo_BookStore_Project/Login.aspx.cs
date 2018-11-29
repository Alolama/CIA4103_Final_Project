using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "admin" && txtPassword.Text == "password")
        {
            Response.Redirect("Default.aspx");
        }

        else
        {
            lblPassword.Visible = true;
            lblUserName.Visible = true;

            
            lblUserName.Text = "please enter correct Username";
            lblPassword.Text = "please enter correct Password";
        }

        }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {

    }
}
