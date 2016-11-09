<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
                <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" SortExpression="LongDescription" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" SortExpression="ImageFile" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="OnHand" HeaderText="OnHand" SortExpression="OnHand" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ? AND [Name] = ? AND [ShortDescription] = ? AND [LongDescription] = ? AND (([CategoryID] = ?) OR ([CategoryID] IS NULL AND ? IS NULL)) AND (([ImageFile] = ?) OR ([ImageFile] IS NULL AND ? IS NULL)) AND [UnitPrice] = ? AND [OnHand] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:HalloweenConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = ?)" UpdateCommand="UPDATE [Products] SET [Name] = ?, [ShortDescription] = ?, [LongDescription] = ?, [CategoryID] = ?, [ImageFile] = ?, [UnitPrice] = ?, [OnHand] = ? WHERE [ProductID] = ? AND [Name] = ? AND [ShortDescription] = ? AND [LongDescription] = ? AND (([CategoryID] = ?) OR ([CategoryID] IS NULL AND ? IS NULL)) AND (([ImageFile] = ?) OR ([ImageFile] IS NULL AND ? IS NULL)) AND [UnitPrice] = ? AND [OnHand] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_OnHand" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ProductID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_OnHand" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HalloweenConnectionString2 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ? AND [Name] = ? AND [ShortDescription] = ? AND [LongDescription] = ? AND (([CategoryID] = ?) OR ([CategoryID] IS NULL AND ? IS NULL)) AND (([ImageFile] = ?) OR ([ImageFile] IS NULL AND ? IS NULL)) AND [UnitPrice] = ? AND [OnHand] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:HalloweenConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = ?, [ShortDescription] = ?, [LongDescription] = ?, [CategoryID] = ?, [ImageFile] = ?, [UnitPrice] = ?, [OnHand] = ? WHERE [ProductID] = ? AND [Name] = ? AND [ShortDescription] = ? AND [LongDescription] = ? AND (([CategoryID] = ?) OR ([CategoryID] IS NULL AND ? IS NULL)) AND (([ImageFile] = ?) OR ([ImageFile] IS NULL AND ? IS NULL)) AND [UnitPrice] = ? AND [OnHand] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_OnHand" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ShortDescription" Type="String" />
                <asp:Parameter Name="LongDescription" Type="String" />
                <asp:Parameter Name="CategoryID" Type="String" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="OnHand" Type="Int32" />
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_ShortDescription" Type="String" />
                <asp:Parameter Name="original_LongDescription" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_CategoryID" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_ImageFile" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_OnHand" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="556px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
                <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" SortExpression="LongDescription" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" SortExpression="ImageFile" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="OnHand" HeaderText="OnHand" SortExpression="OnHand" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
