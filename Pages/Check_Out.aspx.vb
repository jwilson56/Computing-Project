Imports System.Data.SqlClient
Partial Class Pages_Check_Out
    Inherits System.Web.UI.Page


    '    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

    '    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load 'needs looked at
        Dim bookprice As String
        Dim bookname As String
        Dim bookID As Integer
        Dim booksubtotal As Double

        Dim itemName As String
        Dim itemPrice As String
        Dim total As Double

        'Dim now As Date = Date.Today






        bookID = Session("BookID")
        bookprice = Session("bookprice")



        bookname = Session("bookname")
        bookprice = Session("bookprice")
        booksubtotal = CDbl(Session("booksubtotal"))

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
            lblitemsubtotal.Text = total.ToString("C")

        Else
            total = 0
        End If



    End Sub
    'Private Function ReturnDate(day As DayOfWeek) As DateTime
    'Dim now As DateTime = DateTime.Today
    'Dim today As Integer = CInt(now.DayOfWeek)
    'Dim find As Integer = CInt(day)

    'Dim test As Integer = find - today
    'If test > 0 Then
    '    Return now.AddDays(test)
    'Else
    '    Return now.AddDays(7 - test)

    'End If

    'DateTime = Today = DateTime.Now
    'DateTime after14days = Today.AddDays(3)



    'End Function

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
        'Dim UpDate As String
        Dim ReturnBy As String
        'Dim order As System.DateTime
        Dim sqlCS As String
        Dim returnBook As System.DateTime
        Dim pickupdate As Date
        'Dim now As DateTime = DateTime.Today
        'Dim today As System.DateTime

        Dim bookdate As Date
        bookdate = Date.Now

        Today = System.DateTime.Now
        pickupdate = TextBox1.ToString

        returnBook = pickupdate.AddDays(14)

        fName = TxtFirstName.Text
        lName = TxtSecond.Text
        email = TxtEmail.Text

        'ReturnBy = TxtReturnDate.Text
        ReturnBy = returnBook



        sqlCS = ConfigurationManager.ConnectionStrings("Database").ConnectionString

        Try
            'Using sqlConn As New Data.SqlClient.SqlConnection(sqlCS) 'may need to change back
            Using sqlConn As New SqlConnection(sqlCS)


                'Dim sqlCmd As New Data.SqlClient.SqlCommand
                Dim sqlCmd As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertReservationInfo"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure



                sqlCmd.Parameters.AddWithValue("@Email", email)
                sqlCmd.Parameters.AddWithValue("@FirstName", fName)
                sqlCmd.Parameters.AddWithValue("@LastName", lName)
                'sqlCmd.Parameters.AddWithValue("@PickUpDate", UpDate)
                sqlCmd.Parameters.AddWithValue("@ReturnDate", ReturnBy)
                sqlCmd.Parameters.AddWithValue("@OderPlaced", Today)

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
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString()
        Calendar1.Visible = True
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'DateTime = today = DateTime.Now
        'DateTime after14days = today.AddDays(14)
        'lblReturn.Text = after14days.tostring() back up code used if system.date time can tread the calender control

        'Dim today As System.DateTime
        'Dim returnBook As System.DateTime

        'today = System.DateTime.Now
        'returnBook = today.AddDays(14)
        'Dim dt = Calendar1.SelectedDate
        'Dim tm As DateTime = Calendar1

        Dim bookdate As DateTime
        bookdate = DateTime.Now




    End Sub









End Class
