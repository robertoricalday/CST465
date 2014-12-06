using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Lab5.Admin
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Create group
        protected void Create_Role_Click(object sender, EventArgs e)
        {
            //Create role if it does not exists
            if (!Roles.RoleExists(uxRoleName.Text))
            {
                Roles.CreateRole(uxRoleName.Text);
            }

            //Create drop-down of users
            foreach (MembershipUser user in Membership.GetAllUsers())
            {
                uxUsers.Items.Add(new ListItem(user.UserName));
            }

            //Create drop-down of roles
            foreach (string role in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(new ListItem(role));
            }
        }

        //Add user to created group
        protected void Add_To_Group_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(uxUsers.SelectedValue, uxRoleName.Text);
        }
    }
}