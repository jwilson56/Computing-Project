<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PickUp.aspx.vb" Inherits="Pages_PickUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 167px;
        }
        .auto-style3 {
            width: 137px;
        }
        .auto-style4 {
            width: 227px;
        }
button,select{text-transform:none}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}
        .auto-style5 {
            width: 167px;
            height: 23px;
        }
        .auto-style6 {
            width: 137px;
            height: 23px;
        }
        .auto-style7 {
            width: 227px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtDateInput" runat="server" Width="156px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="LblFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="LblSecondName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Specifiy&nbsp; a Time:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>9:00 - 12:00  </asp:ListItem>
                        <asp:ListItem>12:00 - 15:00</asp:ListItem>
                        <asp:ListItem>15:00 - 18:00</asp:ListItem>
                        <asp:ListItem>18:00 - 21:00</asp:ListItem>
                        <asp:ListItem Enabled="False">   </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="LblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="LblBookId" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">You have selected:</td>
                <td class="auto-style4">
                    <asp:Label ID="LblInfo" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LblReturnDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="BtnConfirm" runat="server" Text="Confirm" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="LblTotal" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
