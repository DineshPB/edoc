Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes

Partial Class website_registeruser
    Inherits System.Web.UI.Page

    'Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
    '    'Dim strGender As String
    '    ''Dim strDate As
    '    'Dim a, b As String
    '    'If Rdomale.Checked = True Then
    '    '    a = "male"
    '    '    strGender = a
    '    'Else
    '    '    b = "female"
    '    '    strGender = b
    '    'End If
    '    'Dim cmd As New SqlCommand()
    '    'cmd.Connection = New DBConn().ConnOpen()
    '    'cmd.CommandType = CommandType.Text
    '    ''cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
    '    'cmd.CommandText = "Insert into [user](firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + strGender + "','" + DateTime.Now.ToString() + "')"
    '    'cmd.ExecuteNonQuery()
    '    'Response.Redirect("http://localhost:54179/edoccreator/website/SinglePro/home.aspx")
    'End Sub
End Class
