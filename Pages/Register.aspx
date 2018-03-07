<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Pages_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 54%;
            height: 199px;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Enter registration Nubmer</td>
                <td>
                    <asp:TextBox ID="txtRegNo" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegNo" ErrorMessage="*" ForeColor="#CC0000" SetFocusOnError="True">Please fill out this text box</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Password</td>
                <td id="TxtPassword1">
                    <asp:TextBox ID="TxtPassword1" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter First Name</td>
                <td>
                    <asp:TextBox ID="TxtFName" runat="server" Width="212px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Last Name</td>
                <td>
                    <asp:TextBox ID="TxtSName" runat="server" Width="209px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Date of Birth</td>
                <td>
                    <asp:TextBox ID="TxtAge" runat="server" Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Email Address</td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="auto-style3" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" />
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LblStatusLabel" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
