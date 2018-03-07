
Partial Class Pages_admin
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Using myEntities As New DatabaseEntities2
        '    Dim allbooks = From Book In myEntities.Books
        '                   Where Copies < 5
        '                   Select BookID



        'GridView1.DataSource = allbooks.ToList
        '    GridView1.DataBind()
        'End Using



    End Sub
End Class
