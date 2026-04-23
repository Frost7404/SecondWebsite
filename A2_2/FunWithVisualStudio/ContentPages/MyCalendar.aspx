<%--
    MyCalendar.aspx
    A290/A590 Web Interface Design - Homework Project 2
    Demonstrates the ASP.NET State Engine using a Calendar control.
    Two buttons show the difference between ViewState enabled and disabled on a Label.
      - "Set the Date" button: writes the current date/time to the label.
      - "Plain Postback" button: causes a postback with no code, showing ViewState in action.
    Uses FirstMasterPage.master for consistent site layout.
--%>
<%@ Page Title="My Calendar" Language="C#" MasterPageFile="~/MasterPages/FirstMasterPage.master" AutoEventWireup="true" CodeFile="MyCalendar.aspx.cs" Inherits="MyCalendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <h1>My Calendar</h1>

    <%-- 2x2 table: column 1 holds the label and calendar, column 2 holds the buttons --%>
    <table id="tblMainTable" cellpadding="8" cellspacing="0">
        <tr>
            <%-- Label shows the date/time set by the button; EnableViewState true by default --%>
            <td>
                <asp:Label ID="lblShowDateTime" runat="server" Text="(no date selected yet)"></asp:Label>
            </td>
            <%-- Button that fires the event handler to set the label text --%>
            <td>
                <asp:Button ID="btnSetDate" runat="server" Text="Set the Date" OnClick="btnSetDate_Click" />
            </td>
        </tr>
        <tr>
            <%-- Calendar control; choosing a date causes a postback --%>
            <td>
                <asp:Calendar ID="cldrMainCalendar" runat="server"
                    BackColor="White"
                    BorderColor="#336699"
                    BorderStyle="Solid"
                    CellPadding="4"
                    ForeColor="#333333"
                    Height="220px"
                    Width="300px">
                    <DayHeaderStyle BackColor="#336699" ForeColor="White" Height="1px" />
                    <NextPrevStyle ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#336699" ForeColor="White" />
                    <TitleStyle BackColor="#336699" ForeColor="White" Font-Bold="True" />
                    <TodayDayStyle BackColor="#ccddee" ForeColor="#003366" />
                </asp:Calendar>
            </td>
            <%-- Button that only causes a postback - demonstrates ViewState with no code --%>
            <td valign="top">
                <asp:Button ID="btnPlainPostback" runat="server" Text="Plain Postback" />
            </td>
        </tr>
    </table>

</asp:Content>
