Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb

Partial Class Pages_admin
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    'Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    'Using myEntities As New DatabaseEntities2
    '    Dim allbooks = From Book In myEntities.Books
    '                   Where Copies < 5
    '                   Select BookID



    'GridView1.DataSource = allbooks.ToList
    '    GridView1.DataBind()
    'End Using



    'End Sub
    Protected Sub btnBookReturn_Click(sender As Object, e As EventArgs) Handles btnBookReturn.Click
        'Macbeth

        'Dim myConnection As OleDbConnection = New OleDbConnection
        'Dim dr As OleDbDataReader
        'Dim str As String
        'Dim strSearchField As String













        'lblcopies.Text = DataBind.add

    End Sub
    'Private Sub getData(ByVal user As String)
    '    Dim dt As New DataTable()
    '    Dim connection As New SqlConnection("YOUR CONNECTION STRING HERE")
    '    connection.Open()
    '    Dim sqlCmd As New SqlCommand("SELECT * from Book WHERE Copies = @Macbeth", connection)
    '    Dim sqlDa As New SqlDataAdapter(sqlCmd)

    '    sqlCmd.Parameters.AddWithValue("@Macbeth", Book)
    '    sqlDa.Fill(dt)
    '    If dt.Rows.Count > 0 Then
    '        'TextBox1.Text = dt.Rows(0)("ColumnName1").ToString()  'Where ColumnName is the Field from the DB that you want to display
    '        'TextBox2.Text = dt.Rows(0)("ColumnName2").ToString()
    '        lblcopies.Text = dt.Rows(0)("Copies").ToString()
    '        'Label2.Text = dt.Rows(0)("ColumnName4").ToString()
    '    End If
    '    connection.Close()
    'End Sub

    'Private Sub HasRows(ByVal connection As SqlConnection)
    '    Using connection
    '        Dim command As SqlCommand = New SqlCommand(
    '      "SELECT Name, Copies FROM Book;",
    '      connection)
    '        connection.Open()

    '        Dim reader As SqlDataReader = command.ExecuteReader()

    '        If reader.HasRows Then
    '            Do While reader.Read()
    '                Console.WriteLine(reader.GetInt32(0) _
    '              & vbTab & reader.GetString(1))
    '            Loop
    '        Else
    '            Console.WriteLine("No rows found.")
    '        End If

    '        reader.Close()
    '    End Using
    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        'If Not Page.IsPostBack Then
        '    getData(Me.User.Identity.Name)
        'End If
    End Sub
    Protected Sub BtnUpdate_Click(sender As Object, e As EventArgs) Handles BtnUpdate.Click
        'Dim ds As DataList
        'ds.Tables("Book").Rows(2).Item(1)

        'Dim cb As New OleDb.OleDbCommandBuilder(da)


        'ds.Tables("AddressBook").Rows(inc).Item(1) = txtFirstName.Text
        'ds.Tables("AddressBook").Rows(inc).Item(2) = txtSurname.Text

        'da.Update(ds, "Copies")

        'MessageBox.Show("Data updated")

        'txtFirstName.Text = ds.Tables("AddressBook").Rows(0).Item(1)

        'Dim test As SqlDataAdapter =
        'New SqlDataAdapter


        'test.TableMappings.Add("ConnectionString", "Suppliers")











    End Sub



    Public Property UpdateCommand As OleDbCommand



End Class
