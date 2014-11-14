using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Click(object sender, EventArgs e)
    {
        ProfileData PD = new ProfileData();

        PD.Name = uxName.Text;
        PD.EmailAddress = uxEmailAddress.Text;
        PD.UserType = uxUserType.Text;
        PD.Hobby = uxHobby.Text;
        PD.Band = uxBand.Text;
        PD.Biography = uxBiography.Text;
        PD.CoursePrefix = uxCoursePrefix.Text;
        PD.CourseNumber = uxCourseNumber.Text;
        PD.CourseDescription = uxCourseDescription.Text;

        Session["ProfileData"] = PD;
        Response.Redirect("ProfileSummary.aspx");
    }
}