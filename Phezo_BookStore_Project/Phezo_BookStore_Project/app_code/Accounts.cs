using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Member
/// </summary>
public class Accounts
{
    public string UserName {get;set;}
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string profilepicture { get; set; }
    public string Gender { get; set; }
    public string City { get; set; }
    public DateTime? Created_at { get; set; }

   
	public Accounts()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void AddAccounts()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = Config.GetConnectionStr();
        conn.Open();

        string sql = "Insert into Accounts values(@username , @first_name , @last_name , @email , @password , @profile_picture , @gender , @city , @created_at)";
        SqlCommand cmd = new SqlCommand(sql, conn);

        cmd.Parameters.AddWithValue("username", this.UserName);
        cmd.Parameters.AddWithValue("first_name", this.FirstName);
        cmd.Parameters.AddWithValue("last_name", this.LastName);
        cmd.Parameters.AddWithValue("email", this.Email);
        cmd.Parameters.AddWithValue("password", this.Password);
        cmd.Parameters.AddWithValue("profile_picture", this.profilepicture);
        cmd.Parameters.AddWithValue("gender", this.Gender);
        cmd.Parameters.AddWithValue("city", this.City);
        cmd.Parameters.AddWithValue("created_at", this.Created_at);

        cmd.ExecuteNonQuery();
    }
}