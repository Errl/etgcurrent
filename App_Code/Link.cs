using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Link
/// </summary>
public class Link
{
    // Builds an absolute URL
    private static string BuildAbsolute(string relativeUri)
    {
        // get current uri
        Uri uri = HttpContext.Current.Request.Url;
        // build absolute path
        string app = HttpContext.Current.Request.ApplicationPath;
        if (!app.EndsWith("/")) app += "/";
        relativeUri = relativeUri.TrimStart('/');
        // return the absolute path
        return HttpUtility.UrlPathEncode(
        String.Format("http://{0}:{1}{2}{3}",
        uri.Host, uri.Port, app, relativeUri));
    }
    // Generate a department URL
    public static string ToCompany(string companyId, string page)
    {
        if (page == "1")
            return BuildAbsolute(String.Format("AdminCompanies.aspx?CompanyID={0}", companyId));
        else
            return BuildAbsolute(String.Format("AdminCompanies.aspx?CompanyID={0}&Page={1}", companyId, page));
    }
    // Generate a department URL for the first page
    public static string ToCompany(string companyId)
    {
        return ToCompany(companyId, "1");
    }
}