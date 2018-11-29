using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BooksByGenre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //if this is the first time page is requested
        if (!IsPostBack)
        {
            DataTable dtGenres = Genre.GetAllGenres();
            ddlGenres.DataSource = dtGenres;
            ddlGenres.DataTextField = "GenreName";
            ddlGenres.DataValueField = "GenreID";
            ddlGenres.DataBind();
        }
       
            string id = ddlGenres.SelectedValue;
            string sortcolumn = rdoSort.SelectedValue;

            DataTable dt = Book.GetBookByGenreID(id, sortcolumn);
            dlBooks.DataSource = dt;
            dlBooks.DataBind();
          
   
       
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}