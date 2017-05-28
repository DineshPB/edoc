Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class re___MACOSX_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim str As String
        str = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\resume.mdf;Integrated Security=True;User Instance=True"
        Dim cn As New SqlConnection(str)
        Dim q As String = "Insert into [resume] (username,experience) values('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "')"
        Dim cmd As New SqlCommand(q, cn)
        cn.Open()
        cmd.ExecuteNonQuery()
        Response.Write("entered")
        cn.Close()

    End Sub
End Class
