using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for Config
/// </summary>
public class Config
{
    
    public static string GetConnectionStr()
    { 
        
        string connstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        return connstr;
        
    }
    
    public Config()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}