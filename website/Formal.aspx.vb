Imports System.Data.SqlClient
Imports System.Data

Partial Class website_letterdata
    Inherits System.Web.UI.Page
    Protected Sub savel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles savel.Click
        If Not Session("userid") Is Nothing Then
            Dim type As String
            type = "Formal"
            Dim salutation As String
            Dim a, b As String
            If sir.Checked = True Then
                a = "Dear Sir"
                salutation = a
            Else
                b = "Dear Madam"
                salutation = b
            End If
            Dim usubject = subject.Text
            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            ' + Convert.ToInt32(Session("userid")) + "
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
            cmd.CommandText = "Insert into [letter_master](Userid,receiver,address1,address2,address3,subject,salutation,secondparagraph,firstparagraph,thirdparagraph,sender,contactno,type) values ('" & Convert.ToInt32(Session("userid")) & "','" + name.Text + "','" + address.Text + "','" + address2.Text + "','" + address3.Text + "','" + usubject + "','" + salutation + "','" + firstpara.Text + "','" + secondpara.Text + "','" + thirdpara.Text + "','" + senderName.Text + "','" + phonenumber.Text + "','" + type + "')"
            cmd.ExecuteNonQuery()
            Response.Redirect("../website/letterdatadisplay.aspx?type=" + type + "Subject" + usubject + "")
        Else

        End If
    End Sub
End Class
