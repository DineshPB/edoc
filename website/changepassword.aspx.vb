Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes

Partial Class website_changepassword
    Inherits System.Web.UI.Page

    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click
        Dim str As String
        str = "Data Source=.\SQLEXPRESS;AttachDbFilename=H:\edoccreator\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Dim cn As New SqlConnection(str)
        Dim q As String ="Select * from [user] Where emailid='" + txtLogInEmailId.Text + "'"
        Dim cmd As New SqlCommand(q, cn)
        cn.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read() Then
            lblemailid.Text = dr("emailid").ToString()
            lblname.Text = dr("firstname").ToString()
            lblpass.Text = dr("password").ToString()
            ' Response.Redirect("")
            cn.Close()
        Else
            lblnoinfo.Text = "*E-mail id Not Registered!"

        End If
    End Sub
End Class

'Protected Sub changepasswordbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles changepasswordbtn.Click

'  Dim str As String
' str = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\edoccreator\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
'Dim q As String = "update [user] set password='" + confirmpassword.Text.Trim() + "' Where emailid='" + txtLogInEmailId.Text + "'"
'Dim cn As New SqlConnection(str)
'Dim cmd As New SqlCommand(q, cn)
'cn.Open()
'cmd.ExecuteNonQuery()
'lblchnpass.Text = ("Password Changed").ToString()
'cn.Close()

' End Sub
'End Class
