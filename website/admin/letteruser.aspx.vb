Imports System.Data
Imports System.Data.SqlClient
Partial Class website_admin_letteruser
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            letterUserdetail(Session("userid"))

        End If
    End Sub
    Public Function letterUserdetail(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [letter_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridletteruser.DataSource = dt
        gridletteruser.DataBind()
        Return Nothing
    End Function
    Protected Sub gridletteruser_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridletteruser.RowCommand
        Dim letterid As Integer
        Dim CommandName As String
        letterid = e.CommandArgument
        CommandName = e.CommandName

        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/content page/letterdisplay.aspx?letterid=" & letterid)
        End If
        letterUserdetail(Session("userid"))
    End Sub
End Class
