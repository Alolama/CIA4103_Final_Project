using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.QueryString["id"]!=null)
        {
            int bookid = int.Parse(Request.QueryString["id"]);
           
            dlBooks.DataSource = Book.GetBookByID(bookid);
            dlBooks.DataBind();

            DataTable dr = BookReview.GetReviewsByBook(bookid);
            if (dr.Rows.Count > 0)
            {
                dlReviews.DataSource = BookReview.GetReviewsByBook(bookid);
                dlReviews.DataBind();
            }
            else
            {
                lblExceptionMessage.Text = "There are no reviews for this book";
            }
        }
        else
        {
            Response.Redirect("SearchBook.aspx");
        }
    }
    
 
   
  
}