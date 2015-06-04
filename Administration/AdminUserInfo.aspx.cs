using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.IO;
using System.Data.SqlClient;


public partial class Administration_AdminUserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MoreUserInfo_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        SettingsUpdatedMessage.Visible = true;
    }


    protected void MoreUserInfo_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session ["ID"] = (MoreUserInfo.DataKeys[e.NewSelectedIndex].Value);
        // Get the datakey of the selected row
    
    Response.Redirect("AdminItinerary.aspx");

    }
}