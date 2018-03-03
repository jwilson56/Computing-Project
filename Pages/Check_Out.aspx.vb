
'Partial Class Pages_Check_Out
'    Inherits System.Web.UI.Page

'    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

'    End Sub
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
'End Class
