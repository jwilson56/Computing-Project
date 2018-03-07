<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Homepage.aspx.vb" Inherits="Pages_Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:LoginName ID="LoginName1" runat="server" FormString="Logged in as {0}"/>
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <RoleGroups>
                <asp:RoleGroup Roles="Manager">
                    <ContentTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ManagersArea/Managers.aspx">Managers Area</asp:HyperLink>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
        <br />
        <br />
        <br />
        <p>
            <asp:Button ID="BtnLogOut" runat="server" Text="Log out" />
        </p>
    </form>
</body>
</html>
