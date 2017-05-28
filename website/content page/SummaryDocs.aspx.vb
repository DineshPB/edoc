Imports System.Data.SqlClient
Imports System.Data

Partial Class website_content_page_SummaryDocs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelectTop5Resume(Session("userid"))
                SelectTop5letter(Session("userid"))
                SelectTop5application(Session("userid"))
                SelectTop5notice(Session("userid"))
                SelectTop5cv(Session("userid"))
                SelectTop5informalletter(Session("userid"))
            End If
        End If
    End Sub

    Public Function SelectTop5Resume(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "resume"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [cvresume_master] Where Userid='" & UserID & "' And type = '" & type.ToString() & "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        grdResume.DataSource = dt
        grdResume.DataBind()
        Return Nothing
    End Function
    Public Function SelectTop5cv(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "cv"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [cvresume_master] Where Userid='" & UserID & "' And type = '" & type.ToString() & "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridcv.DataSource = dt
        gridcv.DataBind()
        Return Nothing
    End Function
    Public Function SelectTop5letter(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "Formal"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [letter_master] Where Userid='" & UserID & "'And type='" + type.ToString() + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridletter.DataSource = dt
        gridletter.DataBind()
        Return Nothing
    End Function
    Public Function SelectTop5informalletter(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim type As String = "InFormal"
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [letter_master] Where Userid='" & UserID & "'And type='" + type.ToString() + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridinformal.DataSource = dt
        gridinformal.DataBind()
        Return Nothing
    End Function
    Public Function SelectTop5application(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [application_master] Where Userid='" & UserID & "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridapplication.DataSource = dt
        gridapplication.DataBind()
        Return Nothing
    End Function
    Public Function SelectTop5notice(ByVal UserID As Integer)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [notice_master] Where Userid='" & UserID & "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        gridnotice.DataSource = dt
        gridnotice.DataBind()
        Return Nothing
    End Function

    Protected Sub grdResume_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdResume.RowCommand
        Dim crid As Integer
        Dim CommandName As String
        crid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/resumecontent.aspx?crid=" & crid)
        Else
          
            End If

            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [cvresume_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And crid = " & crid
                cmd.ExecuteNonQuery()


        End If
        If CommandName = "cmdpdf" Then
            Response.Redirect("~/website/cv/CV-Template/cvtemp.aspx?crid=" & crid)
        End If
        If CommandName = "cmdword" Then
            Response.Redirect("~/website/content page/worddoc/resumeword.aspx?crid=" & crid)
        End If
        SelectTop5Resume(Session("userid"))
    End Sub
    Protected Sub gridcv_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridcv.RowCommand
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
            cmd.CommandText = "Delete from [cvresume_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And crid = " & crid
            cmd.ExecuteNonQuery()
        Else
            If CommandName = "cmdpdf" Then
                Response.Redirect("~/website/cv/CV-Template/cvtemp.aspx?crid=" & crid)
            End If
            If CommandName = "cmdword" Then
                Response.Redirect("~/website/content page/worddoc/cvword.aspx?crid=" & crid)
            End If
        End If
        SelectTop5cv(Session("userid"))
    End Sub
    Protected Sub gridletter_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridletter.RowCommand
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
        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/content page/letterdisplay.aspx?letterid=" & letterid)
        End If
        SelectTop5letter(Session("userid"))
    End Sub
    Protected Sub gridinformal_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridinformal.RowCommand
        Dim iletterid As Integer
        Dim CommandName As String
        iletterid = e.CommandArgument
        CommandName = e.CommandName
        If CommandName = "cmdEdit" Then
            Response.Redirect("~/website/content page/Informallettermaster.aspx?letterid=" & iletterid)
        Else
            If CommandName = "cmdDelete" Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Delete from [letter_master] Where Userid = " & Convert.ToInt32(Session("Userid")) & " And letterid = " & iletterid & ""
                cmd.ExecuteNonQuery()
            End If

        End If
        If CommandName = "cmdshow" Then
            Response.Redirect("~/website/content page/letterdisplay.aspx?letterid=" & iletterid)
        End If
        SelectTop5informalletter(Session("userid"))
    End Sub
    Protected Sub gridapplication_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridapplication.RowCommand
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
        SelectTop5application(Session("userid"))
    End Sub
    Protected Sub gridnotice_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gridnotice.RowCommand
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
        SelectTop5notice(Session("userid"))
    End Sub
End Class
