Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class website_verify
    Inherits System.Web.UI.Page

    Protected Sub btnCancle_Click(sender As Object, e As System.EventArgs) Handles btnCancle.Click

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As System.EventArgs) Handles btnSave.Click
        Dim codeg As String
        'Dim b = Request.QueryString("emailid").ToString()
        codeg = Request.QueryString("codeg").ToString()
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
            '  Response.Redirect("~/website/Verification.aspx?a=" + a)
        End Using
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
End Class
