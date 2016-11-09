<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <asp:Image ID="imgBanner" runat="server" imageurl="~/Images/banner.jpg"/>
    </header>
    <div>
        <asp:ListBox ID="lstCart" runat="server" Rows="8" Width="50%"></asp:ListBox>
    </div>
    <div>
        <asp:Button ID="btnContinueShopping" runat="server" Text="Continue Shopping" PostBackUrl="~/Default.aspx"/>
        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click"/>
        <asp:Button ID="btnRemoveItem" runat="server" Text="Remove Item" OnClick="btnRemoveItem_Click" />
        <asp:Button ID="btnEmptyCart" runat="server" Text="Empty Cart" OnClick="btnEmptyCart_Click"/>
    </div>
    <div>
        <asp:Label ID="lblMessage" runat="server" Text="(*,*)" ForeColor="Green"></asp:Label>
    </div>
    </form>
</body>
</html>
