using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SearchBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        string title = txtTitle.Text;
        DataTable dt = Book.GetBookByTitle(title);
        dlBooks.DataSource = dt;
        dlBooks.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}