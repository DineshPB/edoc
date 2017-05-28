Imports System.Data.SqlClient
Imports System.Data

Partial Class website_informalletter
    Inherits System.Web.UI.Page

    Protected Sub savel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles savel.Click
        If Not Session("userid") Is Nothing Then
            Dim type As String
            type = "InFormal"
            Dim salutation = "Dear" & salutationname.Text
            'Dim a, b As String
            'If sir.Checked = True Then
            '    a = "Dear Sir"
            '    salutation = a
            'Else
            '    b = "Dear Madam"
            '    salutation = b
            'End If
            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            ' + Convert.ToInt32(Session("userid")) + "
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
            cmd.CommandText = "Insert into [letter_master](Userid,receiver,address1,address2,address3,subject,salutation,secondparagraph,firstparagraph,thirdparagraph,sender,contactno,type) values ('" & Convert.ToInt32(Session("userid")) & "','" + name.Text + "','" + address.Text + "','" + address2.Text + "','" + address3.Text + "','" + subject.Text + "','" + salutation + "','" + firstpara.Text + "','" + secondpara.Text + "','" + thirdpara.Text + "','" + senderName.Text + "','" + phonenumber.Text + "','" + type + "')"
            cmd.ExecuteNonQuery()
            Response.Redirect("http://localhost:50949/edoccreator/website/letterdatadisplay.aspx")
        Else

        End If
    End Sub
End Class
