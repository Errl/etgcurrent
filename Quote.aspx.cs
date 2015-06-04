using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Quote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (newTrip.SelectedValue == "3")
        {
  newReturnDate.Visible = false;
  returnlabel.Visible = false;
        }

    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        if (newTrip.SelectedValue == "3")
        {
            string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
            string leadMessage = "Lead generated on " + dateTime;
            leadMessage += "\n\n Trip: " + newTrip.SelectedValue;
            leadMessage += "\n\n Name: " + newName.Text;
            leadMessage += "\n\n Phone: " + newPhone.Text;
            leadMessage += "\n\n Email: " + newEmail.Text;
            leadMessage += "\n\n From: " + newDeparture.Text;
            leadMessage += "\n\n From Date: " + newDepartureDate.Text;
            leadMessage += "\n\n To: " + newArrival.Text;
            leadMessage += "\n\n From: " + newDeparture2.Text;
            leadMessage += "\n\n From Date: " + newDepartureDate2.Text;
            leadMessage += "\n\n To: " + newArrival2.Text;
            leadMessage += "\n\n From: " + newDeparture3.Text;
            leadMessage += "\n\n From Date: " + newDepartureDate3.Text;
            leadMessage += "\n\n To: " + newArrival3.Text;
            leadMessage += "\n\n Passengers: " + newPassengers.SelectedValue;
            leadMessage += "\n\n Cabin: " + newCabin.SelectedValue;

            if (newMessage.Text != null)
            {
                leadMessage += "\n\n Messsage: " + newMessage.Text;
            }

            try
            {

                string from = LeadConfiguration.MailFrom;
                string to = LeadConfiguration.ErrorLogEmail;
                string subject = "New elite travel guru Lead";
                string body = leadMessage;
                Utilities.SendMail(from, to, subject, body);

            }
            catch
            {
                throw;
            }
        }

        else
        { 
        string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        string leadMessage = "Lead generated on " + dateTime;
        leadMessage += "\n\n Trip: " + newTrip.SelectedValue;
        leadMessage += "\n\n Name: " + newName.Text;
        leadMessage += "\n\n Phone: " + newPhone.Text;
        leadMessage += "\n\n Email: " + newEmail.Text;
        leadMessage += "\n\n From: " + newDeparture.Text;
        leadMessage += "\n\n From Date: " + newDepartureDate.Text;
        leadMessage += "\n\n To: " + newArrival.Text;
        leadMessage += "\n\n Return Date: " + newReturnDate.Text;
        leadMessage += "\n\n Passengers: " + newPassengers.SelectedValue;
        leadMessage += "\n\n Cabin: " + newCabin.SelectedValue;

        if (newMessage.Text != null)
        {
            leadMessage += "\n\n Messsage: " + newMessage.Text;
        }

        try
        {

            string from = LeadConfiguration.MailFrom;
            string to = LeadConfiguration.ErrorLogEmail;
            string subject = "New elite travel guru Lead";
            string body = leadMessage;
            Utilities.SendMail(from, to, subject, body);

        }
        catch
        {
            throw;
        }
        }


        string customerMessage;
        customerMessage = "Thank You, Your request has been received regarding your travel itinerary. ";
        customerMessage += "\n\n A specialist is currently working on your request and you will be contacted shortly.";
        customerMessage += "\n\n If you have any questions, comments, or concerns please contact us at sales@elitetravelguru.com or (888) 908 6983.";
        customerMessage += "\n\n";
        customerMessage += "\n\n";
        customerMessage += "\n\n Best Regards,";
        customerMessage += "\n\n Elite Travel Guru ";
        try
        {

            string customerFrom = "sales@elitetravelguru.com";
            string customerTo = newEmail.Text;
            string customerSubject = "Thank you for your inquiry at EliteTravelGuru.com";
            string customerBody = customerMessage;
            Utilities.SendMail(customerFrom, customerTo, customerSubject, customerBody);

        }
        catch
        {
            throw;
        }

        string DateSubmitted = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        bool success = LeadAccess.CreateLead(newTrip.SelectedValue.ToString(), newName.Text, newPhone.Text, newEmail.Text, newDeparture.Text, newDepartureDate.Text, newArrival.Text, newReturnDate.Text, newPassengers.SelectedValue.ToString(), newCabin.SelectedValue.ToString(), DateSubmitted.ToString());
        // Display status message




        if (success == false)
        {
            try
            {

                string from = LeadConfiguration.MailFrom;
                string to = LeadConfiguration.ErrorLogEmail;
                string subject = "New Lead";
                string body = "leadMessage error";
                Utilities.SendMail(from, to, subject, body);

            }
            catch
            {
                throw;
            }
        }
        Response.Redirect("thankyou.aspx");
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count)
    {
        //ADO.Net
        SqlConnection cn = new SqlConnection();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        String strCn = "Data Source=tcp:sql2k1201.discountasp.net;Initial Catalog=SQL2012_905043_airportcodes;User ID=SQL2012_905043_airportcodes_user; Password=Trumpet@67;";
        cn.ConnectionString = strCn;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        //Compare String From Textbox(prefixText) AND String From 
        //Column in DataBase(CompanyName)
        //If String from DataBase is equal to String from TextBox(prefixText) 
        //then add it to return ItemList
        //-----I defined a parameter instead of passing value directly to 
        //prevent SQL injection--------//
        cmd.CommandText = "select * from Airports$ Where Code like @myParameter OR City like @myParameter OR Country like @myParameter";
        cmd.Parameters.AddWithValue("@myParameter", "%" + prefixText + "%");

        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
        }
        catch
        {
        }
        finally
        {
            cn.Close();
        }
        dt = ds.Tables[0];


        //Then return List of string(txtItems) as result
        List<string> txtItems = new List<string>();
        String dbValues;

        foreach (DataRow row in dt.Rows)
        {

            //String From DataBase(dbValues)
            dbValues = row["Code"].ToString() + " " + row["City"].ToString() + " " + row["Country"].ToString();

            txtItems.Add(dbValues);
        }

        return txtItems.ToArray();
    }
    protected void newTrip_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = newTrip.SelectedValue;

        switch (x)
        {
            case "1":

                newReturnDate.Visible = false;
                returnlabel.Visible = false;
                multi.Visible = false;
                break;

            case "2":

                newReturnDate.Visible = true;
                returnlabel.Visible = true;
                multi.Visible = false;
                break;

            case "3":
                newReturnDate.Visible = false;
                multi.Visible = true;
                break;


        }
    }
    protected void newCabin_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = newCabin.SelectedValue;
        if (x == "1")
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('http://widgets.partners.expedia.com/TrackingRedirect.aspx?partner=cj&pid=7405167&widgetname=deeplink&products=FlightWizard&searchparams=%26deptime%3D362%26returntime%3D362%26numadult%3D1%26triptype%3Droundtrip%26depdate%3Dmm%2Fdd%2Fyyyy%26returndate%3Dmm%2Fdd%2Fyyyy');", true);

            //Response.Redirect("http://widgets.partners.expedia.com/TrackingRedirect.aspx?partner=cj&pid=7405167&widgetname=deeplink&products=FlightWizard&searchparams=%26deptime%3D362%26returntime%3D362%26numadult%3D1%26triptype%3Droundtrip%26depdate%3Dmm%2Fdd%2Fyyyy%26returndate%3Dmm%2Fdd%2Fyyyy");

        }
    }
}