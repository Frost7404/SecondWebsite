using System;

// Namespace must match project name exactly (no .App_Code suffix)
namespace Fun_With_Visual_Studio
{
    /// <summary>
    /// Calculator class - provides basic and extended math operations.
    /// Stored in App_Code so it can be reused across any page in the project.
    /// Used by MySecondCalculator.aspx via an instance: Calculator calc = new Calculator();
    /// </summary>
    public class Calculator
    {
        /// <summary>Adds two doubles and returns the result.</summary>
        public double Add(double a, double b)
        {
            return a + b;
        }

        /// <summary>Subtracts b from a and returns the result.</summary>
        public double Subtract(double a, double b)
        {
            return a - b;
        }

        /// <summary>Multiplies two doubles and returns the result.</summary>
        public double Multiply(double a, double b)
        {
            return a * b;
        }

        /// <summary>
        /// Divides a by b. Returns 0 if b is zero to avoid a divide-by-zero exception.
        /// </summary>
        public double Divide(double a, double b)
        {
            if (b == 0)
                return 0;
            return a / b;
        }

        // ---- Additional operations (Assignment 2, requirement #14) ----

        /// <summary>
        /// Raises base number a to the power of b using Math.Pow.
        /// Example: Power(2, 3) returns 8.
        /// </summary>
        public double Power(double a, double b)
        {
            return Math.Pow(a, b);
        }

        /// <summary>
        /// Returns the modulus (remainder) of a divided by b.
        /// Returns 0 if b is zero to avoid divide-by-zero.
        /// Example: Modulus(10, 3) returns 1.
        /// </summary>
        public double Modulus(double a, double b)
        {
            if (b == 0)
                return 0;
            return a % b;
        }
    }
}
