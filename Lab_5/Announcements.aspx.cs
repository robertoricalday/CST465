using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;
using System.Data.SqlClient;

namespace Lab_5
{
    public partial class Announcements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            //Get announcement information
            string Title = ((TextBox)LoginView.FindControl("uxTitle")).Text;
            string Body = ((TextBox)LoginView.FindControl("uxBody")).Text;

            //Generate insert query string
            string QueryString = "INSERT INTO Announcement (UserID, Title, Body) VALUES ('" + Membership.GetUser().ProviderUserKey.ToString() + "', '" + Title + "', '" + Body + "');";
            
            //SQL Database reference
            SqlConnection Connection = new SqlConnection("server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;");

            using (Connection)
            {
                //Create SQL command
                SqlCommand Command = new SqlCommand(QueryString, Connection);

                Command.CommandType = System.Data.CommandType.Text;
                Connection.Open();

                SqlDataReader Reader = Command.ExecuteReader();

                try
                {
                    while(Reader.Read())
                    { }
                }
                finally
                {
                    Reader.Close();
                }
            }

            //refresh page
            uxRepeater.DataBind();
        }
    }
}