
Partial Class Pages_Check_Out
    Inherits System.Web.UI.Page

    '    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

    '    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load)
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
        booksubtotal = Session("booksubtotal")

        itemName = bookname
        itemPrice = bookprice
        total = booksubtotal

        If itemName <> "" Then
            lblPrice.Text = itemName.ToString
        Else
            itemName = ""
        End If


        If itemPrice <> "" Then
            lblPrice.Text = itemPrice.ToString
        Else
            itemPrice = ""

        End If

        If total <> 0 Then
            lblitemsubtotal.text = total.ToString("C")

        Else
            total = 0
        End If


    End Sub
    Private Function ReturnDate(day As DayOfWeek) As DateTime
        Dim now As DateTime = DateTime.Today
        Dim today As Integer = CInt(now.DayOfWeek)
        Dim find As Integer = CInt(day)

        Dim test As Integer = find - today
        If test > 0 Then
            Return now.AddDays(test)
        Else
            Return now.AddDays(7 - test)

        End If



    End Function

    '    Public Sub CheckDate()

    '        Dim conn As SqlConnection
    '        Dim cmd As SqlCommand
    '        Dim seldate As Date
    '        Dim date1 As Date
    '        date1 = Today

    '        seldate = Calendar1.SelectedDate
    '        Session("Date") = seldate

    '        Dim cs As String
    '        cs = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString

    '        Dim cmdstring As String = "Select DateFor FROM Rent WHERE  (Date = @Date)"

    '        conn = New SqlConnection(cs)
    '        cmd = New SqlCommand(cmdstring, conn)

    '        cmd.Parameters.AddWithValue("@DATE", seldate)


    '        conn.Open()
    '        Dim myReader As SqlDataReader
    '        myReader = cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
    '        While myReader.Read
    '            Session("SelectDate") = myReader(0)
    '        End While
    '        conn.Close()

    '        If seldate <= date1 Then
    '            lblDateValidate.Text = "This Date is unavailable, please try another"
    '            Button1.Visible = False

    '        Else
    '            If Session("SelectedDate") = seldate Then
    '                lblDateValidate.Text = "This Date is unavailable, please try another"
    '                Button1.Visible = False

    '            Else
    '                lblDateValidate.Text = "Date Available"
    '                Button1.Visible = True
    '            End If
    '        End If





    '    End Sub



    '    Public Sub BookCollection()

    '        Dim conn1 As SqlConnection
    '        Dim cmd1 As SqlCommand

    '        Dim cs1 As String

    '        cs1 = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString

    '        Dim cmdstring1 As String "InsertPickUpInfo (Date, TimeSlot) Values(@Date, @TimeSlot)"

    '            conn1 = New SqlConnection(cs1)
    '        cmd1 = New SqlCommand(cmdstring1, conn1)

    '        cmd1.parameters.addwithvalue("@DateFor", Session("date"))
    '        cmd1.parameters.addwithvalue("@TimeSlot", Session("TimeSlot"))

    '        conn1.Open()
    '        cmd1.ExecuteNonQuery()
    '        conn1.Close()




    '    End Sub

    '    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '        BookCollection()

    '    End Sub

    Sub addBooking()
        Dim fName As String
        Dim lName As String
        Dim email As String
        Dim UpDate As String
        Dim ReturnBy As String

        Dim sqlCS As String



        fName = TxtFirstName.Text
        lName = TxtSecond.Text
        email = TxtEmail.Text
        UpDate = TxtReturnDate.Text
        ReturnBy = TxtReturnDate.Text

        sqlCS = ConfigurationManager.ConnectionStrings("Database").ConnectionString

        Try
            Using sqlConn As New SqlConnectionn(sqlCS)

                Dim sqlCmd As New SqlCommand
                sqlCmd.Parameters.AddWithValue("@Email", email)
                sqlCmd.Parameters.AddWithValue("@FirstName", fName)
                sqlCmd.Parameters.AddWithValue("@LastName", lName)
                sqlCmd.Parameters.AddWithValue("@PickUpDate", UpDate)
                sqlCmd.Parameters.AddWithValue("@ReturnDate", ReturnBy)


                sqlConn.Open()

                sqlCmd.ExecuteNonQuery()

                sqlConn.Close()

            End Using

            LblOutput.Text = "Hold has been placed"

        Catch

            LblOutput.Text = "An error  has occured"
        End Try


        'Catch ex As Exception
        'Lbloutput.Text = ex.message
        'End Try





    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

    End Sub
End Class
