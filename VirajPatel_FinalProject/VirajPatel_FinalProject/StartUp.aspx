<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartUp.aspx.cs" Inherits="VirajPatel_FinalProject.StartUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
 
       <link href="Content/style2.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
      
        <h1>Login&nbsp; </h1>
    <p class="auto-style1">
        <asp:Label ID="user" runat="server" Text="User ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passtxt" TextMode="Password" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login"   />
    </p>
    <p class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Register">Don&#39;t Have an Account?</asp:HyperLink>
    </p>
    <p class="auto-style1">
        &nbsp;<asp:HyperLink ID="HyperLink2"  NavigateUrl="Admin" runat="server">Login As Admin</asp:HyperLink>
    </p>
    <p class="auto-style1">
        <asp:Label ID="errorlbl" runat="server"></asp:Label>
    </p>
    <p class="auto-style1">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usertxt" ErrorMessage="User id required(email)" ForeColor="#66FFFF" ValidationGroup="user"></asp:RequiredFieldValidator>
    </p>
    <p class="auto-style1">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="usertxt" ErrorMessage="Please enter in (abc@123.com)" ForeColor="#66FFFF" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*&quot;" ValidationGroup="user"></asp:RegularExpressionValidator>
    </p>
    <p class="auto-style1">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" ErrorMessage="Please enter password" ForeColor="#66FFFF" ValidationGroup="password"></asp:RequiredFieldValidator>
    </p>
    <p class="auto-style1">
        &nbsp;</p>

    </form>
</body>
</html>
