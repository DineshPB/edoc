Imports System.Data
Imports System.Data.SqlClient
Partial Class website_admin_cvresumeuser
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            cvresumeUserdetail(Session("userid"))
        End If

    End Sub
    Public Function cvresumeUserdetail(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [cvresume_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridcvresume.DataSource = dt
        gridcvresume.DataBind()
        Return Nothing
    End Function
    Protected Sub gridcvresume_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridcvresume.RowCommand
        Dim crid As Integer
        Dim CommandName As String
        crid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/cvcontent.aspx?crid=" & crid)
        Else

        End If
        If CommandName = "cmdDelete" Then
            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Delete from [cvresume_master] Where crid = " & crid
            cmd.ExecuteNonQuery()
        Else
            If CommandName = "cmdshow" Then
                Response.Redirect("~/website/cv/CV-Template/cvtemp.aspx?crid=" & crid)
            End If

        End If
        cvresumeUserdetail(Session("userid"))
    End Sub
End Class
