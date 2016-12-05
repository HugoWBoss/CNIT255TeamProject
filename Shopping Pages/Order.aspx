<%@ Page Title="Products" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="_Default" Theme="Shopping" StyleSheetTheme="Shopping"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <div id="Img" style="margin-top:50px; float:left; margin-left: 132px;">
    <asp:Image ID="imageProduct" runat="server" />
    </div>

    <div style="margin-left:817px; margin-top:50px;">
    <asp:DropDownList ID="ddlistProducts" runat="server"></asp:DropDownList><br /><br />
        <p>Card Name: <asp:Label ID="labelName" runat="server" Text="Label"></asp:Label> </p>
        <p>Card Number: <asp:Label ID="labelCardNo" runat="server" Text="Label"></asp:Label> </p>
        <p>Rarity: <asp:Label ID="labelRarity" runat="server" Text="Label"></asp:Label></p>
        <p>Type:<asp:Label ID="labelCardType" runat="server" Text="Label"></asp:Label></p>
        <p>Description: <asp:Label ID="labelCardDesc" runat="server" Text="Label"></asp:Label></p>
        <p>Price: <asp:Label ID="labelPrice" runat="server" Text="Label"></asp:Label></p>
        <p>Quantity: <asp:TextBox ID="textboxQuantity" runat="server" CausesValidation="True"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="textboxQuantity" ErrorMessage=" *Quantity Must Be At Least 1"></asp:RangeValidator>
        </p>
        <asp:Button ID="buttonAddCart" runat="server" Text="Add To Cart" />
    </div>
 
</asp:Content>

