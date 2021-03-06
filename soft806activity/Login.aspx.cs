﻿using soft806activity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soft806activity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This method handles the click event for the Login button
        protected void UserLoginAuthenticate(object sender, AuthenticateEventArgs e)
        {
            User user = new User(UserLogin.UserName.ToString());

            switch (user.Authenticate(UserLogin.Password))
            {
                case -1:
                    UserLogin.FailureText = "The Account doesn't exist";
                    break;
                case -2:
                    UserLogin.FailureText = "The password is wrong";
                    break;
                default:
                    FormsAuthentication.RedirectFromLoginPage(user.Email, UserLogin.RememberMeSet);
                    break;
            }
        }
    }
}