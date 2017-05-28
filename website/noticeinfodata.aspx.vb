Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_letterinfodata
    Inherits System.Web.UI.Page

    'Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
    '    Dim str As String
    '    str = "Data Source=.\SQLEXPRESS;AttachDbFilename=H:\edoccreator\App_Data\EdocDatabase.mdf;Integrated Security=True;User Instance=True"
    '    Dim cn As New SqlConnection(str)
    '    Dim q As String = "Select * from [notice_master] Where fullname='" + txtfullname.Text + "'"
    '    Dim cmd As New SqlCommand(q, cn)
    '    cn.Open()
    '    Dim dr As SqlDataReader
    '    dr = cmd.ExecuteReader()
    '    If dr.Read() Then

    '        lblname.Text = dr("fullname").ToString()
    '        lblsender.Text = dr("sender").ToString()
    '        lblreceiver.Text = dr("receiver").ToString()
    '        lblsubject.Text = dr("subject").ToString()
    '        lblheading.Text = dr("heading").ToString()
    '        lblfirstpara.Text = dr("firstparagraph").ToString()
    '        lblsecondpara.Text = dr("secondparagraph").ToString()
    '        lblthirdpara.Text = dr("thirdparagraph").ToString()

    '        cn.Close()
    '    Else
    '        lblnodata.Text = "*No Data Found!"
    '    End If
    'End Sub
End Class
