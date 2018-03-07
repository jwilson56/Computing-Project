<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LogIn.aspx.vb" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Log into Website</h1>
    </div>
        <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a New Account" CreateUserUrl="~/Pages/Sign_Up.aspx" DestinationPageUrl="~/Pages/Homepage.aspx">
        </asp:Login>
        <p>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
    </form>
</body>
</html>
