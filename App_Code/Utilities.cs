using System;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for Utilities
/// </summary>
public static class Utilities
{
	static Utilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // Generic method for sending emails
    public static void SendMail(string from, string to, string subject,
    string body)
    {
        // Configure mail client
        SmtpClient mailClient = new SmtpClient(LeadConfiguration.MailServer);
           mailClient.EnableSsl = true;
         mailClient.Port = 587;
       
       
        // Set credentials (for SMTP servers that require authentication)
        mailClient.Credentials = new NetworkCredential(LeadConfiguration.MailUsername, LeadConfiguration.MailPassword);
        mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        // Create the mail message
        MailMessage mailMessage = new MailMessage(from, to, subject, body);
        // Send mail
        mailClient.Send(mailMessage);
    }

    public static string GetIP(string ipHost)
    {

        ipHost = System.Net.Dns.GetHostName();

        IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(ipHost);
        return ipEntry.ToString();
    }

    public static string GetDate(string dateSubmitted)
    {
        // Get the date and time for the current moment, adjusted 
        // to the local time zone.

        DateTime saveNow = DateTime.Now;
        return saveNow.ToString();
    }
    // Send error log mail
    public static void LogError(Exception ex)
    {
        // get the current date and time
        string dateTime = DateTime.Now.ToLongDateString() + ", at "
        + DateTime.Now.ToShortTimeString();
        // stores the error message
        string errorMessage = "Exception generated on " + dateTime;
        // obtain the page that generated the error
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        errorMessage += "\n\n Page location: " + context.Request.RawUrl;
        // build the error message
        errorMessage += "\n\n Message: " + ex.Message;
        errorMessage += "\n\n Source: " + ex.Source;
        errorMessage += "\n\n Method: " + ex.TargetSite;
        errorMessage += "\n\n Stack Trace: \n\n" + ex.StackTrace;
        // send error email in case the option is activated in web.config
        if (LeadConfiguration.EnableErrorLogEmail)
        {
            string from = LeadConfiguration.MailFrom;
            string to = LeadConfiguration.ErrorLogEmail;
            string subject = "ETG.com Error Report";
            string body = errorMessage;
            SendMail(from, to, subject, body);
        }
    }
}