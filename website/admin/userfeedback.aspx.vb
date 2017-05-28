Imports System.Data
Imports System.Data.SqlClient

Partial Class website_admin_userfeedback
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then



            usersuggestion(Session("userid"))

        End If
    End Sub
    Public Function usersuggestion(ByVal UserID As Integer)

        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [suggest_master] Where fromid > " & 0
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridsuggest.DataSource = dt
        gridsuggest.DataBind()
        Return Nothing
    End Function
    Protected Sub gridsuggest_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridsuggest.RowCommand
        Dim sid As Integer
        Dim CommandName As String
        sid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/admin/replyfeedback.aspx?sid=" & sid)
        Else

        End If

       




       
        ' usersuggestion(Session("userid"))
    End Sub
End Class
