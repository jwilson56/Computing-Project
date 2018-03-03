
'Partial Class Pages_Books
'    Inherits System.Web.UI.Page

'    Const Macbeth As Single = 1


'    Dim Booksubtotal As Integer
'    Dim Bookquantity As Integer
'    Dim bookName As String
'    Dim bookSum As String
'    Dim totalMacbeth As Single
'    'Dim qvaux As Integer

'    Dim qMacbeth As Integer
'    Dim sumMacbeth As Single
'    Dim priceMacbeth As String

'    Dim QuantityMacbeth As Integer
'    'Public Property DropDownListMacbeth As Object

'    Public Function addPriceBook() As String
'        Dim totalMacbeth As Single

'        Dim priceMacbeth As String

'        Dim bookShoppingPrice As String = 0

'        totalMacbeth = Session("sumMacbeth")

'        If totalMacbeth > 0 Then
'            Booksubtotal += totalMacbeth
'            priceMacbeth = CStr(totalMacbeth.ToString("c") & "<br>")
'            bookShoppingPrice &= priceMacbeth
'        End If

'        'If Btn_Rent1.Click Then totalMacbeth += 1 And
'        '    bookShoppingPrice &= priceMacbeth 



'        Session("booksubtotal") = Booksubtotal
'        Session("shoppingbook") = bookShoppingPrice
'        Return True
'    End Function
'    Sub addBookID()


'        Dim bookMacbethID As Integer

'        'If DropDownListMacbeth.Text <> "" Then
'        '    bookMacbethID = Session("BookID1")
'        '    Session("ID") = bookMacbethID

'        If RadioButton1.Checked Then
'            bookMacbethID = Session("BookID1")
'            Session("ID") = bookMacbethID
'        Else
'            bookMacbethID = 0
'        End If



'    End Sub

'    Public Function addNameBook() As String
'        ''Dim Macbeth As Single

'        'If txtMacbeth.Text <> "" Then
'        '    Macbeth = Session("MacbethName")
'        '    bookName = Macbeth.ToString()
'        'Else
'        '    Macbeth = 0
'        'End If

'        'Session("bookName") = bookName
'        'Return True
'        Dim strMacbeth As String

'        If RadioButton1.Checked = True Then
'            strMacbeth = Session("macbethname")
'            bookName = strMacbeth.ToString
'        Else
'            strMacbeth = 0
'        End If

'        Session("bookname") = bookName
'        Return True
'    End Function
'    Public Function addQBook() As Integer
'        Dim quantityMacbeth As Integer

'        quantityMacbeth = Session("qMacbeth")

'        If quantityMacbeth > 0 Then
'            Bookquantity += quantityMacbeth
'        End If

'        Session("bookquantitytotal") = Bookquantity
'        Return True
'    End Function

'    Protected Sub BtnRentMacbeth_Click(sender As Object, e As EventArgs) Handles Btn_Macbeth.Click
'        'Dim sumMacbeth As Single
'        'Dim qMacbeth As Integer
'        ''qMacbeth = CInt(txtMacbeth.Text)

'        'If qMacbeth > 0 Then
'        '    'If Integer.TryParse(txtMacbeth.Text, qMacbeth) Then

'        '    sumMacbeth = qMacbeth * Macbeth
'        '    Session("sumMacbeth") = sumMacbeth
'        '    'Session("MacbethName") = qMacbeth & " Shakespear's Macbeth" & "<br>"
'        '    Session("BookID1") = 1
'        '    addPriceBook()
'        '    addBookID()
'        '    addNameBook()
'        '    lblMessage.Visible = True
'        '    BtnCheck_out.Visible = True
'        'Else
'        '    Call MsgBox("Please add a number", 0, "messgae")
'        'End If
'    End Sub

'    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnCheck_out.Click

'    End Sub
'    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

'    End Sub

'    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
'        Dim sumMacbeth As Single
'        Dim qMacbeth As Integer
'        ' Dim radiobutton As String

'        'RadioButton = RadioButton1


'        Session("qMacbeth") = qMacbeth

'        If RadioButton1.Checked = True Then
'            sumMacbeth = Macbeth
'            Session("summacbeth") = sumMacbeth
'            Session("MacbethName") = " Macbeth" & "<br>"
'            addBookID()
'            addPriceBook()

'            addNameBook()
'            lblalert.Text = "Please select"
'            BtnCheck_out.Visible = True

'        Else
'            lblMessage.Text = "error"
'        End If
'    End Sub
'    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged

'    End Sub
'    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

'    End Sub
'End Class
