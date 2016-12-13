<%@ Page Title="Products" Language="C#" MasterPageFile="~/Shopping Pages/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" Theme="Shopping" StyleSheetTheme="Shopping"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <div id="Img" style="margin-top:50px; float:left; margin-left: 132px;">
    <asp:Image ID="imageProduct" runat="server" />
    </div>

    <div style="margin-left:817px; margin-top:50px;">
    <asp:DropDownList ID="ddlistProducts" AutoPostBack="true" runat="server"  DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ProductID" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT * FROM [Products]">
        </asp:SqlDataSource>
        <br /><br />
        <p>Card Name: <asp:Label ID="labelName" runat="server" Text="Label"></asp:Label> </p>
        <p>Card Number: <asp:Label ID="labelCardNo" runat="server" Text="Label"></asp:Label> </p>
        <p>Rarity: <asp:Label ID="labelRarity" runat="server" Text="Label"></asp:Label></p>
        <p>Type:<asp:Label ID="labelCardType" runat="server" Text="Label"></asp:Label></p>
        <p>Description: <asp:Label ID="labelCardDesc" runat="server" Text="Label"></asp:Label></p>
        <p>Price: <asp:Label ID="labelPrice" runat="server" Text="Label"></asp:Label></p>
        <p>Quantity: <asp:TextBox ID="textboxQuantity" runat="server" CausesValidation="False" AutoPostBack="True" ></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="textboxQuantity" MinimumValue="1" MaximumValue="100000" Type="Integer" ErrorMessage=" *Quantity Must Be At Least 1"></asp:RangeValidator>
        </p>
        <asp:Button ID="buttonAddCart" runat="server" Text="Add To Cart" OnClick="btnAdd_Click" />
    </div>
 
</asp:Content>

