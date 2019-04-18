<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirajPatel_FinalProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <link href="Content/style2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration Page</h2>
    
        <div class="form">
    <p class="auto-style1">
        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nametx" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Label ID="lblemail" runat="server" Text="Email-Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="emailtxt" runat="server" ></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="passtxt" TextMode="Password" runat="server"></asp:TextBox>
    </p>
    <div >
        
        <asp:Button ID="regId" runat="server" OnClick="regId_Click" Text="Register" Width="120px" />
        <br />
        
        <br />
            
    </div>
           
            
    </div>
         
    <br />
    <br />
       
        <asp:HyperLink ID="HyperLink"  NavigateUrl="StartUp"  runat="server">Back to Login Page</asp:HyperLink>
        <br />
        <p class="auto-style1">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="nametx" Display="Dynamic" ErrorMessage="Name is required" ForeColor="#66FFFF"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailtxt" ErrorMessage="Email is required" ForeColor="#66FFFF" ValidationGroup="email" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Please enter email in format(123@xyz.com)" ForeColor="#66FFFF" ControlToValidate="emailtxt" ValidationGroup="email"></asp:RegularExpressionValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passtxt" ErrorMessage="Required Password" ForeColor="#66FFFF" ValidationGroup="password"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$"  ErrorMessage="Please enter password that includes{1. Firstletter capital. 2.A numeric value}" ForeColor="#66FFFF" ValidationGroup="paaword" ControlToValidate="passtxt"></asp:RegularExpressionValidator>
            </p>
    </form>
</body>
</html>
