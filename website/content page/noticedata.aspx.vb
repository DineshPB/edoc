Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_content_page_noticedata
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("Userid") Is Nothing Then
             Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [notice_master] Where Userid='" & Session("userid") & "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                namell.Text = dr("fullname").ToString()
                froml.Text = dr("sender").ToString()
                namel.Text = dr("receiver").ToString()
                'lblsubject.Text = dr("subject").ToString()
                noticeheadingl.Text = dr("heading").ToString()
                firstpara.Text = dr("firstparagraph").ToString()
                secondpara.Text = dr("secondparagraph").ToString()
                thirdpara.Text = dr("thirdparagraph").ToString()
                cmd.Connection.Close()

            Else
                nodata.Text = "*No Data Found!"
            End If
        Else
            nodata.Text = "*No Data Found!"
        End If
    End Sub
End Class
