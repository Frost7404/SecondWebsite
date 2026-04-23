<%--
    Login.aspx
    A290/A590 Web Interface Design - Homework Project 2
    Login page placeholder. Demonstrates that the BasePage class enforces a page title.
    (If the Title attribute here were blank or "Untitled Page", BasePage would throw an exception.)
    Uses FirstMasterPage.master for consistent site layout.
--%>
<!--
    Copyright 2026, Computer Science A290, Computer Science Department
    Luddy School of Informatics, Computing, and Engineering
    Indiana University, Bloomington, Indiana 47408.
-->
<%@ Page Title="Log in to Fun With Visual Studio!" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fun_With_Visual_Studio.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1>Log In</h1>
    <p>Please enter your username and password to log in.</p>

    <%-- Simple login form using a table for alignment --%>
    <table cellpadding="6" cellspacing="0">
        <tr>
            <td><asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="txtUsername"></asp:Label></td>
            <td><asp:TextBox ID="txtUsername" runat="server" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label></td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
            </td>
        </tr>
    </table>

    <%-- Label to display login feedback messages --%>
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

</asp:Content>
