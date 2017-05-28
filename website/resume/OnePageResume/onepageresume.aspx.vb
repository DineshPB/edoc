Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.IO
Imports iTextSharp
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf

Partial Class website_resume_OnePageResume_onepageresume
    Inherits System.Web.UI.Page

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    'Dim str As String
    '    'str = "Data Source=.\SQLEXPRESS;AttachDbFilename=H:\edoccreator\App_Data\EdocDatabase.mdf;Integrated Security=True;User Instance=True"
    '    'Dim cn As New SqlConnection(str)
    '    'Dim q As String = "Select * from [cvresume_master] Where fullname='" + data.Text + "'"
    '    'Dim cmd As New SqlCommand(q, cn)
    '    'cn.Open()
    '    'Dim dr As SqlDataReader
    '    'dr = cmd.ExecuteReader()
    '    'If dr.Read() Then

    '    '    usernamel.Text = dr("fullname").ToString()
    '    '    emailidl.Text = dr("emailid").ToString()
    '    '    websitel.Text = dr("website").ToString()
    '    '    contactnol.Text = dr("contactnumber").ToString()
    '    '    workexperiencel.Text = dr("workexp").ToString()
    '    '    educationl.Text = dr("education").ToString()
    '    '    interestsl.Text = dr("specialskills").ToString()
    '    '    referncesl.Text = dr("reference").ToString()
    '    '    qualificationl.Text = dr("qualification").ToString()
    '    '    addressl.Text = dr("address").ToString()
    '    '    cn.Close()
    '    'Else
    '    '    lblnodata.Text = "*No Data Found!"
    '    'End If
    'End Sub    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Dim a = Request.Cookies()
        'Dim workexp = New EncryptDecrypt().Decrypt((Request.QueryString("workexp")), "123456")
        'workexperiencel.Text = workexp
        'Dim reference = New EncryptDecrypt().Decrypt((Request.QueryString("reference")), "123456")
        'referncesl.Text = reference
        'Dim qualification = New EncryptDecrypt().Decrypt((Request.QueryString("qualification")), "123456")
        'qualificationl.Text = qualification
        'Dim interests = New EncryptDecrypt().Decrypt((Request.QueryString("interests")), "123456")
        'interestsl.Text = interests
        'Dim profile = New EncryptDecrypt().Decrypt((Request.QueryString("profiless")), "123456")
        'profilel.Text = profile
        'If Request.Cookies("Cookie1") IsNot Nothing Then
        '    Dim cookieName = Request.Cookies("Cookie1")
        '    usernamel.Text = cookieName.Values.Get("fullname")
        '    addressl.Text = cookieName.Values.Get("address")
        '    Response.Write(cookieName.Values.Get("fullname"))
        '    cookieName.Values.Get("fullname")
        '    emailidl.Text = cookieName.Values.Get("emailid")
        '    contactnol.Text = cookieName.Values.Get("contactnumber")
        '    websitel.Text = cookieName.Values.Get("website")
        '    cookieName.Values.Get("address")
        '    educationl.Text = cookieName.Values.Get("education")
        'End If
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                Dim crid As String
                crid = Request.QueryString("crid")
                Response.Write(crid)
                'SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    'Public Function SelecUserData(ByVal UserID As Int32)
    '    Dim crid As String
    '    crid = Request.QueryString("crid")
    '    Response.Write(crid)

    '    If Not crid Is Nothing Then
    '        Dim cmd As New SqlCommand()
    '        Dim dt As New DataTable
    '        cmd.Connection = New DBConn().ConnOpen()
    '        cmd.CommandType = CommandType.Text
    '        cmd.CommandText = "Select * from [cvresume_master] Where Userid='" & Session("UserID") & "' And crid='" + crid + "'"
    '        Dim da As New SqlDataAdapter(cmd)
    '        Dim dr As SqlDataReader
    '        dr = cmd.ExecuteReader()
    '        If dr.Read() Then
    '            usernamel.Text = dr("fullname").ToString()
    '            profilel.Text = dr("profile").ToString()
    '            emailidl.Text = dr("emailid").ToString()
    '            contactnol.Text = dr("contactnumber").ToString
    '            websitel.Text = dr("website").ToString()
    '            addressl.Text = dr("address").ToString()
    '            educationl.Text = dr("education").ToString()
    '            qualificationl.Text = dr("qualification").ToString()
    '            workexperiencel.Text = dr("workexp").ToString()
    '            interestsl.Text = dr("interests").ToString()
    '            referncesl.Text = dr("reference").ToString()

    '        End If

    '    Else

    '    End If
    '    Return Nothing
    'End Function

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
