Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf

Partial Class website_cv_CV_Template_cvtemp
    Inherits System.Web.UI.Page

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    '    Dim str As String
    '    str = "Data Source=.\SQLEXPRESS;AttachDbFilename=H:\edoccreator\App_Data\EdocDatabase.mdf;Integrated Security=True;User Instance=True"
    '    Dim cn As New SqlConnection(str)
    '    Dim q As String = "Select * from [cvresume_master] Where fullname='" + data.Text + "'"
    '    Dim cmd As New SqlCommand(q, cn)
    '    cn.Open()
    '    Dim dr As SqlDataReader
    '    dr = cmd.ExecuteReader()
    '    If dr.Read() Then

    '        usernamel.Text = dr("fullname").ToString()
    '        emailidl.Text = dr("emailid").ToString()
    '        contactnol.Text = dr("contactnumber").ToString()
    '        educationl.Text = dr("education").ToString()
    '        interestsl.Text = dr("interests").ToString()
    '        referncesl.Text = dr("reference").ToString()
    '        qualificationl.Text = dr("qualification").ToString()
    '        addressl.Text = dr("address").ToString()
    '        profilel.Text = dr("profile").ToString()
    '        cn.Close()
    '    Else
    '        lblnodata.Text = "*No Data Found!"
    '    End If
    'End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim crid As String
        crid = Request.QueryString("crid")
        Response.Write(crid)

        If Not crid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [cvresume_master] Where crid='" + crid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then

                usernamel.Text = dr("fullname").ToString()
                emailidl.Text = dr("emailid").ToString()
                contactnol.Text = dr("contactnumber").ToString()
                educationl.Text = dr("education").ToString()
                interestsl.Text = dr("interests").ToString()
                referncesl.Text = dr("reference").ToString()
                qualificationl.Text = dr("qualification").ToString()
                addressl.Text = dr("address").ToString()
                profilel.Text = dr("profile").ToString()
                websitel.Text = dr("website").ToString()

            Else


                '  lblnodata.Text = "*No Data Found!"
            End If
        End If
        'data.Visible = False
        ' Button1.Visible = False
    End Sub

    'Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
    '    Response.ContentType = "application/pdf"
    '    Response.AddHeader("content-disposition", "attachment;filename=Resume.pdf")
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Dim sw As New StringWriter()
    '    Dim hw As New HtmlTextWriter(sw)
    '    Me.Page.RenderControl(hw)
    '    Dim sr As New StringReader(sw.ToString())
    '    Dim pdfDoc As New Document(PageSize.A4, 10.0F, 10.0F, 100.0F, 0.0F)
    '    Dim htmlparser As New HTMLWorker(pdfDoc)
    '    PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
    '    pdfDoc.Open()
    '    htmlparser.Parse(sr)
    '    pdfDoc.Close()
    '    Response.Write(pdfDoc)
    '    Response.[End]()
    'End Sub

    
End Class
