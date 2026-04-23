<%--
    MySecondCalculator.aspx
    A290/A590 Web Interface Design - Homework Project 2
    Second calculator page. Math logic is delegated to the Calculator class in App_Code.
    Same layout as MyCalculator.aspx, but the code-behind creates an instance of
    the Calculator class and calls its methods instead of doing the math inline.
    Additional operations (Power and Modulus) added per Assignment requirement #14
    and implemented in Calculator.cs.
    Uses FirstMasterPage.master for consistent site layout.
--%>
<%@ Page Title="My Second Calculator" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeBehind="MySecondCalculator.aspx.cs" Inherits="Fun_With_Visual_Studio.MySecondCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1>My Second Calculator</h1>
    <p>Same as Calculator 1, but the math is handled by the <code>Calculator</code> class in App_Code.</p>

    <%-- 3x3 table matching MyCalculator layout --%>
    <table id="tblMainCalculator" cellpadding="8" cellspacing="2" style="border:1px solid #336699;">

        <%-- Row 1: result label spans all 3 columns --%>
        <tr>
            <td colspan="3" align="center" style="background-color:#e8f0f8; font-size:1.3em; font-weight:bold;">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>

        <%-- Row 2: first number | operator | second number --%>
        <tr>
            <td align="center">
                <asp:TextBox ID="txtFirstNum" runat="server" Width="80px"></asp:TextBox>
            </td>
            <td align="center">
                <asp:DropDownList ID="drpMathOperators" runat="server">
                    <asp:ListItem Text="+" Value="+"></asp:ListItem>
                    <asp:ListItem Text="-" Value="-"></asp:ListItem>
                    <asp:ListItem Text="*" Value="*"></asp:ListItem>
                    <asp:ListItem Text="/" Value="/"></asp:ListItem>
                    <%-- Additional operators per requirement #14 --%>
                    <asp:ListItem Text="^ (Power)" Value="^"></asp:ListItem>
                    <asp:ListItem Text="% (Mod)" Value="%"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center">
                <asp:TextBox ID="txtSecondNum" runat="server" Width="80px"></asp:TextBox>
            </td>
        </tr>

        <%-- Row 3: Calculate and Clear buttons --%>
        <tr>
            <td></td>
            <td align="center">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                &nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
            <td></td>
        </tr>

    </table>

</asp:Content>
