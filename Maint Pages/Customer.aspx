<%@ Page Title="" Language="C#" MasterPageFile="~/Maint Pages/MaintMaster.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Maint_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="ZIP" HeaderText="ZIP" SortExpression="ZIP" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="CreditCardNumber" HeaderText="CreditCardNumber" SortExpression="CreditCardNumber" />
            <asp:BoundField DataField="NameOnCard" HeaderText="NameOnCard" SortExpression="NameOnCard" />
            <asp:BoundField DataField="SecurityNumber" HeaderText="SecurityNumber" SortExpression="SecurityNumber" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CardWebstoreConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZIP] = @original_ZIP) OR ([ZIP] IS NULL AND @original_ZIP IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([NameOnCard] = @original_NameOnCard) OR ([NameOnCard] IS NULL AND @original_NameOnCard IS NULL)) AND (([SecurityNumber] = @original_SecurityNumber) OR ([SecurityNumber] IS NULL AND @original_SecurityNumber IS NULL))" InsertCommand="INSERT INTO [Customers] ([UserName], [Password], [FirstName], [LastName], [Address], [City], [State], [ZIP], [Phone], [Email], [CreditCardNumber], [NameOnCard], [SecurityNumber]) VALUES (@UserName, @Password, @FirstName, @LastName, @Address, @City, @State, @ZIP, @Phone, @Email, @CreditCardNumber, @NameOnCard, @SecurityNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [UserName] = @UserName, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [ZIP] = @ZIP, [Phone] = @Phone, [Email] = @Email, [CreditCardNumber] = @CreditCardNumber, [NameOnCard] = @NameOnCard, [SecurityNumber] = @SecurityNumber WHERE [CustomerID] = @original_CustomerID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZIP] = @original_ZIP) OR ([ZIP] IS NULL AND @original_ZIP IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([NameOnCard] = @original_NameOnCard) OR ([NameOnCard] IS NULL AND @original_NameOnCard IS NULL)) AND (([SecurityNumber] = @original_SecurityNumber) OR ([SecurityNumber] IS NULL AND @original_SecurityNumber IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CustomerID" Type="Decimal" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_ZIP" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CreditCardNumber" Type="String" />
            <asp:Parameter Name="original_NameOnCard" Type="String" />
            <asp:Parameter Name="original_SecurityNumber" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="SecurityNumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="SecurityNumber" Type="String" />
            <asp:Parameter Name="original_CustomerID" Type="Decimal" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_ZIP" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CreditCardNumber" Type="String" />
            <asp:Parameter Name="original_NameOnCard" Type="String" />
            <asp:Parameter Name="original_SecurityNumber" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CardWebstoreConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZIP] = @original_ZIP) OR ([ZIP] IS NULL AND @original_ZIP IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([NameOnCard] = @original_NameOnCard) OR ([NameOnCard] IS NULL AND @original_NameOnCard IS NULL)) AND (([SecurityNumber] = @original_SecurityNumber) OR ([SecurityNumber] IS NULL AND @original_SecurityNumber IS NULL))" InsertCommand="INSERT INTO [Customers] ([UserName], [Password], [FirstName], [LastName], [Address], [City], [State], [ZIP], [Phone], [Email], [CreditCardNumber], [NameOnCard], [SecurityNumber]) VALUES (@UserName, @Password, @FirstName, @LastName, @Address, @City, @State, @ZIP, @Phone, @Email, @CreditCardNumber, @NameOnCard, @SecurityNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)" UpdateCommand="UPDATE [Customers] SET [UserName] = @UserName, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [ZIP] = @ZIP, [Phone] = @Phone, [Email] = @Email, [CreditCardNumber] = @CreditCardNumber, [NameOnCard] = @NameOnCard, [SecurityNumber] = @SecurityNumber WHERE [CustomerID] = @original_CustomerID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZIP] = @original_ZIP) OR ([ZIP] IS NULL AND @original_ZIP IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CreditCardNumber] = @original_CreditCardNumber) OR ([CreditCardNumber] IS NULL AND @original_CreditCardNumber IS NULL)) AND (([NameOnCard] = @original_NameOnCard) OR ([NameOnCard] IS NULL AND @original_NameOnCard IS NULL)) AND (([SecurityNumber] = @original_SecurityNumber) OR ([SecurityNumber] IS NULL AND @original_SecurityNumber IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CustomerID" Type="Decimal" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_ZIP" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CreditCardNumber" Type="String" />
            <asp:Parameter Name="original_NameOnCard" Type="String" />
            <asp:Parameter Name="original_SecurityNumber" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="SecurityNumber" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="CustomerID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CreditCardNumber" Type="String" />
            <asp:Parameter Name="NameOnCard" Type="String" />
            <asp:Parameter Name="SecurityNumber" Type="String" />
            <asp:Parameter Name="original_CustomerID" Type="Decimal" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_ZIP" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CreditCardNumber" Type="String" />
            <asp:Parameter Name="original_NameOnCard" Type="String" />
            <asp:Parameter Name="original_SecurityNumber" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3>Search:</h3><br />
    <asp:DropDownList ID="ddlSearch" runat="server">
        <asp:ListItem>CustomerID</asp:ListItem>
        <asp:ListItem>UserName</asp:ListItem>
        <asp:ListItem>Password</asp:ListItem>
        <asp:ListItem>FirstName</asp:ListItem>
        <asp:ListItem>LastName</asp:ListItem>
        <asp:ListItem>Address</asp:ListItem>
        <asp:ListItem>City</asp:ListItem>
        <asp:ListItem>State</asp:ListItem>
        <asp:ListItem>ZIP</asp:ListItem>
        <asp:ListItem>Phone</asp:ListItem>
        <asp:ListItem>Email</asp:ListItem>
        <asp:ListItem>CreditCardNumber</asp:ListItem>
        <asp:ListItem>NameOnCard</asp:ListItem>
        <asp:ListItem>SecurityNumber</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px">
    </asp:DetailsView>
</asp:Content>

