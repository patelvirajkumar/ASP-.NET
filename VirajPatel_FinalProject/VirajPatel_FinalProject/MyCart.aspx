<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShopping.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="VirajPatel_FinalProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lblwelcome" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <h1>My  CART</h1>
    <p>
    &nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="231px"  Width="796px"></asp:ListBox>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRmv" runat="server" Text="Remove" Width="156px" OnClick="btnRmv_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" Width="144px" OnClick="btnEmpty_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnShopping" runat="server" OnClick="btnShopping_Click" Text="Keep Shopping" Width="176px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="79px" ImageUrl="~/Images/Checkout.png" OnClick="ImageButton1_Click" Width="96px" />
    </p>
    <p>
        <asp:TextBox ID="msgtxt" runat="server" ForeColor="Blue"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
  
    
</asp:Content>
