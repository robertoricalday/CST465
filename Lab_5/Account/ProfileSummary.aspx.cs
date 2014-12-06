using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfileSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfilePersistance PP = new ProfilePersistance();
        ProfileData PD = PP.LoadProfile();

        uxName.Text = PD.Name;
        uxEmailAddress.Text = PD.EmailAddress;
        uxUserType.Text = PD.UserType;
        uxHobby.Text = PD.Hobby;
        uxBand.Text = PD.Band;
        uxBiography.Text = PD.Biography;
        uxCoursePrefix.Text = PD.CoursePrefix;
        uxCourseNumber.Text = PD.CourseNumber;
        uxCourseDescription.Text = PD.CourseDescription;
    }
}