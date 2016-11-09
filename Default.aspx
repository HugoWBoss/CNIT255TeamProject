<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Shop</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="lblItemSelector" runat="server" Text="Please select a product: "></asp:Label><asp:DropDownList ID="ddlItems" runat="server" AutoPostBack="True" DataSourceID="sqlDataSource" DataTextField="Name" OnSelectedIndexChanged="ddlItems_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" ProviderName="<%$ ConnectionStrings:HalloweenConnectionString.ProviderName %>" SelectCommand="SELECT [ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand] FROM [Products]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlItems" ErrorMessage="*Please Select an Item" ForeColor="Red" InitialValue="Select an Item"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Label ID="lblItemName" runat="server" Text="Item Name Here" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
        <asp:Image ID="imgProduct" runat="server" /><br />
        <asp:Label ID="lblShortDescription" runat="server" Text="Short Description Here"></asp:Label><br />
        <asp:Label ID="lblItemDescription" runat="server" Text="Item Description Here"></asp:Label><br /><br />
        <asp:Label ID="lblItemPrice" runat="server" Text="Item Price Here" Font-Bold="True" Font-Size="Large"></asp:Label><br />
        <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label><asp:TextBox ID="txtQuantity" runat="server" Width="62px">1</asp:TextBox><asp:Button ID="btnClear" runat="server" Text="Clear" ValidateRequestMode="Inherit" CausesValidation="False" OnClick="btnClear_Click" />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*1-1000" ForeColor="Red" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="btnAdd_Click" />&nbsp&nbsp&nbsp<asp:Button ID="btnGoToCart" runat="server" Text="Go to Cart" CausesValidation="False" OnClick="btnGoToCart_Click" PostBackUrl="~/Cart.aspx" />
    </div>

    <div class="adbanner">
        <asp:AdRotator ID="adBanner" runat="server" AdvertisementFile="~/ads.xml" />
    </div>
</asp:Content>
