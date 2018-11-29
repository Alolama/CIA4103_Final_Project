using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for BookReview
/// </summary>
public class BookReview
{
    public int BookID { get; set; }
    public string UserName { get; set; }
    public int Rating { get; set; }
    public string Comment { get; set; }

  
    public static DataTable GetReviewsByBook(int BookID)
    {
        //Open Database connection
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = Config.GetConnectionStr();
        conn.Open();

        //Prepare SQL Command with parameter
        string sql = "Select * from BookReview Where BookID = @id";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("id", BookID); // set the parameter value to the BookID that is sent to the method

        // Create data adapter
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //Create a DataTable that will store the result of the query
        DataTable dt = new DataTable();
        // this will query your database and return the result to your datatable
        da.Fill(dt);

        //Close connection and release the data adapter
        conn.Close();
        da.Dispose();

        //return the Datatable
        return dt;
    }
	public BookReview()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}