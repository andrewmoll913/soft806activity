using soft806activity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soft806activity
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            User user = new User(FirstName.Text, LastName.Text, Email.Text);

            switch (user.Register(Password.Text))
            {
                case -1:
                    ControlText.Text = "The Account doesn't exist";
                    break;
                default:
                    ControlText.Text = "The Account was registered";
                    Response.Write("<script>alert('The Account was registered');window.location = 'Login.aspx';</script>");
                    break;
            }
        }
    }
}