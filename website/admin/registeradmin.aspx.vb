Imports System.Data.SqlClient
Imports System.Data

Partial Class website_admin_registeradmin
    Inherits System.Web.UI.Page

    
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click

        Dim strGender As String
        'Dim strDate As
        Dim a, b As String
        If Rdomale.Checked = True Then
            a = "male"
            strGender = a
        Else
            b = "female"
            strGender = b
        End If

        Dim cmd As New SqlCommand()
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        ' Dim Dt As Date = Convert.ToDateTime(dob.Text)
        ' Dt = DateTime.Parse(dob.Text)
        'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
        cmd.CommandText = "Insert into [admin_master](adminemailid,password,adminfullname,gender) values ('" + txtemailid.Text + "','" + txtpassword.Text + "','" + txtname.Text + "','" + strGender + "')"
        cmd.ExecuteNonQuery()
        '

    End Sub

End Class
