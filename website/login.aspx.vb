Imports System.Data
Imports System.Data.SqlClient

Partial Class website_login
    Inherits System.Web.UI.Page
  
    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click

        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [user_master] Where emailid='" + txtLogInEmailId.Text + "' And password = '" + txtLogInPassword.Text + "'"
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            If dt.Rows(0)("block").ToString() = "False" Then
                Session("userid") = dt.Rows(0)("Userid").ToString()
                Session("name") = dt.Rows(0)("firstname").ToString() + " " + dt.Rows(0)("lastname").ToString()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")
            Else
                loginfail.Text = "Your Account is Blocked!!"
            End If

        Else

            loginfail.Text = "Please enter correct email id and password!!"

        End If

    End Sub
End Class
