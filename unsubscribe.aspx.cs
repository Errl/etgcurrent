using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class unsubscribe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        string leadMessage = "Unsubscribe Request " + dateTime;

      
        leadMessage += "\n\n Email: " + newEmail.Text;
      

        try
        {

            string from = LeadConfiguration.MailFrom;
            string to = LeadConfiguration.ErrorLogEmail;
            string subject = "Unsubscribe Request";
            string body = leadMessage;
            Utilities.SendMail(from, to, subject, body);

        }
        catch
        {
            throw;
        }
        Response.Redirect("thankyouunsubscribe.aspx");
    }
}