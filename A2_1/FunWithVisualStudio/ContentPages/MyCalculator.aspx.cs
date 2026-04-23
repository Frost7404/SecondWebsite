// MyCalculator.aspx.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the first calculator. All math logic is embedded here (not in App_Code).
// Reads two TextBox values, converts them to doubles, uses a switch/case on the selected
// operator, and displays the result in lblResult.
// Additional operations Power (^) and Modulus (%) added per Assignment requirement #14.

using System;

namespace Fun_With_Visual_Studio
{
    public partial class MyCalculator : BasePage
    {
        // Page_Load: no special initialization needed for the calculator.
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// btnCalculate_Click - fired when the user clicks "Calculate".
        /// Validates that both text boxes have values, converts them to doubles,
        /// then uses a switch/case to apply the selected operator and show the result.
        /// </summary>
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Only proceed if both TextBoxes have something in them
            if (txtFirstNum.Text.Length > 0 && txtSecondNum.Text.Length > 0)
            {
                double result = 0;

                // Attempt to parse the entered text as numbers
                double firstNum;
                double secondNum;

                // TryParse prevents a crash if the user types letters instead of numbers
                if (!double.TryParse(txtFirstNum.Text, out firstNum) ||
                    !double.TryParse(txtSecondNum.Text, out secondNum))
                {
                    lblResult.Text = "Please enter valid numbers only.";
                    return;
                }

                // switch/case selects the correct math operation based on the dropdown
                switch (drpMathOperators.SelectedValue)
                {
                    case "+":
                        result = firstNum + secondNum;
                        break;
                    case "-":
                        result = firstNum - secondNum;
                        break;
                    case "*":
                        result = firstNum * secondNum;
                        break;
                    case "/":
                        // Guard against divide-by-zero
                        if (secondNum == 0)
                        {
                            lblResult.Text = "Cannot divide by zero.";
                            return;
                        }
                        result = firstNum / secondNum;
                        break;
                    // Additional operation #1: Power (a raised to the power of b)
                    case "^":
                        result = Math.Pow(firstNum, secondNum);
                        break;
                    // Additional operation #2: Modulus (remainder of a / b)
                    case "%":
                        if (secondNum == 0)
                        {
                            lblResult.Text = "Cannot divide by zero.";
                            return;
                        }
                        result = firstNum % secondNum;
                        break;
                    default:
                        result = 0;
                        break;
                }

                // Convert result to string and display it in the label
                lblResult.Text = result.ToString();
            }
            else
            {
                // If either box is empty, clear the result label
                lblResult.Text = string.Empty;
            }
        }

        /// <summary>
        /// btnClear_Click - resets both input TextBoxes and the result label.
        /// </summary>
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstNum.Text = string.Empty;
            txtSecondNum.Text = string.Empty;
            lblResult.Text = string.Empty;
        }
    }
}
