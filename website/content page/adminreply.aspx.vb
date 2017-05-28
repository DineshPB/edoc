Imports System.Data.SqlClient
Imports System.Data

Partial Class website_content_page_adminreply
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            SelecUserfeedback(Session("userid"))

        End If
    End Sub
    Public Function SelecUserfeedback(ByVal UserID As Int32)
        If Not Session("userid") Is Nothing Then
            Dim sid As String

            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [suggest_master] Where Userid='" & UserID & "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then

                adminreply.Text = dr("feedback").ToString()

            End If

        Else
        End If

        Return Nothing
    End Function
End Class
