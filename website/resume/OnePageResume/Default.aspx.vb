Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.IO
Imports iTextSharp
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf

Partial Class website_resume_OnePageResume_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a = Request.Cookies()


        If Not Page.IsPostBack Then
            SelecUserData(3)
            If Not Session("userid") Is Nothing Then
                Dim crid As String
                crid = Request.QueryString("crid")
                Response.Write(crid)
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim crid As String
        crid = Request.QueryString("crid")
        Response.Write(crid)
        crid = 3
        If Not crid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [cvresume_master] Where Userid=3 And crid=3"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                usernamel.Text = dr("fullname").ToString()
                profilel.Text = dr("profile").ToString()
                'emailidl.Text = dr("emailid").ToString()
                'contactnol.Text = dr("contactnumber").ToString
                'websitel.Text = dr("website").ToString()
                'addressl.Text = dr("address").ToString()
                'educationl.Text = dr("education").ToString()
                'qualificationl.Text = dr("qualification").ToString()
                'workexperiencel.Text = dr("workexp").ToString()
                'interestsl.Text = dr("interests").ToString()
                'referncesl.Text = dr("reference").ToString()

            End If

        Else

        End If
        Return Nothing
    End Function
End Class
