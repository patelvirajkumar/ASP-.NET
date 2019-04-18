<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShopping.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="VirajPatel_FinalProject.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h4>Select Product you want to edit,update or delete</h4>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Product_Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  SelectCommand="SELECT Product.Model, Product.Product_Id FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id"></asp:SqlDataSource>
   
    <div class="container">
        <br />
        
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="919px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:TemplateField HeaderText="Model" SortExpression="Model">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Model name" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:TemplateField HeaderText="Warranty" SortExpression="Warranty">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Warranty") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Warrantly can not be Null"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Warranty") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Tech_spec_1" HeaderText="Tech_spec_1" SortExpression="Tech_spec_1" />
            <asp:BoundField DataField="Tech_spec_2" HeaderText="Tech_spec_2" SortExpression="Tech_spec_2" />
            <asp:BoundField DataField="Tech_spec_3" HeaderText="Tech_spec_3" SortExpression="Tech_spec_3" />
            <asp:BoundField DataField="Tech_spec_4" HeaderText="Tech_spec_4" SortExpression="Tech_spec_4" />
            <asp:BoundField DataField="Com_Name" HeaderText="Com_Name" SortExpression="Com_Name" />
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Price is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.Model, Product.Description, Desc_table.Color, Desc_table.Warranty, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Com_Name, Desc_table.Price FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)" DeleteCommand="SELECT Product.Model, Product.Description, Desc_table.Color, Desc_table.Warranty, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Com_Name, Desc_table.Price FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)" InsertCommand="SELECT Product.Model, Product.Description, Desc_table.Color, Desc_table.Warranty, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Com_Name, Desc_table.Price FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)" UpdateCommand="SELECT Product.Model, Product.Description, Desc_table.Color, Desc_table.Warranty, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Com_Name, Desc_table.Price FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)">
        <DeleteParameters>
            <asp:Parameter Name="Product_Id" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_Id" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Product_Id" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
