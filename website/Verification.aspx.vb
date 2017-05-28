Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Net.Mail
Imports System.IO
Imports System.Net
Partial Class website_Verification
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(sender As Object, e As System.EventArgs) Handles btnSave.Click
        Dim code As Integer
        '  Dim b = Request.QueryString("b")
        Dim c As String = Request.QueryString("c")
        Dim checka As Integer
        checka = txtcode.Text.ToString()
        code = Request.QueryString("codeg")
        Dim cmd As New SqlCommand()
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        Dim v = 1

        If (code = checka) Then
            cmd.CommandText = "Update [user_master] Set verify='" & v & "'where emailid='" & c & "'"
            cmd.ExecuteNonQuery()
            Label1.Text = "verification complete"
            Response.Redirect("~/website/login.aspx")
        Else
            Label1.Text = "Verification Failed"
        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
