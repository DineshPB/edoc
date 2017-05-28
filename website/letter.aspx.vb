Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes

Partial Class website_letter
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click

        'Dim strSendDate As DateTime
        'strSendDate = Convert.ToDateTime(txtdate.Text)

        Dim cmd As New SqlCommand()
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        ' + Convert.ToInt32(Session("userid")) + "
        'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
        cmd.CommandText = "Insert into [letter](sender,receiver,senddate,subject,firstparagraph,secondparagraph,thirdparagraph) values ('" + txtfrom.Text + "','" + txtto.Text + "','" + txtdate.Text + "''" + txtsubject.Text + "','" + txtfirstparagraph.Text + "','" + txtsecondparagraph.Text + "','" + txtthirdparagraph.Text + "')"
        cmd.ExecuteNonQuery()
    End Sub
End Class

