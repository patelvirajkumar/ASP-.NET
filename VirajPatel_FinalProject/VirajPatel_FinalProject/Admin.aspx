<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="VirajPatel_FinalProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="Content/style2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Login</h1>
            <p class="auto-style1">
            <asp:Label ID="lbluserad" runat="server" Text="User"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="admintxt" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblpassadmin" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="passadmintxt" TextMode="Password" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
                </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="195px" OnClick="btnLogin_Click" />
    <br />
    <asp:Label ID="errlbl" runat="server"></asp:Label>
    <br />
            <p class="auto-style1">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="admintxt" ErrorMessage="User name required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="passadmintxt" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="passadmin"></asp:RequiredFieldValidator>
    <br />
                </p>
        </div>
        <asp:HyperLink ID="HyperLink" NavigateUrl="StartUp" runat="server">Back to Login Page</asp:HyperLink>
    </form>
</body>
</html>
