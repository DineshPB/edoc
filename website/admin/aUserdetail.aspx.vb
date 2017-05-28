Imports System.Data.SqlClient
Imports System.Data

Partial Class website_admin_aUserdetail
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
        cmd.CommandText = "Select * from [user_master]"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        griduser.DataSource = dt
        griduser.DataBind()
        Return Nothing
    End Function
    Protected Sub griduser_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles griduser.RowCommand
        Dim uid As Integer
        Dim CommandName As String
        'Dim CommandText As String
       
        uid = e.CommandArgument
        CommandName = e.CommandName
        Dim blockl As Boolean
        If CommandName = "cmdblock" Then
            For Each gr As GridViewRow In griduser.Rows
                Dim hdn As HiddenField = CType(gr.FindControl("hdnBlock"), HiddenField)
                Dim Userid As HiddenField = CType(gr.FindControl("hdnUserId"), HiddenField)
                If Convert.ToInt16(Userid.Value) = uid Then
                    If hdn.Value = "True" Then
                        blockl = False
                    Else
                        blockl = True
                    End If
                End If

            Next


            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Update [user_master] Set block='" & blockl & "' Where Userid='" & uid & "'"
            cmd.ExecuteNonQuery()
            Userdetail(Session("userid"))
        End If
    End Sub

    

End Class
