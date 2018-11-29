using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookLoan
/// </summary>
public class OrderBooks
{
    public int OrderID { get; set; }
    public int BookID { get; set; }
    public int Cost_each { get; set; }
    public int Quantity { get; set; }

	public OrderBooks()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}