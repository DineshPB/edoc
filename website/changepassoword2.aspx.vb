Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_changepassoword2
    Inherits System.Web.UI.Page

    Protected Sub changepasswordbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles changepasswordbtn.Click

        Dim cmd As New SqlCommand()
        Dim dt As New DataTable

        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [user_master] Where Userid='" + Session("Userid") + "' And password = '" + oldpass.Text + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            cmd.CommandText = "Update [user_master] Set password='" + confirmpassword.Text + "' Where Userid='" + Session("Userid") + "' And password = '" + oldpass.Text + "'"
            cmd.ExecuteNonQuery()
            lblchnpass.Text = "Password changed"
            frmchangepassword.Visible = False
            frmlogin.Visible = True
            Session("userid") = Nothing
            Session("name") = Nothing

        Else
            lblpassinfo.Text = "Wrong Old Password"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        frmchangepassword.Visible = True
        frmlogin.Visible = False
    End Sub
End Class
