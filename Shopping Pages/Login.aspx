<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping Pages/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Shopping_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <asp:Login ID="Login1" runat="server"></asp:Login>
    <div>
        <a href="Register.aspx" runat="server">Register new account</a>
    </div>
</asp:Content>

