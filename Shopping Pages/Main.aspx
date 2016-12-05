<%@ Page Title="" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="_Default" Theme="Shopping" StyleSheetTheme="Shopping"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <h1 style="text-align:center;">Welcome!</h1>
    <p style="font-size:large; text-align:center; padding-left:5px; padding-right:5px;">Hello and welcome to Casual Cards and Games! We offer a wide selection of trading cards. From Pokemon to Magic the Gathering, we have it all! Browse our selection and find something you like! </p>
    <br />
    <br />
    <br />
    <div style="float:left;">
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="300px" Style="padding-left:50px; padding-bottom:5px;"/>
        <asp:AdRotator ID="AdRotator3" runat="server" DataSourceID="XmlDataSource1" Height="300px" Style="padding-left:5px; padding-bottom:5px;"/>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/ads.xml"></asp:XmlDataSource>
    </div>
    <div style="float:right;">
        <asp:AdRotator ID="AdRotator4" runat="server" DataSourceID="XmlDataSource1" Height="300px" Style="padding-right:5px; padding-bottom:5px;"/>
        <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource1" Height="300px" Style="padding-right:50px; padding-bottom:5px;"/>
    </div>
    
    <div style="text-align:center;">
        &#9658; <a href="~/Shopping Pages/Order.aspx" style="font-size:larger;">Browse our cards!</a>
        <br />
        &#9658; <a href="" style="font-size:larger;">Check your account!</a>
    </div>

</asp:Content>

