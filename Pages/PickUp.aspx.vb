Imports System.Data.SqlClient
Partial Class Pages_PickUp

    Inherits System.Web.UI.Page



    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TxtDateInput.Text = Calendar1.SelectedDate.ToShortDateString()
        Calendar1.Visible = True
        LblInfo.Text = TxtDateInput.Text & "  " & DropDownList1.Text
    End Sub

    Protected Sub BtnConfirm_Click(sender As Object, e As EventArgs) Handles BtnConfirm.Click


        Dim bookprice As String
        Dim bookname As String
        Dim bookID As Integer
        Dim booksubtotal As Double

        Dim itemName As String
        Dim itemPrice As String
        Dim total As Double

        bookID = Session("BookID")
        bookprice = Session("bookprice")



        bookname = Session("bookname")
        bookprice = Session("bookprice")
        booksubtotal = CDbl(Session("booksubtotal"))

        itemName = bookname
        itemPrice = bookprice
        total = booksubtotal

        Dim sqlCS As String
        Dim LName As String
        Dim FName As String
        Dim email As String



        LName = LblSecondName.Text
        FName = LblFirstName.Text
        email = LblEmail.Text


        sqlCS = ConfigurationManager.ConnectionStrings("Database").ConnectionString

        Try
            Using sqlCS As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertDataIntoCollectionTable"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure

                sqlCmd.Parameters.AddWithValue("@LastName", LName)
                sqlCmd.Parameters.AddWithValue("@FirstName", FName)


            End Using
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

        'LblInfo.Text = TxtDateInput.Text & "  " & DropDownList1.Text
    End Sub
End Class
