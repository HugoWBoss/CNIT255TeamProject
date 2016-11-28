<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping Pages/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <div id="Img" style="float:left;">
    <asp:Image ID="imageProduct" runat="server" />
    </div>

    <div>
    <asp:DropDownList ID="ddlistProducts" runat="server"></asp:DropDownList>
        <asp:Label ID="labelName" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="labelCardNo" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="labelRarity" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="labelCardType" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="labelCardDesc" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="labelPrice" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="textboxQuantity" runat="server"></asp:TextBox>
        <asp:Button ID="buttonAddCart" runat="server" Text="Button" />
    </div>

</asp:Content>

