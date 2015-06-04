using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for CompanyAccess
/// </summary>
public static class CompanyAccess
{
	static CompanyAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // Retrieve the list of Companies
    public static DataTable GetCompanies()
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetCompanies";
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

}