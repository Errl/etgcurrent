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

public partial class Administration_AddCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void createCompany_Click(object sender, EventArgs e)
    {
        string Name = newName.Text;
        string Phone = newPhone.Text;
        string ContactEmail = newContactEmail.Text;
        string Address = newAddress.Text;
        string Description = newDescription.Text;

        string connectionString =
             ConfigurationManager.ConnectionStrings["LeadsConnectionString"].ConnectionString;

        string updateSql = "INSERT INTO Company (Name, Phone, ContactEmail, Address, Description) VALUES (@Name,@Phone,@ContactEmail,@Address,@Description)";

        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(updateSql, myConnection);

            myCommand.Parameters.AddWithValue("@Name", Name.Trim());
            myCommand.Parameters.AddWithValue("@Phone", Phone.Trim());
            myCommand.Parameters.AddWithValue("@ContactEmail", ContactEmail.Trim());
            myCommand.Parameters.AddWithValue("@Address", Address.Trim());
            myCommand.Parameters.AddWithValue("@Description", Description.Trim());
           

            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
        Response.Redirect("~/Administration/AdminCompanies.aspx");
    }
}