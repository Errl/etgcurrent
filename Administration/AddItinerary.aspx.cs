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

public partial class Administration_AddItinerary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string OutboundDate = newOutboundDate.Text;
        string ReturnDate = newReturnDate.Text;
        string Price = newPrice.Text;
        string AirlineTaxes = newAirlineTaxes.Text;
        string PaxCardTaxes = newPaxCardTaxes.Text;
        string Notes = newNotes.Text;
        string Itinerary = newItinerary.Text;
        string Airline = newAirline.Text;
        string Confirmation = newConfirmation.Text;
        // Update the UserProfiles record for this user
        // Get the UserId of the just-added user
      

        // Insert a new record into UserProfiles
        string connectionString =
             ConfigurationManager.ConnectionStrings["LeadsConnectionString"].ConnectionString;

        string updateSql = "INSERT INTO PaxItinerary  (OutboundDate, ReturnDate, Price, AirlineTaxes, PaxCardTaxes, Itinerary, Notes, UserId, Airline, Confirmation) VALUES (@OutboundDate,@ReturnDate,@Price,@AirlineTaxes,@PaxCardTaxes,@Itinerary,@Notes,@UserId,@Airline,@Confirmation)";

        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(updateSql, myConnection);

            myCommand.Parameters.AddWithValue("@OutboundDate", OutboundDate.Trim());
            myCommand.Parameters.AddWithValue("@ReturnDate", ReturnDate.Trim());
            myCommand.Parameters.AddWithValue("@Price", Price.Trim());
            myCommand.Parameters.AddWithValue("@AirlineTaxes", AirlineTaxes.Trim());
            myCommand.Parameters.AddWithValue("@PaxCardTaxes", PaxCardTaxes.Trim());
            myCommand.Parameters.AddWithValue("@Notes", Notes.Trim());
            myCommand.Parameters.AddWithValue("@Itinerary", Itinerary.Trim());
            myCommand.Parameters.AddWithValue("@Airline", Airline.Trim());
            myCommand.Parameters.AddWithValue("@Confirmation", Confirmation.Trim());
            myCommand.Parameters.AddWithValue("@UserId", Session["ID"]);

            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }

        Response.Redirect("~/Administration/AdminItinerary.aspx");
    }
}