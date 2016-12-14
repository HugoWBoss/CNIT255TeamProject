<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping Pages/ShoppingMaster.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="Shopping_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="ShoppingSiteMap" />
</asp:Content>

