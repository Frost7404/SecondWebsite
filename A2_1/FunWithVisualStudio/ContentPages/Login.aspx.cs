// Login.aspx.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the Login page.
// Inherits from BasePage (not System.Web.UI.Page directly).
// BasePage will throw an exception at PreRender if the page Title is missing.
// A real login implementation would check credentials against a database or membership provider.

using System;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Fun_With_Visual_Studio
{
    // Inheriting from BasePage instead of System.Web.UI.Page gives us the
    // title-check feature defined in App_Code/BasePage.cs
    public partial class Login : BasePage
    {
        // Page_Load: no special initialization needed for this demo login page.
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// btnLogin_Click - fires when the user clicks "Log In".
        /// For this demo, simply confirms the fields are not empty.
        /// A real site would validate credentials against a database.
        /// </summary>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Basic validation: make sure both fields have something entered
            if (txtUsername.Text.Length > 0 && txtPassword.Text.Length > 0)
            {
                // Placeholder: in a real app we'd verify the credentials here
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Login successful! (Demo only - no real authentication.)";
            }
            else
            {
                // Remind the user to fill in both fields
                lblMessage.Text = "Please enter both a username and a password.";
            }
        }
    }
}
