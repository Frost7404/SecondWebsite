<%--
    MyCalculator.aspx
    A290/A590 Web Interface Design - Homework Project 2
    First calculator page. Math logic is embedded directly in the code-behind file.
    User enters two numbers, picks an operator from a DropDownList, and clicks Calculate.
    A switch/case selects the correct operation and displays the result in a Label.
    Additional operations (Power and Modulus) added per Assignment requirement #14.
    Uses FirstMasterPage.master for consistent site layout.
--%>
<%@ Page Title="My Calculator" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeFile="MyCalculator.aspx.cs" Inherits="MyCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1>My Calculator</h1>
    <p>Enter two numbers, choose an operation, then click Calculate.</p>

    <%-- 3x3 table; first row merged into one cell for the result label --%>
    <table id="tblMainCalculator" cellpadding="8" cellspacing="2" style="border:1px solid #336699;">

        <%-- Row 1: merged result label spans all 3 columns --%>
        <tr>
            <td colspan="3" align="center" style="background-color:#e8f0f8; font-size:1.3em; font-weight:bold;">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>

        <%-- Row 2: first number | operator dropdown | second number --%>
        <tr>
            <td align="center">
                <asp:TextBox ID="txtFirstNum" runat="server" Width="80px"></asp:TextBox>
            </td>
            <td align="center">
                <%-- DropDownList of operators; Text and Value both set to the symbol --%>
                <asp:DropDownList ID="drpMathOperators" runat="server">
                    <asp:ListItem Text="+" Value="+"></asp:ListItem>
                    <asp:ListItem Text="-" Value="-"></asp:ListItem>
                    <asp:ListItem Text="*" Value="*"></asp:ListItem>
                    <asp:ListItem Text="/" Value="/"></asp:ListItem>
                    <%-- Additional operators for Assignment requirement #14 --%>
                    <asp:ListItem Text="^ (Power)" Value="^"></asp:ListItem>
                    <asp:ListItem Text="% (Mod)" Value="%"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center">
                <asp:TextBox ID="txtSecondNum" runat="server" Width="80px"></asp:TextBox>
            </td>
        </tr>

        <%-- Row 3: Calculate and Clear buttons centered in the middle column --%>
        <tr>
            <td></td>
            <td align="center">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                &nbsp;
                <%-- Clear button resets both text boxes and the result label --%>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
            <td></td>
        </tr>

    </table>

</asp:Content>
