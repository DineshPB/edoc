﻿Imports System.Data.SqlClient
Imports System.Data

Partial Class website_content_page_pdf_noticepdf
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim noticeid As String
        noticeid = Request.QueryString("noticeid")
        'Response.Write(crid)

        If Not noticeid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [notice_master] Where noticeid='" + noticeid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then

                Adress_1.Text = dr("sender").ToString()
                Adress_2.Text = dr("fullname").ToString()
                Adress_3.Text = dr("receiver").ToString()
                Date_label.Text = dr("date").ToString()
                Subject_label.Text = dr("heading").ToString()
                para1.Text = dr("firstparagraph").ToString()
                para2.Text = dr("secondparagraph").ToString()
                para3.Text = dr("thirdparagraph").ToString()
                Greetings_label.Text = dr("sender").ToString()
                ' toname.Text = dr("salutation").ToString()
            Else

                '  Response.Write("No data Found")
                'lblnodata.Text = "*No Data Found!"
            End If
        End If

    End Sub
End Class
