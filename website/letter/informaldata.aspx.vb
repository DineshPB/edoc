Imports System.Data.SqlClient
Imports System.Data

Partial Class website_letter_informaldata
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable

            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [letter_master] Where Userid='" + Session("Userid") + ""
            ',type='" & [as].Text & "'
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                namel.Text = dr("receiver").ToString()
                address1l.Text = dr("address1").ToString()
                address2l.Text = dr("address2").ToString()
                address3l.Text = dr("address3").ToString()
                'datel.Text = dr("sendate").ToString()
                subjectl.Text = dr("subject").ToString()
                salutation.Text = dr("salutation").ToString()
                firstparal.Text = dr("firstparagraph").ToString()
                secondpara.Text = dr("secondparagraph").ToString()
                thirdpara.Text = dr("thirdparagraph").ToString()
            Else
                nodata.Text = "Sorry First Create your letter"
            End If
        End If
    End Sub
End Class
