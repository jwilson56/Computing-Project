
Partial Class Pages_Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim sqlCS As String
        Dim regNo As String
        Dim password As String
        Dim fName As String
        Dim sName As String
        Dim DOB As Integer
        Dim email As String

        regNo = txtRegNo.Text
        password = TxtPassword1.Text
        fName = TxtFName.Text
        sName = TxtSName.Text
        DOB = TxtAge.Text
        email = TxtEmail.Text

        sqlCS = ConfigurationManager.ConnectionStrings("UniConnString").ConnectionString
        Try
            Using sqlConn As New SqlConnection(sqlCS)
                Dim sqlCmd As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertDataIntoStudentTable"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure
                sqlCmd.Parameters.AddWithValue("@StudNum", regNo)
                sqlCmd.Parameters.AddWithValue("@FirstName", fName)
                sqlCmd.Parameters.AddWithValue("@LastName", sName)
                sqlCmd.Parameters.AddWithValue("@DOB", DOB)
                sqlCmd.Parameters.AddWithValue("@Email", email)

                sqlConn.Open()
                sqlCmd.ExecuteNonQuery()
                sqlConn.Close()
                Membership.CreateUser(regNo, password)
                Roles.AddUserToRole(regNo, "Student")
                Response.Redirect("LogIn.aspx")
            End Using
            LblStatusLabel.Text = "Registration successful!"
        Catch
            LblStatusLabel.Text = "A run-time error has occurred"
        End Try
    End Sub
    Protected Sub TxtAge_TextChanged(sender As Object, e As EventArgs) Handles TxtAge.TextChanged

    End Sub
End Class
