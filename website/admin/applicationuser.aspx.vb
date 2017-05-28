Imports System.Data
Imports System.Data.SqlClient

Partial Class website_admin_applicationuser
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then


            applicationUserdetail(Session("userid"))
        

        End If
    End Sub
    Public Function applicationUserdetail(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [application_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridapplicationuser.DataSource = dt
        gridapplicationuser.DataBind()
        Return Nothing
    End Function
    Protected Sub gridapplicationuser_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridapplicationuser.RowCommand
        Dim applicationid As Integer
        Dim CommandName As String
        applicationid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/applicationcontent.aspx?applicationid=" & applicationid)
        Else
            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [application_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And applicationid = " & applicationid
                cmd.ExecuteNonQuery()
            End If

        End If
        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/content page/applicationdisplay.aspx?applicationid=" & applicationid)
        End If
        applicationUserdetail(Session("userid"))
    End Sub
End Class
