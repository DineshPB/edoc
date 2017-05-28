Imports System.Data.SqlClient
Imports System.Data

Partial Class website_content_page_inbox
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Page.IsPostBack Then
        If Not Session("userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable

            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [suggest_master] "
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            'lstv.DataSource = dt
            'lstv.DataBind()
        End If
        'End If
    End Sub

    Protected Sub btnmsg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmsg.Click
        If Not Session("userid") Is Nothing Then
            If Not usermsg Is Nothing Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" & txtFirstName.Text & "','" & txtLastName.Text & "','" & txtemailid.Text & "','" & txtpassword.Text & "'," & intGender & ",'" & DateTime.Now.ToString() & "')"
                cmd.CommandText = "Insert into [suggest_master](feedback,fromid,toid) values ('" & usermsg.Text & "','" & Session("userid") & "'," & 0 & ")"
                cmd.ExecuteNonQuery()
                usermsg.Text = ""
            End If
        End If
    End Sub
End Class
