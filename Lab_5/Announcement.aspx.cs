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
    public partial class Announcement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Select commands for announcements and comments
            AnnouncementDS.SelectCommand = "SELECT Announcement.AnnouncementID, UserName, Title, Body FROM Announcement JOIN dbo.aspnet_Users ON Announcement.UserID = dbo.aspnet_Users.UserID WHERE AnnouncementID = " + Request.QueryString[0].ToString() + ";";
            CommentDS.SelectCommand = "SELECT UserName, CommentDescription FROM dbo.aspnet_Users JOIN Comment ON dbo.aspnet_Users.UserID = Comment.UserID WHERE Comment.AnnouncementID = " + Request.QueryString[0].ToString() + ";";

            //FormView for Announcements
            AnnouncementFormView.DataSourceID = "AnnouncementDS";
            AnnouncementFormView.DataBind();

            //GridView for Comments
            CommentGridView.DataSourceID = "CommentDS";
            CommentGridView.DataBind();
        }
        
        protected void Button_Click(object sender, EventArgs e)
        {
            //Get Comment information
            string AnnouncementRef = Request.QueryString[0].ToString();
            string Comment = ((TextBox)uxCommentLoginView.FindControl("uxComment")).Text;

            //Generate insert query string
            string QueryString = "INSERT INTO Comment (AnnouncementID, UserID, CommentDescription) VALUES ('" + AnnouncementRef + "', '" + Membership.GetUser().ProviderUserKey.ToString() + "', '" + Comment + "');";

            //SQL Database reference
            SqlConnection Connection = new SqlConnection("server=aura.students.cset.oit.edu;database=RobertoRicalday;user id=robertoricalday;password=robertoricalday;");

            using (Connection)
            {
                //Create SQL command
                SqlCommand Command = new SqlCommand(QueryString, Connection);
                
                Command.CommandType = System.Data.CommandType.Text;
                Connection.Open();

                SqlDataReader reader = Command.ExecuteReader();

                try
                {
                    while(reader.Read())
                    {}
                }
                finally
                {
                    reader.Close();
                }
            }

            //Refresh page
            Response.Redirect("Announcement.aspx?ID=" + Request.QueryString[0].ToString());
        }

        //Back Button Redirect
        protected void Button_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Announcements.aspx");
        }
    }
}