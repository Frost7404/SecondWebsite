// FirstMasterPage.master.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the Master Page. No custom logic needed here currently.
// Page lifecycle events could be added here to affect every content page.

using System;
using System.Web.UI;

namespace Fun_With_Visual_Studio
{
    public partial class FirstMasterPage : MasterPage
    {
        // Page_Load fires when any content page using this master is requested.
        // Nothing extra to do here for the basic version.
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}
