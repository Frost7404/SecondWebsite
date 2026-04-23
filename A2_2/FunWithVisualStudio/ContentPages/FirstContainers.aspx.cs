// FirstContainers.aspx.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the Containers demo page (Assignment requirement #10).
// Reads the current state of all container controls and summarizes them in a label
// when the user clicks "Show Selections."

using System;
using System.Text;

public partial class FirstContainers : BasePage
{
    // Page_Load: no initialization needed.
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>
    /// btnShowSelections_Click - gathers the current state of all controls
    /// and displays a summary in lblSelections.
    /// </summary>
    protected void btnShowSelections_Click(object sender, EventArgs e)
    {
        // Use a StringBuilder to build up the output string efficiently
        StringBuilder sb = new StringBuilder();

        // Report which checkboxes are checked
        sb.Append("Checked boxes: ");
        if (chkOption1.Checked) sb.Append("Option A ");
        if (chkOption2.Checked) sb.Append("Option B ");
        if (chkOption3.Checked) sb.Append("Option C ");
        sb.Append("<br />");

        // Report which radio button is selected
        if (radChoice1.Checked) sb.Append("Radio: Choice 1<br />");
        else if (radChoice2.Checked) sb.Append("Radio: Choice 2<br />");
        else if (radChoice3.Checked) sb.Append("Radio: Choice 3<br />");
        else sb.Append("Radio: (none selected)<br />");

        // Report the selected color from the DropDownList
        sb.Append("Color selected: " + drpColors.SelectedValue + "<br />");

        // Report the selected item from the ListBox
        sb.Append("List item selected: " + lstItems.SelectedValue + "<br />");

        // Report the single-line TextBox content
        sb.Append("Text box value: " + txtSample.Text + "<br />");

        // Assign the built string to the label (AllowHtml style via Text)
        lblSelections.Text = sb.ToString();
    }
}
