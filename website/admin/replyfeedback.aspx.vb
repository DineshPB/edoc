Imports System.Data
Imports System.Data.SqlClient

Partial Class website_admin_replyfeedback
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            SelecUserfeedback(Session("userid"))

        End If
    End Sub
    Public Function SelecUserfeedback(ByVal UserID As Int32)
        Dim sid As String
        sid = Request.QueryString("sid")
        'Response.Write(sid)

        If Not sid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [suggest_master] Where fromid='" + sid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                

            End If

        Else
        End If
        Return Nothing
    End Function

    'Protected Sub btnreply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreply.Click
    '    Dim sid As String
    '    sid = Request.QueryString("sid")
    '    Try
    '        If Not Session("auserid") Is Nothing Then
    '            Dim cmd As New SqlCommand()
    '            cmd.Connection = New DBConn().ConnOpen()
    '            cmd.CommandType = CommandType.Text
    '            cmd.CommandText = "insert [suggest_master] Set feedback='" + txtreply.Text + "' Where  suggestid='" & sid & "'"
    '            cmd.ExecuteNonQuery()
    '        End If

    '        Catch ex As Exception

    '    End Try

    'End Sub

    Protected Sub btnmsg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmsg.Click
        If Not Session("userid") Is Nothing Then

            If Not usermsg Is Nothing Then
                Dim sid As String
                sid = Request.QueryString("sid")
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" & txtFirstName.Text & "','" & txtLastName.Text & "','" & txtemailid.Text & "','" & txtpassword.Text & "'," & intGender & ",'" & DateTime.Now.ToString() & "')"
                cmd.CommandText = "Insert into [suggest_master](feedback,fromid,toid) values ('" & usermsg.Text & "'," & 0 & ",'" & sid & "')"
                cmd.ExecuteNonQuery()
                usermsg.Text = ""
            End If

        End If
    End Sub

    
End Class
