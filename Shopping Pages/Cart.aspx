<%@ Page Title="" Language="C#" MasterPageFile="~/Shopping Pages/ShoppingMaster.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
   <h1>Your shopping cart</h1>
            <asp:ListBox ID="lstCart" runat="server"></asp:ListBox>
            <div id="cartbuttons">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item"  CssClass="button" OnClick="btnRemove_Click" />
                <br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" onclick="btnEmpty_Click" CssClass="button" />
            </div>
            <div id="shopbuttons">
                <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" CssClass="button" OnClick="btnContinue_Click" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  onclick="btnCheckOut_Click" CssClass="button" />
            </div>
            <p id="message">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            </p>
</asp:Content>

