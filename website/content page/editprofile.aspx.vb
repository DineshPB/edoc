Imports System.Data
Imports System.Data.SqlClient

Partial Class website_editprofile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try
            If Not Session("userid") Is Nothing Then
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Update [user_master] Set contactno='" & txtcontactno.Text & "',firstname='" & fname.Text & "',lastname='" & lname.Text & "',occupation='" & TextBox1.Text & "',birthdate='" + ucDateSelector.SelectedDate + "' Where Userid='" & Session("Userid") & "'"
                cmd.ExecuteNonQuery()
                If Not (fuUserProfileImage.PostedFile Is Nothing) Then
                    If (fuUserProfileImage.HasFile()) Then
                        'Dim imageName As String
                        Dim imagePath As String
                        'imageName = fuUserProfileImage.PostedFile.FileName
                        imagePath = "userimages\" & Convert.ToString(Session("Userid")) & ".jpg"
                        fuUserProfileImage.SaveAs(Server.MapPath(imagePath))
                    End If
                End If
                Response.Redirect("~/../../content page/editprofile.aspx")

            End If
        Catch ex As Exception

        End Try
    End Sub

    Public Function SelecUserData(ByVal UserID As Int32)
        Dim cmd As New SqlCommand()
        Dim dt As New DataTable
        Dim ab = " "
        cmd.Connection = New DBConn().ConnOpen()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "Select * from [user_master] Where Userid='" & UserID & "'"
        Dim da As New SqlDataAdapter(cmd)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read() Then
            fnamep.Text = dr("firstname").ToString() + ab.ToString() + dr("lastname").ToString()
            fname.Text = dr("firstname").ToString()
            lname.Text = dr("lastname").ToString()
            txtemailid.Text = dr("emailid").ToString()
            txtdate.Text = dr("birthdate").ToString
            txtcontactno.Text = dr("contactno").ToString()
            gender.Text = dr("gender").ToString()
            TextBox1.Text = dr("occupation").ToString()
            userImage.ImageUrl = "userimages/" & Convert.ToString(Session("Userid")) & ".jpg"
        End If
        Return Nothing
    End Function
End Class
