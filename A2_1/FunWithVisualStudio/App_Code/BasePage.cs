using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Namespace must match project name exactly (no .App_Code suffix)
namespace Fun_With_Visual_Studio
{
    /// <summary>
    /// BasePage - a custom base class that all content pages in this project inherit from.
    /// Inherits from System.Web.UI.Page, so it has all standard page features PLUS our additions.
    /// Current feature: enforces that every page has a proper Title set (not empty or "Untitled Page").
    /// All ContentPages should inherit BasePage instead of System.Web.UI.Page in their code-behind.
    /// </summary>
    public class BasePage : System.Web.UI.Page
    {
        /// <summary>
        /// Page_PreRender fires just before the page is sent to the browser.
        /// We use it here to verify the page title is set correctly.
        /// If the title is missing or left as "Untitled Page", an exception is thrown.
        /// </summary>
        private void Page_PreRender(object sender, EventArgs e)
        {
            if (this.Title == "Untitled Page" || string.IsNullOrEmpty(this.Title))
            {
                throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
            }
        }

        /// <summary>
        /// Constructor - wires up the PreRender event to our Page_PreRender handler.
        /// </summary>
        public BasePage()
        {
            this.PreRender += new EventHandler(Page_PreRender);
        }
    }
}
