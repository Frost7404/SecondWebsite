<%--
    FirstContainers.aspx
    A290/A590 Web Interface Design - Homework Project 2
    Assignment requirement #10: Add a FirstContainers page that mirrors the containers
    content from our FirstASPSite (Meeting Guide 5, Section V).
    Demonstrates common HTML and ASP.NET container controls: Panel, div, table,
    CheckBox, RadioButton, DropDownList, ListBox, and TextBox.
    Uses FirstMasterPage.master for consistent site layout.
--%>
<!--
    Copyright 2026, Computer Science A290, Computer Science Department
    Luddy School of Informatics, Computing, and Engineering
    Indiana University, Bloomington, Indiana 47408.
-->
<%@ Page Title="Containers Demo" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeFile="FirstContainers.aspx.cs" Inherits="FirstContainers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1>Containers Demo</h1>
    <p>This page demonstrates several common HTML and ASP.NET container controls.</p>

    <%-- ASP.NET Panel control acts as a server-side div/container --%>
    <asp:Panel ID="pnlDemo" runat="server" BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" Padding="10">
        <h2>ASP.NET Panel Control</h2>
        <p>This content lives inside an <code>asp:Panel</code> server control.</p>

        <%-- CheckBox controls --%>
        <h3>Check Boxes</h3>
        <asp:CheckBox ID="chkOption1" runat="server" Text="Option A" /><br />
        <asp:CheckBox ID="chkOption2" runat="server" Text="Option B" /><br />
        <asp:CheckBox ID="chkOption3" runat="server" Text="Option C" /><br />

        <%-- RadioButton controls grouped together --%>
        <h3>Radio Buttons</h3>
        <asp:RadioButton ID="radChoice1" runat="server" Text="Choice 1" GroupName="Choices" /><br />
        <asp:RadioButton ID="radChoice2" runat="server" Text="Choice 2" GroupName="Choices" /><br />
        <asp:RadioButton ID="radChoice3" runat="server" Text="Choice 3" GroupName="Choices" /><br />

        <%-- DropDownList with several items --%>
        <h3>Drop Down List</h3>
        <asp:DropDownList ID="drpColors" runat="server">
            <asp:ListItem Text="Red"    Value="Red"></asp:ListItem>
            <asp:ListItem Text="Green"  Value="Green"></asp:ListItem>
            <asp:ListItem Text="Blue"   Value="Blue"></asp:ListItem>
            <asp:ListItem Text="Yellow" Value="Yellow"></asp:ListItem>
        </asp:DropDownList>

        <%-- ListBox allows single or multi selection --%>
        <h3>List Box</h3>
        <asp:ListBox ID="lstItems" runat="server" Rows="4">
            <asp:ListItem Text="Item 1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Item 2" Value="2"></asp:ListItem>
            <asp:ListItem Text="Item 3" Value="3"></asp:ListItem>
            <asp:ListItem Text="Item 4" Value="4"></asp:ListItem>
        </asp:ListBox>

        <%-- TextBox for single-line text entry --%>
        <h3>Text Box</h3>
        <asp:TextBox ID="txtSample" runat="server" Width="250px" placeholder="Type something here..."></asp:TextBox>
        <br /><br />

        <%-- MultiLine TextBox (textarea equivalent) --%>
        <h3>Multi-Line Text Box</h3>
        <asp:TextBox ID="txtMultiLine" runat="server" TextMode="MultiLine" Rows="4" Width="300px"></asp:TextBox>
        <br /><br />

        <%-- Button to trigger a postback and show selected values --%>
        <asp:Button ID="btnShowSelections" runat="server" Text="Show Selections" OnClick="btnShowSelections_Click" />
        <br /><br />

        <%-- Label to display the results after clicking the button --%>
        <asp:Label ID="lblSelections" runat="server" Text=""></asp:Label>

    </asp:Panel>

</asp:Content>
