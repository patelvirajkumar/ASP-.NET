<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShopping.Master" AutoEventWireup="true" CodeBehind="Motorola.aspx.cs" Inherits="VirajPatel_FinalProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lblwelcome" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <div class="container">
        <img src="../Images/Logo/motbanner.jpg" width="900" />
        <br />
        <br />

    </div>
    <h4>Select Model</h4>
    <p>&nbsp;</p>
    <div class="container">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="842px" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Product_Id" AutoPostBack="True" >
        </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;
          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model], [Product_Id] FROM [Product] WHERE ([Com_Name] = @Com_Name)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Motorola" Name="Com_Name" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.Model, Desc_table.Color, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Description, Desc_table.Price, Product.Images FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Product_Id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="container">
            <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="50px" Width="1055px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
           
            <Fields>
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Tech_spec_1" HeaderText="Specification" />
                <asp:BoundField DataField="Tech_spec_2"  />
                <asp:BoundField DataField="Tech_spec_3"   />
                <asp:BoundField DataField="Tech_spec_4"  />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:TemplateField>
                  
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="500" Height="500" ImageUrl='<%# Eval("Images", "~/Images/Products/{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <br />
            <br />
       </div>
            </div>
</asp:Content>
