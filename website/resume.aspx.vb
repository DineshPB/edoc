Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes

Partial Class website_resume
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Not Session("Userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            ' + Convert.ToInt32(Session("Userid")) + "
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
            Dim query
            query = "Insert into [cvresume_master] (userid,fullname,emailid,contactnumber,website,address,education,qualification,workexp,interests,reference) values "
            query = query + "(" + Convert.ToInt32(Session("userid")) + ",'" + txtfullname.Text + "','" + txtemailid.Text + "'," + txtcontactno.Text + ",'" + txtwebsite.Text + "','" + txtaddress.Text + "','" + txteducation.Text + "','" + txtqualification.Text + "','" + txtworkexpereince.Text + "','" + txtInterest.Text + "','" + txtreference.Text + "')"
            cmd.CommandText = query
            cmd.ExecuteNonQuery()
        Else

        End If
    End Sub
End Class

