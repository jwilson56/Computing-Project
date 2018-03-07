
Partial Class CreateUsersRoles
    Inherits System.Web.UI.Page

    Protected Sub btnRun_Click(sender As Object, e As EventArgs) Handles BtnRun.click

        Try
            'Roles.CreateRole("Manager")
            Roles.CreateRole("User")


            'Membership.CreateUser("Manager", "test123")


            LblResult.text = "Roles, user accounts, and user assigned to the roles have now been created"

        Catch ex As Exception

            LblResult.Text = ex.ToString


        End Try

    End Sub

End Class
