using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                Accounts user = new Accounts();

                user.UserName = txtUsername.Text;
                user.FirstName = txtFirstname.Text;
                user.LastName = txtLastname.Text;
                user.Email = txtEmail.Text;
                //PROFILE PICTURE NEEDED NOW
                user.Gender = rdoGender.SelectedValue;
                user.City = ddlCity.SelectedValue;
                user.Created_at = System.DateTime.Today;

                user.AddAccounts();
                Response.Redirect("default.aspx");

            }
        }
        catch (Exception )
        {
            lblException.Text = "ERROR";
        }
    }

   
}