<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/ShoppingMaster.master" AutoEventWireup="true" CodeFile="roughCheckout.aspx.cs" Inherits="_Default" Theme="Shopping" StyleSheetTheme="Shopping"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" Runat="Server">
    <div style="text-align:center;">
        <h2>Confirm your order.</h2><br />
    </div>

    <div style="float:right; text-align:center; width: 403px; margin-right:326px; margin-left: 3px;">
        <h3>Enter Credit Card Information</h3><br />
        <div style="float:left; width: 473px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="nameOnCardLbl" runat="server" Text="Name on Card: "></asp:Label><asp:TextBox ID="nameOnCardTB" runat="server"></asp:TextBox><br />
             <asp:Label ID="creditCardNumberLBL" runat="server" Text="Credit Card Number: "></asp:Label><asp:TextBox ID="addressTB" runat="server"></asp:TextBox><br />
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="securityNumberLBL" runat="server" Text="Security Number: "></asp:Label> <asp:TextBox ID="securityNumTB" runat="server"></asp:TextBox>
            
            
        </div>
    </div>
    
    <div style="margin-left:111px;">
        <asp:ListBox ID="ListBox1" runat="server" Width="321px" Height="247px" style="margin-left: 145px; margin-top: 0px;"></asp:ListBox>
    </div>
    
</asp:Content>

