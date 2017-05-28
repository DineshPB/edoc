Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_suggestion
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [User_master] Where Userid='" & UserID & "'"
        Dim da As New SqlDataAdapter(cmd)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read() Then
            txttName.Text = dr("firstname").ToString()
            txtemailid.Text = dr("emailid").ToString()
           
        End If
        Return Nothing
    End Function
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" & txtFirstName.Text & "','" & txtLastName.Text & "','" & txtemailid.Text & "','" & txtpassword.Text & "'," & intGender & ",'" & DateTime.Now.ToString() & "')"
                cmd.CommandText = "Insert into [suggest_master](suggestion) values ('" & suggestion.Text & "')  Where Userid='" & Session("userid") & "'"
                cmd.ExecuteNonQuery()
            End If
        End If
    End Sub
End Class
