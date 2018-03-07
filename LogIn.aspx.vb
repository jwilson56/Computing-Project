
Partial Class LogIn
    Inherits System.Web.UI.Page

    Protected Sub LoginStatus1_LoggingOut(sender As Object, e As LoginCancelEventArgs) Handles LoginStatus1.LoggingOut

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Roles.IsUserInRole(Login1.UserName, "Assistant") Then
            Response.Redirect("~/Admin/admin.aspx")
        ElseIf Roles.IsUserInRole(Login1.UserName, "Staff") Then
            Response.Redirect("~/Staff?Staff.aspx")

        End If
    End Sub
    Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate

    End Sub
End Class
