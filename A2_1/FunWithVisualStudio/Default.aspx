<%--
    Default.aspx
    A290/A590 Web Interface Design - Homework Project 2
    Home/welcome page for the FunWithVisualStudio site.
    Uses FirstMasterPage.master for consistent layout.
    Content is placed inside the cpMainContent ContentPlaceHolder.
--%>
<%@ Page Title="Welcome to Fun With Visual Studio!" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fun_With_Visual_Studio.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <%-- Welcome heading and intro text --%>
    <h1>Hello Visitor! Welcome to the Fun With Visual Studio! Web Site.</h1>

    <p>
        I&#39;m glad you&#39;ve decided to pay a visit to our new and improved
        <span class="Introduction"><a href="Default.aspx">ASP-based Web Site</a></span>.
    </p>

    <p>
        Please feel free to look around and see if there are any <b>new and interesting things</b>
        we&#39;ve been able to add to make our new site more useful to you, our customer.
    </p>

    <%-- Quick navigation list for the available applications on this site --%>
    <h2>Available Applications</h2>
    <ul>
        <li><a href="~/ContentPages/MyCalendar.aspx" runat="server">My Calendar</a> &ndash; View a calendar and display the selected date.</li>
        <li><a href="~/ContentPages/MyCalculator.aspx" runat="server">My Calculator</a> &ndash; A basic calculator built with a switch/case in code-behind.</li>
        <li><a href="~/ContentPages/MySecondCalculator.aspx" runat="server">My Second Calculator</a> &ndash; Calculator refactored to use the App_Code Calculator class.</li>
        <li><a href="~/ContentPages/Login.aspx" runat="server">Login</a> &ndash; Log in to the site.</li>
        <li><a href="~/ContentPages/FirstContainers.aspx" runat="server">Containers Demo</a> &ndash; HTML and ASP.NET container controls demonstration.</li>
    </ul>

</asp:Content>
