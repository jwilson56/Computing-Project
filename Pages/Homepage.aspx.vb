
Partial Class Pages_Homepage
    Inherits System.Web.UI.Page

    Protected Sub BtnLogOut_Click(sender As Object, e As EventArgs) Handles BtnLogOut.Click
        Session.Abandon()
        Session.Contents.RemoveAll()
        FormsAuthentication.SignOut()
        Response.Redirect("LogIn.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub LoginView1_ViewChanged(sender As Object, e As EventArgs) Handles LoginView1.ViewChanged

    End Sub
End Class
