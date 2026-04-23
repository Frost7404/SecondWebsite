// MyCalendar.aspx.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the Calendar page.
// Demonstrates the ASP.NET State Engine / ViewState.
// The "Set the Date" button sets the label to the current date and time.
// The "Plain Postback" button has no handler - it just triggers a postback to show ViewState.

using System;

public partial class MyCalendar : BasePage
{
    // Page_Load fires on every request/postback for this page.
    // No special initialization needed here.
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>
    /// btnSetDate_Click - fired when the user clicks "Set the Date".
    /// Sets the label text to the current date and time using DateTime.Now.
    /// ViewState (enabled by default) will preserve this value across postbacks.
    /// </summary>
    protected void btnSetDate_Click(object sender, EventArgs e)
    {
        // Convert DateTime.Now to a string and assign it to the label
        lblShowDateTime.Text = DateTime.Now.ToString();
    }
}
