Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class website_content_page_share
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim a As String
        a = "To share Documents from the Edco Creator"
        Dim bbody As String
        bbody = "This is the Document Send from the E-Document Creator"
        Using mm As New MailMessage("edoccreator@gmail.com", txtTo.Text)
            mm.Subject = a
            mm.Body = bbody
            If fuAttachment.HasFile Then
                Dim FileName As String = Path.GetFileName(fuAttachment.PostedFile.FileName)
                mm.Attachments.Add(New Attachment(fuAttachment.PostedFile.InputStream, FileName))
            End If
            mm.IsBodyHtml = False
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential("edoccreator@gmail.com", "ddaditya")
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
            ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Document Send Through Email.');", True)
        End Using

    End Sub
End Class
