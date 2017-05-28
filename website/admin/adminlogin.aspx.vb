Imports System.Data
Imports System.Data.SqlClient

Partial Class website_admin_adminlogin
    Inherits System.Web.UI.Page
    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click
         Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [admin_master] Where adminemailid='" & txtLogInEmailId.Text & "' And password = '" & txtLogInPassword.Text & "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Session("aUserid") = dt.Rows(0)("Adminid").ToString()
            Session("aname") = dt.Rows(0)("adminfullname").ToString()
            Response.Redirect("~/website/admin/aUserdetail.aspx")
        Else
            loginfail.Text = "Please enter correct email id and password!!"
        End If
    End Sub
End Class
