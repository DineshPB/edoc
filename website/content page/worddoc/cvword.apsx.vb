Imports System.Data
Imports System.Data.SqlClient

Partial Class website_content_page_cvword
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim crid As String
        crid = Request.QueryString("crid")

        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                'Dim crid As String
                crid = Request.QueryString("crid")
                ' Response.Write(crid)
                SelecUserData(Session("userid"))
            Else


            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)

       
        Dim crid As String
        crid = Request.QueryString("crid")
        If Not crid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [cvresume_master] Where crid='" + crid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then

                usernamel.Text = dr("fullname").ToString()
                emailidl.Text = dr("emailid").ToString()
                contactnol.Text = dr("contactnumber").ToString()
                educationl.Text = dr("education").ToString()
                interestsl.Text = dr("interests").ToString()
                referncesl.Text = dr("reference").ToString()
                qualificationl.Text = dr("qualification").ToString()
                addressl.Text = dr("address").ToString()
                profilel.Text = dr("profile").ToString()
                websitel.Text = dr("website").ToString()

            Else


                '  lblnodata.Text = "*No Data Found!"
            End If
        End If
        'data.Visible = False
        ' Button1.Visible = False
    End Function
End Class
