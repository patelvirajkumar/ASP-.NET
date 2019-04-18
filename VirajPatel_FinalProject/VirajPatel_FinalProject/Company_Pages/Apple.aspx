<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShopping.Master" AutoEventWireup="true" CodeBehind="Apple.aspx.cs" Inherits="VirajPatel_FinalProject.WebForm7" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
<div>

</div><br />
    <br />
        <div class="container">
            <div class="display">
        <img src="../Images/Apple_Web.gif"/><br />
&nbsp;</div>
            </div>
   
      
        <div class="container">
            <h3 class="modal-header">Make your Choice</h3>
        <!-- drop down list menu to print data from the table-->
        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="842px" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Product_Id" AutoPostBack="True">
        </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;
          </div>
    <!--Drop down list data source -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_Id], [Model] FROM [Product] WHERE ([Com_Name] = @Com_Name)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Apple" Name="Com_Name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        
    

        <br />
    <div class="container">
        <!-- Deatils View to print the data as per selected values from drop down list-->
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="1021px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                
                <asp:BoundField DataField="Tech_spec_1" HeaderText="Specification"/>
                <asp:BoundField DataField="Tech_spec_2"  />
                <asp:BoundField DataField="Tech_spec_3" />
                <asp:BoundField DataField="Tech_spec_4"  />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price($)" />
                <asp:TemplateField>
                   
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl='<%# Eval("Images", "~/Images/Products/{0}") %>' Width="600px" />
                        <br />
                        <br />
                        <br />
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.Model, Desc_table.Color, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Product.Description, Desc_table.Price, Product.Images FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Product.Product_Id = @Product_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Product_Id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

        
      
        
        <br />

        
      
        
        <br />

        
    </div>

</asp:Content>
