Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.IO
Imports System.Net
Imports System.Net.Mail

Partial Class website_content_page_registerusercontent
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim ab = ucDateSelector.SelectedDate
        Dim strGender As String
        Dim c = txtemailid.Text
        Dim a, b As String
        If Rdomale.Checked = True Then
            a = "male"
            strGender = a
        Else
            b = "female"
            strGender = b
        End If
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [user_master] Where emailid='" + txtemailid.Text + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            If dt.Rows(0)("emailid").ToString() = c Then
                label3.Visible = True
                label3.Text = "This E-mail id Is already Registered,Please Enter Another E-mail id!!"
            Else
                label3.Visible = False
            End If
        Else
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "'," + intGender + ",'" + DateTime.Now.ToString() + "')"
            cmd.CommandText = "Insert into [user_master](firstname,lastname,emailid,password,gender,birthdate,occupation,contactno,verify) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + strGender + "','" + ucDateSelector.SelectedDate + "','" + occu.Text + "','" + txtcon.Text + "','" & False & "')"
            cmd.ExecuteNonQuery()
            Randomize()
            Dim n1 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n2 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n3 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n4 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n5 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n6 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n7 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n8 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n9 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim n10 As Integer = CInt(Int((6 * Rnd()) + 1))
            Dim calc As Double
            calc = n1 * n2 * n3 * n4 * n5 * n6 * n7 * n8 * n9 * n10
            Dim codeg As String = calc
            Label1.Text = codeg.ToString
            'txtemailid.Text = b.ToString()
            Using mm As New MailMessage("edoccreator@gmail.com", txtemailid.Text)


                mm.Subject = Label2.Text
                mm.Body = Label1.Text
                mm.IsBodyHtml = False
                Dim smtp As New SmtpClient()
                smtp.Host = "smtp.gmail.com"
                smtp.EnableSsl = True
                Dim NetworkCred As New NetworkCredential("edoccreator@gmail.com", "ddaditya")
                smtp.UseDefaultCredentials = True
                smtp.Credentials = NetworkCred
                smtp.Port = 587
                smtp.Send(mm)
                ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Verification Code Sent.');", True)
                Response.Redirect("~/website/Verification.aspx?codeg=" & codeg & "&c=" + c)
            End Using
            'Response.Redirect("~/website/SinglePro/home.aspx")
            ' Response.Redirect("~/website/content page/verify.aspx?codeg=" + codeg)
            'Response.Redirect("~/website/SinglePro/home.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        label3.Visible = False

    End Sub





    Protected Sub txtemailid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtemailid.TextChanged
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim c = txtemailid.Text
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [user_master] Where emailid='" + txtemailid.Text + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            If dt.Rows(0)("emailid").ToString() = c Then
                label3.Visible = True
                label3.Text = "This E-mail id Is already Registered,Please choose Another Emailid!!"
            End If
        End If
    End Sub
End Class
