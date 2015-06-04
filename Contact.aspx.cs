using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void send_Click(object sender, EventArgs e)
    {
        string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        string leadMessage = "Contact inquiry generated on " + dateTime;

        leadMessage += "\n\n Name: " + newName.Text;        
        leadMessage += "\n\n Email: " + newEmail.Text;
        leadMessage += "\n\n Message: " + newMessage.Text;

        try
        {

            string from = LeadConfiguration.MailFrom;
            string to = LeadConfiguration.ErrorLogEmail;
            string subject = "New elite travel guru Contact Inquiry";
            string body = leadMessage;
            Utilities.SendMail(from, to, subject, body);

        }
        catch
        {
            throw;
        }
        Response.Redirect("thankyou.aspx");
    }
}