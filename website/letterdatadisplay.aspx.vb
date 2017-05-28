Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf

Partial Class website_letterdatadisplay
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("Userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [letter_master] Where Userid='" & Session("Userid") & "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then

                namel.Text = dr("receiver").ToString()
                address1l.Text = dr("address1").ToString()
                address2l.Text = dr("address2").ToString()
                'subjectl.text = dr("subject").tostring()
                address3l.Text = dr("address3").ToString()
                firstparal.Text = dr("firstparagraph").ToString()
                secondpara.Text = dr("secondparagraph").ToString()
                thirdpara.Text = dr("thirdparagraph").ToString()
                salutation.Text = dr("salutation").ToString()
                datel.Text = dr("senddate").ToString()
                subjectl.Text = dr("subject").ToString()
                phonenumberl.Text = dr("contactno").ToString()

            End If

        Else
            nodata.Text = "*No Data Found!"
        End If

      
    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.ContentType = "application/pdf"
        Response.AddHeader("content-disposition", "attachment;filename=Resume.pdf")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)
        Me.Page.RenderControl(hw)
        Dim sr As New StringReader(sw.ToString())
        Dim pdfDoc As New Document(PageSize.A4, 10.0F, 10.0F, 100.0F, 0.0F)
        Dim htmlparser As New HTMLWorker(pdfDoc)
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
        pdfDoc.Open()
        htmlparser.Parse(sr)
        pdfDoc.Close()
        Response.Write(pdfDoc)
        Response.[End]()
    End Sub

End Class
