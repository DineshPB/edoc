Imports System.Data.SqlClient
Imports System.Data

Partial Class website_admin_admindetail
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        admindetail(Session("adminid"))

    End Sub
    Public Function admindetail(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [admin_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridadmin.DataSource = dt
        gridadmin.DataBind()
        Return Nothing
    End Function



End Class
