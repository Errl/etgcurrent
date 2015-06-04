using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class submitreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        string leadMessage = "Lead generated on " + dateTime;
        leadMessage += "\n\n Title: " + newTitle.Text;
        leadMessage += "\n\n Rating: " + newRating.Text;
        leadMessage += "\n\n Review: " + newReview.Text;
        leadMessage += "\n\n Name: " + newName.Text;
        leadMessage += "\n\n Email: " + newEmail.Text;
        leadMessage += "\n\n Company: " + newCompany.Text;
        

        try
        {

            string from = LeadConfiguration.MailFrom;
            string to = LeadConfiguration.ErrorLogEmail;
            string subject = "New ETG Customer Review";
            string body = leadMessage;
            Utilities.SendMail(from, to, subject, body);

        }
        catch
        {
            throw;
        }
        Response.Redirect("thankyoureview.aspx");

    }
}