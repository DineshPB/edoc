Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_Notice
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click

        Dim cmd As New SqlCommand
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        ' + Convert.ToInt32(Session("userid")) + "
        'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
        cmd.CommandText = "Insert into notice_master(fullname,subject,heading,sender,receiver,firstparagraph,secondparagraph,thirdparagraph) values('" + txtfullname.Text + "','" + txtsubject.Text + "','" + txtheading.Text + "','" + txtsender.Text + "','" + txtreceiver.Text + "','" + txtfirstpara.Text + "','" + txtsecondpara.Text + "','" + txtthirdpara.Text + "')"
        cmd.ExecuteNonQuery()
    End Sub
End Class
