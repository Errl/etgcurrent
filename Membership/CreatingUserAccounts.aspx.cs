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

public partial class Membership_CreatingUserAccounts : System.Web.UI.Page
{
    [ThemeableAttribute(false)]
    public virtual bool AutoGeneratePassword { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void RegisterUser_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        

        string trimmedUserName = RegisterUser.UserName.Trim();
        if (RegisterUser.UserName.Length != trimmedUserName.Length)
        {
            // Show the error message
            InvalidUserNameOrPasswordMessage.Text = "The username cannot contain leading or trailing spaces.";
            InvalidUserNameOrPasswordMessage.Visible = true;

            // Cancel the create user workflow
            e.Cancel = true;
        }
        else
        {
            // Username is valid, make sure that the password does not contain the username

            if (RegisterUser.Password.IndexOf(RegisterUser.UserName, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                // Show the error message
                InvalidUserNameOrPasswordMessage.Text = "The username may not appear anywhere in the password.";
                InvalidUserNameOrPasswordMessage.Visible = true;
                // Cancel the create user workflow
                e.Cancel = true;
            }
        }
          
       

   
    }

    protected void RegisterUser_ActiveStepChanged(object sender, EventArgs e)
    {
         // Have we JUST reached the Complete step?
        if (RegisterUser.ActiveStep.Title == "Itinerary")
     {
          WizardStep UserSettings = RegisterUser.FindControl("UserSettings") as
          WizardStep;
 
          // Programmatically reference the TextBox controls
          TextBox LastName = UserSettings.FindControl("newLastName") as TextBox;
          TextBox FirstName = UserSettings.FindControl("newFirstName") as TextBox;
          TextBox BirthDay = UserSettings.FindControl("newBirthDay") as TextBox;
         TextBox Email = UserSettings.FindControl("newContactEmail") as TextBox;
          TextBox Address = UserSettings.FindControl("newAddress") as TextBox;
          TextBox Phone = UserSettings.FindControl("newPhone") as TextBox;
         TextBox Phone2 = UserSettings.FindControl("newPhone2") as TextBox;
          TextBox Passenger2 = UserSettings.FindControl("newPassenger2") as TextBox;
          TextBox Passenger3 = UserSettings.FindControl("newPassenger3") as TextBox;
          TextBox CreditCard = UserSettings.FindControl("newCreditCard") as TextBox;
          TextBox Expiration = UserSettings.FindControl("newExpiration") as TextBox;
         TextBox SEC = UserSettings.FindControl("newSec") as TextBox;
          TextBox Agent = UserSettings.FindControl("newAgent") as TextBox;
          DateTime  DateCreated = DateTime.Today;
         TextBox Notes = UserSettings.FindControl("newDescription") as TextBox;
         int CompanyID = Convert.ToInt32(newCompanyId.SelectedValue);
         DateTime newBirthDay = DateTime.Parse(BirthDay.Text);
            
 
          // Update the UserProfiles record for this user
          // Get the UserId of the just-added user
          MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
          Guid newUserId = (Guid)newUser.ProviderUserKey;
 
          // Insert a new record into UserProfiles
          string connectionString = 
               ConfigurationManager.ConnectionStrings["LeadsConnectionString"].ConnectionString;
          string updateSql = "INSERT INTO UserProfiles (CompanyID, LastName, FirstName, Birthday, Address, Phone, Phone2, Email, CreditCard, Expiration, SEC, Passenger2, Passenger3, Notes, Agent, UserId) VALUES (@CompanyID,@LastName,@FirstName,@Birthday,@Address,@Phone,@Phone2,@Email,@CreditCard,@Expiration,@SEC,@Passenger2,@Passenger3,@Notes,@Agent,@UserId)";
 
          using (SqlConnection myConnection = new SqlConnection(connectionString))
          {
               myConnection.Open();
               SqlCommand myCommand = new SqlCommand(updateSql, myConnection);
               myCommand.Parameters.AddWithValue("@CompanyID", CompanyID);
               myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
               myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
               myCommand.Parameters.AddWithValue("@BirthDay", newBirthDay.Date);
               myCommand.Parameters.AddWithValue("@Email", Email.Text.Trim());
               myCommand.Parameters.AddWithValue("@Address", Address.Text.Trim());
               myCommand.Parameters.AddWithValue("@Phone", Phone.Text.Trim());
               myCommand.Parameters.AddWithValue("@Phone2", Phone2.Text.Trim());
               myCommand.Parameters.AddWithValue("@Passenger2", Passenger2.Text.Trim());
               myCommand.Parameters.AddWithValue("@Passenger3", Passenger3.Text.Trim());
               myCommand.Parameters.AddWithValue("@CreditCard", CreditCard.Text.Trim());
               myCommand.Parameters.AddWithValue("@Expiration", Expiration.Text.Trim());
               myCommand.Parameters.AddWithValue("@SEC", SEC.Text.Trim());
               myCommand.Parameters.AddWithValue("@Agent", Agent.Text.Trim());
               myCommand.Parameters.AddWithValue("@DateCreated", DateCreated);
               myCommand.Parameters.AddWithValue("@Notes", Notes.Text.Trim());
               myCommand.Parameters.AddWithValue("@UserId", newUserId);
               myCommand.ExecuteNonQuery();
               myConnection.Close();
          }
     }

        // Have we JUST reached the Complete step?
        if (RegisterUser.ActiveStep.Title == "Complete")
        {
            WizardStep UserSettings = RegisterUser.FindControl("Itinerary") as
            WizardStep;

            // Programmatically reference the TextBox controls

            TextBox OutboundDate = UserSettings.FindControl("newOutboundDate") as TextBox;
            TextBox ReturnDate = UserSettings.FindControl("newReturnDate") as TextBox;
            TextBox Price = UserSettings.FindControl("newPrice") as TextBox;
            TextBox AirlineTaxes = UserSettings.FindControl("newAirlineTaxes") as TextBox;
            TextBox PaxCardTaxes = UserSettings.FindControl("newPaxCardTaxes") as TextBox;
            TextBox Notes = UserSettings.FindControl("newNotes") as TextBox;
            TextBox Itinerary = UserSettings.FindControl("newItinerary") as TextBox;
            TextBox Airline = UserSettings.FindControl("newAirline") as TextBox;
            TextBox Confirmation = UserSettings.FindControl("newConfirmation") as TextBox;
            DateTime newOutboundDate = DateTime.Parse(OutboundDate.Text);
            DateTime newReturnDate = DateTime.Parse(ReturnDate.Text);
            // Update the UserProfiles record for this user
            // Get the UserId of the just-added user
            MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
            Guid newUserId = (Guid)newUser.ProviderUserKey;

            // Insert a new record into UserProfiles
            string connectionString =
                 ConfigurationManager.ConnectionStrings["LeadsConnectionString"].ConnectionString;

            string updateSql = "INSERT INTO PaxItinerary  (OutboundDate, ReturnDate, Price, AirlineTaxes, PaxCardTaxes, Itinerary, Notes, UserId, Airline, Confirmation) VALUES (@OutboundDate,@ReturnDate,@Price,@AirlineTaxes,@PaxCardTaxes,@Itinerary,@Notes,@UserId,@Airline,@Confirmation)";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                myConnection.Open();
                SqlCommand myCommand = new SqlCommand(updateSql, myConnection);

                myCommand.Parameters.AddWithValue("@OutboundDate", newOutboundDate.Date);
                myCommand.Parameters.AddWithValue("@ReturnDate", newReturnDate.Date);
                myCommand.Parameters.AddWithValue("@Price", Price.Text.Trim());
                myCommand.Parameters.AddWithValue("@AirlineTaxes", AirlineTaxes.Text.Trim());
                myCommand.Parameters.AddWithValue("@PaxCardTaxes", PaxCardTaxes.Text.Trim());
                myCommand.Parameters.AddWithValue("@Notes", Notes.Text.Trim());
                myCommand.Parameters.AddWithValue("@Itinerary", Itinerary.Text.Trim());
                myCommand.Parameters.AddWithValue("@Airline", Airline.Text.Trim());
                myCommand.Parameters.AddWithValue("@Confirmation", Confirmation.Text.Trim());
                myCommand.Parameters.AddWithValue("@UserId", newUserId);

                myCommand.ExecuteNonQuery();
                myConnection.Close();
            }

            //try
            //{
            //    string userMessage = "Thank you for choosing Elite Travel Guru. ";
            //    userMessage += "\n\n Your itinerary is available for viewing at www.elitetravelguru.com.";
            //    userMessage += "\n You current username and password: ";
            //    userMessage += "\n username: <%UserName%>";
            //    userMessage += "\n password: <%Password%>";
            //    userMessage += "\n\n Best Regards,";
            //    userMessage += "\n\n Elite Travel Guru ";



            //    MailMessage message = new MailMessage();
            //    message.From = new MailAddress("sales@elitetravelguru.com");
            //    message.To.Add(new MailAddress(RegisterUser.Email));
            //    message.Subject = "Itinerary & Login information";
            //    message.Body = userMessage;




            //    message.Body = message.Body.Replace("<%UserName%>", RegisterUser.UserName);
            //    message.Body = message.Body.Replace("<%Password%>", RegisterUser.Password);

            //    SmtpClient client = new SmtpClient();
            //    client.Send(message);
            //}

            //catch
            //{
            //    throw;
            //}
        }
    }
   
}