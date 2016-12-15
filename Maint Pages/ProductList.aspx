<%@ Page Title="" Language="C#" MasterPageFile="~/Maint Pages/MaintMaster.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Maint_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
   <h1>Products</h1>
  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Rarity" HeaderText="Rarity" SortExpression="Rarity" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Attack" HeaderText="Attack" SortExpression="Attack" />
            <asp:BoundField DataField="Defense" HeaderText="Defense" SortExpression="Defense" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="ImgURL" HeaderText="ImgURL" SortExpression="ImgURL" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CardWebstoreConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rarity] = @original_Rarity) OR ([Rarity] IS NULL AND @original_Rarity IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Attack] = @original_Attack) OR ([Attack] IS NULL AND @original_Attack IS NULL)) AND (([Defense] = @original_Defense) OR ([Defense] IS NULL AND @original_Defense IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ImgURL] = @original_ImgURL) OR ([ImgURL] IS NULL AND @original_ImgURL IS NULL))" InsertCommand="INSERT INTO [Products] ([ProductID], [CategoryID], [Name], [Rarity], [Type], [Description], [Attack], [Defense], [Price], [ImgURL]) VALUES (@ProductID, @CategoryID, @Name, @Rarity, @Type, @Description, @Attack, @Defense, @Price, @ImgURL)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Products] SET [CategoryID] = @CategoryID, [Name] = @Name, [Rarity] = @Rarity, [Type] = @Type, [Description] = @Description, [Attack] = @Attack, [Defense] = @Defense, [Price] = @Price, [ImgURL] = @ImgURL WHERE [ProductID] = @original_ProductID AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rarity] = @original_Rarity) OR ([Rarity] IS NULL AND @original_Rarity IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Attack] = @original_Attack) OR ([Attack] IS NULL AND @original_Attack IS NULL)) AND (([Defense] = @original_Defense) OR ([Defense] IS NULL AND @original_Defense IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ImgURL] = @original_ImgURL) OR ([ImgURL] IS NULL AND @original_ImgURL IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Decimal" />
            <asp:Parameter Name="original_CategoryID" Type="Decimal" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Rarity" Type="Decimal" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Attack" Type="Decimal" />
            <asp:Parameter Name="original_Defense" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_ImgURL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Decimal" />
            <asp:Parameter Name="CategoryID" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Rarity" Type="Decimal" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Attack" Type="Decimal" />
            <asp:Parameter Name="Defense" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImgURL" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryID" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Rarity" Type="Decimal" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Attack" Type="Decimal" />
            <asp:Parameter Name="Defense" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImgURL" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Decimal" />
            <asp:Parameter Name="original_CategoryID" Type="Decimal" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Rarity" Type="Decimal" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Attack" Type="Decimal" />
            <asp:Parameter Name="original_Defense" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_ImgURL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CardWebstoreConnectionString %>" SelectCommand="SELECT * FROM [Products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rarity] = @original_Rarity) OR ([Rarity] IS NULL AND @original_Rarity IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Attack] = @original_Attack) OR ([Attack] IS NULL AND @original_Attack IS NULL)) AND (([Defense] = @original_Defense) OR ([Defense] IS NULL AND @original_Defense IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ImgURL] = @original_ImgURL) OR ([ImgURL] IS NULL AND @original_ImgURL IS NULL))" InsertCommand="INSERT INTO [Products] ([ProductID], [CategoryID], [Name], [Rarity], [Type], [Description], [Attack], [Defense], [Price], [ImgURL]) VALUES (@ProductID, @CategoryID, @Name, @Rarity, @Type, @Description, @Attack, @Defense, @Price, @ImgURL)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Products] SET [CategoryID] = @CategoryID, [Name] = @Name, [Rarity] = @Rarity, [Type] = @Type, [Description] = @Description, [Attack] = @Attack, [Defense] = @Defense, [Price] = @Price, [ImgURL] = @ImgURL WHERE [ProductID] = @original_ProductID AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rarity] = @original_Rarity) OR ([Rarity] IS NULL AND @original_Rarity IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Attack] = @original_Attack) OR ([Attack] IS NULL AND @original_Attack IS NULL)) AND (([Defense] = @original_Defense) OR ([Defense] IS NULL AND @original_Defense IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ImgURL] = @original_ImgURL) OR ([ImgURL] IS NULL AND @original_ImgURL IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Decimal" />
            <asp:Parameter Name="original_CategoryID" Type="Decimal" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Rarity" Type="Decimal" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Attack" Type="Decimal" />
            <asp:Parameter Name="original_Defense" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_ImgURL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Decimal" />
            <asp:Parameter Name="CategoryID" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Rarity" Type="Decimal" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Attack" Type="Decimal" />
            <asp:Parameter Name="Defense" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImgURL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryID" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Rarity" Type="Decimal" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Attack" Type="Decimal" />
            <asp:Parameter Name="Defense" Type="Decimal" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImgURL" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Decimal" />
            <asp:Parameter Name="original_CategoryID" Type="Decimal" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Rarity" Type="Decimal" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Attack" Type="Decimal" />
            <asp:Parameter Name="original_Defense" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_ImgURL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

