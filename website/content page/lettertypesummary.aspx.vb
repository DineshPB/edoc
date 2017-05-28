Imports System.Data.SqlClient
Imports System.Data
Partial Class website_content_page_lettertypesummary
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                formalletter(Session("userid"))
                informalletter(Session("userid"))
            End If
        End If
    End Sub
    Public Function formalletter(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "Formal"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [letter_master] Where Userid='" & UserID & "' And type='" + type + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridformall.DataSource = dt
        gridformall.DataBind()
        Return Nothing
    End Function
    Protected Sub gridformall_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridformall.RowCommand
        Dim letterid As Integer
        Dim CommandName As String
        letterid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/lettermaster.aspx?letterid=" & letterid)
        Else
            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [letter_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And letterid = " & letterid
                cmd.ExecuteNonQuery()
            End If

        End If
        formalletter(Session("userid"))
    End Sub
    Public Function informalletter(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "InFormal"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [letter_master] Where Userid='" & UserID & "' And type='" + type + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridinfromall.DataSource = dt
        gridinfromall.DataBind()
        Return Nothing
    End Function
    Protected Sub gridinfromall_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridinfromall.RowCommand
        Dim letterid As Integer
        Dim CommandName As String
        letterid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/Informallettermaster.aspx?letterid=" & letterid)
        Else
            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [letter_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And letterid = " & letterid
                cmd.ExecuteNonQuery()
            End If

        End If
        formalletter(Session("userid"))
    End Sub
End Class
