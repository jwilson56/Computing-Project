﻿Imports System.Data.SqlClient

Partial Class Sign_Up
    Inherits System.Web.UI.Page
    'Public Shared password As String = ""
    'Public Shared userNo As String = ""

    'Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate

    'End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub BtnCheckOut_Click(sender As Object, e As EventArgs) Handles BtnCheckOut.Click

        'Dim firstname As String
        'Dim surname As String
        'Dim email As String
        'Dim password As String

        'firstname = TxtFirstName.Text
        'surname = TxtSecondName.Text
        'email = TxtEmailUp.Text
        'password = TxtSignPassword.Text


        ''The values from the textboxes would be stored within the session variables 
        'Session("fname") = firstname
        'Session("sname") = surname
        'Session("emailadd") = email

        'Session("pword") = password



        'If firstname <> "" And surname <> "" And email <> "" Then
        '    lblerror.Visible = True
        '    BtnCheckOut.Visible = True
        '    LblCheckOut.Visible = True
        'Else
        '    lblerror.Text = "Please enter your information"
        'End If

    End Sub

    Sub AddCustomer()
        'Dim sqlCS As String
        'Dim firstnamecust As String
        'Dim surnamecust As String
        'Dim emailcust As String
        '' Dim sqlConn As New SqlConnection
        'Dim slqCommandcmd = New SqlCommand




        'firstnamecust = TxtFirstName.Text
        'surnamecust = TxtSecondName.Text
        'emailcust = TxtEmailUp.Text

        'sqlCS = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        ''sqlConn = New SqlConnection

        'Try
        '    Using sqlConn As New SqlConnection(sqlCS)

        '        Dim sqlCMD As New SqlCommand
        '        sqlCMD.Connection = sqlConn
        '        sqlCMD.CommandText = "InsertDataIntoCustomerTable"
        '        sqlCMD.CommandType = Data.CommandType.StoredProcedure

        '        sqlCMD.Parameters.AddWithValue("@FirstName", firstnamecust)
        '        sqlCMD.Parameters.AddWithValue("@LastName", surnamecust)
        '        sqlCMD.Parameters.AddWithValue("@Email", emailcust)

        '        sqlConn.Open()

        '        sqlCMD.ExecuteNonQuery()

        '        sqlConn.Close()

        '    End Using

        '    lblerror.Text = "You are now registered! Thank you, " & firstnamecust.ToString
        'Catch
        '    lblerror.Text = "Run time error"

        'End Try

    End Sub





    '    sqlCS = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    Try
    '        Using sqlConn As New SqlConnection(sqlCS)

    '            Dim sqlCMD As New SqlCommand
    '            sqlCMD.Connection = sqlConn
    '            sqlCMD.CommandText = "InsertDataIntoCustomerTable"
    '            sqlCMD.CommandType = Data.CommandType.StoredProcedure

    '            sqlCMD.Parameters.AddWithValue("@FirstName", firstnamecust)
    '            sqlCMD.Parameters.AddWithValue("@LastName", surnamecust)
    '            sqlCMD.Parameters.AddWithValue("@EmailAddress", emailcust)

    '        End Using
    '    Catch ex As Exception

    '    End Try

    'End Sub




    'Protected Sub btnLogIn_Click(sender As Object, e As EventArgs) Handles btnLogIn.Click
    'Using (sqlconnection sqlCon = New SqlConnection(@"data   Source=(local)\sql"))
    '    Dim userNo As String
    '    Dim password As String
    '    Dim bAuthethicated As Boolean
    '    password = TxtSignPassword.Text
    '    userNo = TxtUserName.Text

    '    Dim sb As New StringBuilder(userNo)






    '    bAuthethicated = checkuser(sb, password)

    '    If bAuthethicated Then
    '        lblerror.Text = "User number as password are correct"
    '    Else
    '        lblerror.Text = "Incorrect ID and/or Password"
    '    End If
    'End Sub
    'Private Function checkuser(ByVal userNo As StringBuilder, ByVal password As String) As Boolean
    '    Dim userID As String = userNo.ToString()
    '    Dim userPWD As String = password.ToString()
    '    Dim sqlCs As String
    '    Dim result As Integer
    '    sqlCs = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString

    '    Try
    '        Using sqlConn As New SqlConnection(sqlCs)
    '            Dim sqlCmd As New SqlCommand
    '            Dim myReader As SqlDataReader

    '            sqlCmd.Connection = sqlConn
    '            sqlCmd.CommandText = "selectCountIDAndPWDFromUserTable"
    '            sqlCmd.CommandType = Data.CommandType.StoredProcedure

    '            sqlCmd.Parameters.Add("@UserID", SqlDbType.Int).Value = userNo
    '            sqlCmd.Parameters.Add("@UserPwd", SqlDbType.VarChar).Value = password

    '            sqlConn.Open()
    '            myReader = sqlCmd.ExecuteReader()

    '            While myReader.Read
    '                result = myReader(0)
    '            End While
    '            sqlConn.Close()
    '        End Using

    '    Catch
    '        lblerror.Text = "A run time error has occurred"
    '    End Try

    '    If result = 1 Then
    '        Return True
    '    Else
    '        Return False
    '    End If

    'End Function

    'Sub addUser()

    '    Dim emailcust As String
    '    Dim password As String

    '    Dim sqlCS As String

    '    emailcust = TxtEmailUp.Text
    '    password = TxtSignPassword.Text

    '    sqlCS = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

    '    Try
    '        Using sqlConn As New SqlConnection(sqlCS)
    '            Dim sqlCMD As New SqlCommand
    '            sqlCMD.Connection = sqlConn
    '            sqlCMD.CommandText = "InsertIntoUsersTable"
    '            sqlCMD.CommandType = Data.CommandType.StoredProcedure

    '            sqlCMD.Parameters.AddWithValue("@email", emailcust)
    '            'sqlCMD.Parameters.AddWithValue("@uPassword", password)

    '            sqlCMD.ExecuteNonQuery()
    '        End Using

    '        lblerror.Text = "An account has now been made for you with the email: " & emailcust.ToString
    '    Catch
    '        lblerror.Text = "An error has happened, an account has not been made for you!"

    '    End Try

    'End Sub
    Protected Sub TxtUserName_TextChanged(sender As Object, e As EventArgs) Handles TxtUserName.TextChanged

    End Sub
    Protected Sub BtnSignUp_Click(sender As Object, e As EventArgs) Handles BtnSignUp.Click

        'Dim sqlCs As String
        'Dim result As String = ""

        'sqlCs = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString

        'Try
        '    Using sqlConn As New SqlConnection(sqlCs)

        '        Dim sqlCmd As New SqlCommand
        '        Dim myReader As SqlDataReader

        '        sqlCmd.Connection = sqlConn
        '        sqlCmd.CommandText = ""



        'End Using
        'Catch

        'End Try

        'Dim sqlCS As String

        'Dim firstname As String
        'Dim surname As String
        'Dim email As String
        'Dim password As String

        'Assign values to the variables from the text box 

        'firstname = TxtFirstName.ToString
        'surname = TxtSecondName.ToString
        'email = TxtEmailUp.Text
        'password = TxtPassword.ToString

        'sqlCS = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString

        'Try
        '    Using sqlConn As New SqlConnection(sqlCS)

        '        Dim sqlCmd As New SqlCommand
        '        sqlCmd.Connection = sqlConn
        '        sqlCmd.CommandText = "InsertDataIntoStudentTable"
        '        sqlCmd.CommandType = Data.CommandType.StoredProcedure


        '        sqlCmd.Parameters.AddWithValue("@Email", email)

        '        sqlConn.Open()
        '        sqlCmd.ExecuteNonQuery()
        '        sqlConn.Close()

        '    End Using
        '    StatusLabel.Text = "User has been added to database"
        'Catch
        '    StatusLabel.Text = "Run time error"

        'End Try




        'Using (SqlConnection sqlCon = New sqlConnection(@"Data Source=(local)\sqle2015;initial Catalog=LoginDB;interated security=True;"))

        '    String Query = "SELECT COUNT(1) FROM USER WHERE UserID=@UserID AND password=@Password"
        '        SqlCommand sqlcmd = newSqlCommand(Query, sqlCon);
        '        sqlCmd.Parametrs.AddWithValue("@UserID", TxtEmailUp.Text.Trim());
        '    sqlCmd.Parametrs.AddWithValue("@Password", TxtPassword.Text.Trim());

        '    Int count = Convert.ToInt32(sqlCmd.ExecuteScalar())

        'End Using

        '    Dim sqlCS As String
        '    Dim FirstNameCust As String
        '    Dim surnamecust As String
        '    Dim password As String
        '    Dim emailID As String
        '    Dim userID As String
        '    Dim address As String
        '    ' Dim sqlConn As New SqlConnection
        '    'Dim slqCommandcmd = New SqlCommand




        '    FirstNameCust = TxtFirstName.Text
        '    surnamecust = TxtSecondName.Text
        '    password = TxtPassword.Text
        '    emailID = TxtEmailUp.Text
        '    userID = TxtUser.Text
        '    address = TxtAddress.Text
        '    sqlCS = ConfigurationManager.ConnectionStrings("Database").ConnectionString
        '    'sqlConn = New SqlConnection

        '    Try
        '        Using sqlConn As New SqlConnection(sqlCS)

        '            Dim sqlCMD As New SqlCommand
        '            sqlCMD.Connection = sqlConn
        '            sqlCMD.CommandText = "InsertDataIntoUserDB"
        '            sqlCMD.CommandType = Data.CommandType.StoredProcedure

        '            sqlCMD.Parameters.AddWithValue("@UserID", userID)
        '            sqlCMD.Parameters.AddWithValue("@FirstName", FirstNameCust)
        '            sqlCMD.Parameters.AddWithValue("@LastName", surnamecust)
        '            sqlCMD.Parameters.AddWithValue("@EmailID", emailID)
        '            sqlCMD.Parameters.AddWithValue("@Address", address)

        '            sqlConn.Open()

        '            sqlCMD.ExecuteNonQuery()


        '            sqlConn.Close()
        '            Membership.CreateUser(userID, password)
        '            Roles.AddUsersToRole(userID, "User")
        '            Response.Redirect("Homepage.aspx")


        '        End Using

        '        lblerror.Text = "You are now registered! Thank you, " & FirstNameCust.ToString
        '    Catch ex As Exception
        '        lblerror.Text = "Run time error"

        '    End Try

    End Sub
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TxtFirstName.TextChanged

    End Sub
    Protected Sub btnLogIn_Click(sender As Object, e As EventArgs) Handles btnLogIn.Click

    End Sub
    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatedUser
        Dim sqlCS As String
        Dim FirstNameCust As String
        Dim surnamecust As String
        Dim password As String
        Dim emailID As String
        Dim userID As String
        Dim address As String
        ' Dim sqlConn As New SqlConnection
        'Dim slqCommandcmd = New SqlCommand




        FirstNameCust = TxtFirstName.Text
        surnamecust = TxtSecondName.Text
        password = TxtPassword.Text
        emailID = TxtEmailUp.Text
        userID = TxtUser.Text
        address = TxtAddress.Text
        sqlCS = ConfigurationManager.ConnectionStrings("UniConnString").ConnectionString
        'sqlConn = New SqlConnection

        Try
            Using sqlConn As New SqlConnection(sqlCS)

                Dim sqlCMD As New SqlCommand
                sqlCMD.Connection = sqlConn
                sqlCMD.CommandText = "InsertDataIntoUserDB"
                sqlCMD.CommandType = Data.CommandType.StoredProcedure

                sqlCMD.Parameters.AddWithValue("@UserID", userID)
                sqlCMD.Parameters.AddWithValue("@FirstName", FirstNameCust)
                sqlCMD.Parameters.AddWithValue("@SecondName", surnamecust)
                sqlCMD.Parameters.AddWithValue("@EmailID", emailID)
                sqlCMD.Parameters.AddWithValue("@Address", address)

                sqlConn.Open()

                sqlCMD.ExecuteNonQuery()


                sqlConn.Close()
                Membership.CreateUser(userID, password)
                Roles.AddUserToRole(userID, "User")
                Response.Redirect("Homepage.aspx")


            End Using

            lblerror.Text = "You are now registered! Thank you, " & FirstNameCust.ToString
        Catch ex As Exception
            lblerror.Text = "Run time error"

        End Try

    End Sub
End Class
