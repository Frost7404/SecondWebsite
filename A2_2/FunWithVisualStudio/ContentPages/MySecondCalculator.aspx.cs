// MySecondCalculator.aspx.cs
// A290/A590 Web Interface Design - Homework Project 2
// Code-behind for the second calculator.
// Instead of doing math inline, this file creates an instance of the Calculator class
// from App_Code and calls its methods. This means the math logic can be maintained
// in one place (Calculator.cs) and reused across any page in the project.

using System;

public partial class MySecondCalculator : BasePage
{
    // Page_Load: no special initialization needed.
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>
    /// btnCalculate_Click - reads both TextBoxes, creates a Calculator instance,
    /// and calls the appropriate method based on the selected operator.
    /// </summary>
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        // Only proceed if both text boxes have content
        if (txtFirstNum.Text.Length > 0 && txtSecondNum.Text.Length > 0)
        {
            double result = 0;

            // TryParse handles the "not a number" problem gracefully
            double firstNum;
            double secondNum;

            if (!double.TryParse(txtFirstNum.Text, out firstNum) ||
                !double.TryParse(txtSecondNum.Text, out secondNum))
            {
                lblResult.Text = "Please enter valid numbers only.";
                return;
            }

            // Create an instance of our Calculator class from App_Code
            // The math work is done by this object, not by inline code here
            Calculator mySecondCalculator = new Calculator();

            // switch/case decides which Calculator method to call
            switch (drpMathOperators.SelectedValue)
            {
                case "+":
                    result = mySecondCalculator.Add(firstNum, secondNum);
                    break;
                case "-":
                    result = mySecondCalculator.Subtract(firstNum, secondNum);
                    break;
                case "*":
                    result = mySecondCalculator.Multiply(firstNum, secondNum);
                    break;
                case "/":
                    if (secondNum == 0)
                    {
                        lblResult.Text = "Cannot divide by zero.";
                        return;
                    }
                    result = mySecondCalculator.Divide(firstNum, secondNum);
                    break;
                // Additional operation #1: Power - calls Calculator.Power()
                case "^":
                    result = mySecondCalculator.Power(firstNum, secondNum);
                    break;
                // Additional operation #2: Modulus - calls Calculator.Modulus()
                case "%":
                    if (secondNum == 0)
                    {
                        lblResult.Text = "Cannot divide by zero.";
                        return;
                    }
                    result = mySecondCalculator.Modulus(firstNum, secondNum);
                    break;
                default:
                    result = 0;
                    break;
            }

            // Display the result
            lblResult.Text = result.ToString();
        }
        else
        {
            lblResult.Text = string.Empty;
        }
    }

    /// <summary>
    /// btnClear_Click - clears both input fields and the result label.
    /// </summary>
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtFirstNum.Text = string.Empty;
        txtSecondNum.Text = string.Empty;
        lblResult.Text = string.Empty;
    }
}
