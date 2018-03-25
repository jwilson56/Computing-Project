<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PlaceInterest.aspx.vb" Inherits="check2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            width: 244px;
        }
        .auto-style5 {
            width: 249px;
            height: 23px;
        }
        .auto-style6 {
            width: 257px;
            height: 23px;
        }
        .auto-style7 {
            width: 244px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtFName" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Second Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtSname" runat="server" Width="178px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">Return Date</td>
                <td class="auto-style2">
                    <asp:Label ID="LblReturn" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Hamlet</asp:ListItem>
                        <asp:ListItem>TKAMB</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
