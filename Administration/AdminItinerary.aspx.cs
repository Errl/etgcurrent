using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administration_AdminItinerary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session["ID"] = (GridView1.DataKeys[e.NewSelectedIndex].Value);
        // Get the datakey of the selected row

        Response.Redirect("AdminItineraryDetails.aspx");
    }
   
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        SettingsUpdatedMessage.Visible = true;
    }
}