<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><asp:Label ID="lblTitle" runat="server" Text="Reservations"></asp:Label></h1>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Arrival Date:"></asp:Label><asp:TextBox ID="txtArrival" runat="server"></asp:TextBox>
        <asp:ImageButton ID="imgCalendar" runat="server" Height="25px" ImageUrl="~/Pictures/calendar.png" OnClick="imgCalendar_Click" Width="30px" />
        <asp:Calendar ID="calCalendar" runat="server" OnSelectionChanged="calCalendar_SelectionChanged" Visible="False"></asp:Calendar>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Number of Nights:"></asp:Label><asp:TextBox ID="txtNumOfNights" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Select Number of Adults:"></asp:Label><asp:DropDownList ID="ddlNumOfAdults" runat="server"></asp:DropDownList><br />
        <asp:Label ID="Label4" runat="server" Text="Select Number of Children:"></asp:Label><asp:DropDownList ID="ddlNumOfChildren" runat="server"></asp:DropDownList><br />
    </div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="Select a Room Type:"></asp:Label>
        <asp:RadioButtonList ID="rblRooms" runat="server">
            <asp:ListItem>Business</asp:ListItem>
            <asp:ListItem>Suite</asp:ListItem>
            <asp:ListItem>Standard</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <asp:Label ID="Label6" runat="server" Text="Select a Bed Type:"></asp:Label>
        <asp:RadioButtonList ID="rblBeds" runat="server">
            <asp:ListItem>Double</asp:ListItem>
            <asp:ListItem>King</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <asp:CheckBox ID="cbSmoking" runat="server" Text="Smoking" /><br />
        <asp:Label ID="Label7" runat="server" Text="Special Requests"></asp:Label><br />
        <asp:TextBox ID="txtRequests" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="john@doe.com (555)555-5555"></asp:Label>
    </div>
    </form>
</body>
</html>
