
Partial Class Hold
    Inherits System.Web.UI.Page


    Public Shared Sub Main()
        'Dim holdBook As Integer

        'holdBook = CInt(txtHold.value)
        '' reading in users hold/ reservation section
        'Dim mySourceQ As New Queue()
        'mySourceQ.Enqueue(txtHold)

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Dim holdBook As Integer

        'holdBook = CInt(txtHold.Text)
        '' reading in users hold/ reservation section
        'Dim mySourceQ As New Queue()
        'mySourceQ.Enqueue(txtHold)

        testInsert()


    End Sub
    Sub testInsert()

        'Dim myCONN As SqlConnection = New SqlConnection(ConfigurationSettings.AppSettings("ConnectionString"))
        'Dim sSql As String = "INSERT INTO RENTS (FName, LName, Email, Book,) VALUES (@FName, @LName)"

        'Dim insertCmd As New SqlCommand(sSql, myCONN)
        'insertCmd.Parameters.Add("@FName", SqlDbType.NVarChar, 50)
        'insertCmd.Parameters.Add("@LName", SqlDbType.NVarChar, 50)

        'insertCmd.Parameters("@FName").Value = TxtFirstName.Text
        'insertCmd.Parameters("@LName").Value = TxtSecond.Text

        'Dim bSuccess As Boolean
        'bSuccess = True

        'Try
        '    myCONN.Open()
        '    insertCmd.ExecuteScalar()
        '    myCONN.Close()

        'Catch ex As Exception
        '    bSuccess = False
        '    Lbloutput.Text = "Failed"
        'Finally
        '    If myCONN.State = ConnectionState.Open Then
        '        myCONN.Close()
        '    End If
        'End Try

        'If bSuccess = True Then
        '    Lbloutput.Text = "Success"
        'End If


    End Sub



    Protected Sub txtHold_TextChanged(sender As Object, e As EventArgs) Handles txtHold.TextChanged

    End Sub
    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TxtSecond.TextChanged

    End Sub
    Protected Sub TxtFirstName_TextChanged(sender As Object, e As EventArgs) Handles TxtFirstName.TextChanged

    End Sub
End Class
