Imports System.Data.SqlClient
Imports System.Data

Partial Class website_admin_noticeuser
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            Userdetail(Session("userid"))

        End If
    End Sub
    Public Function Userdetail(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [notice_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridnoticeuser.DataSource = dt
        gridnoticeuser.DataBind()
        Return Nothing
    End Function
    Protected Sub gridnoticeuser_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridnoticeuser.RowCommand
        Dim noticeid As Integer
        Dim CommandName As String
        noticeid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/noticecontent.aspx?noticeid=" & noticeid)
        Else
            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [notice_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And noticeid = " & noticeid
                cmd.ExecuteNonQuery()
            End If

        End If
        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/content page/noticedatadisplayf.aspx?noticeid=" & noticeid)
        End If
        Userdetail(Session("userid"))
    End Sub
End Class
