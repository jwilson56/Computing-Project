Imports System.Data
Imports System.Data.SqlClient


Partial Class check2
    Inherits System.Web.UI.Page


    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TxtTest.Text = Calendar1.SelectedDate.ToShortDateString()
        Calendar1.Visible = True
    End Sub


    Private Function GetReturnDate()
        Dim put As Date


        put = TxtTest.Text
        put.adddays(14)



    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim RentalDates As Date
        Dim bookdate As Date
        Dim sqlCS As String
        Dim fName As String
        Dim lName As String

        Dim ReturnBy As String
        Dim returnBook As System.DateTime
        Dim pickupdate As Date
        Dim book As String


        RentalDates = TxtTest.Text


        ReturnBy = RentalDates.AddDays(14)





        returnBook = pickupdate.AddDays(14)

        fName = TxtFName.Text
        lName = TxtSname.Text
        returnBook = bookdate.AddDays(14)
        bookdate = Date.Now
        book = DropDownList1.Text


        sqlCS = ConfigurationManager.ConnectionStrings("Database").ConnectionString

        Try

            Using sqlConn As New SqlConnection(sqlCS)

                Dim sqlCmd As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertReservationInfo"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure




                sqlCmd.Parameters.AddWithValue("@FirstName", fName)
                sqlCmd.Parameters.AddWithValue("@LastName", lName)
                sqlCmd.Parameters.AddWithValue("@OrderDate", bookdate)
                'sqlCmd.Parameters.AddWithValue("@ReturnDate", returnBook)
                sqlCmd.Parameters.AddWithValue("@BookName", book)

                sqlConn.Open()

                sqlCmd.ExecuteNonQuery()

                sqlConn.Close()

            End Using

            LblOutput.Text = "Hold has been placed"

        Catch

            LblOutput.Text = "An error  has occured"
        End Try


        'If 14Days pass Then 
        '    Add book back to stock levels

        If Da Then

    End Sub

End Class
