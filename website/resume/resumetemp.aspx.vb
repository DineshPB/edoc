Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_resume_resumetemp
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim crid As String
        crid = Request.QueryString("crid")

        ' Dim a = Request.Cookies()
        '  If Request.Cookies("Cookie1") IsNot Nothing Then
        'Dim cookieName = Request.Cookies("Cookie1")
        'usernamel.Text = cookieName.Values.Get("fullname")
        'addressl.Text = cookieName.Values.Get("address")

        'Response.Write(cookieName.Values.Get("fullname"))
        'cookieName.Values.Get("fullname")
        'emailidl.Text = cookieName.Values.Get("emailid")
        'contactnol.Text = cookieName.Values.Get("contactnumber")
        ''lwebsitel.Text = cookieName.Values.Get("website")
        'cookieName.Values.Get("address")
        'educationl.Text = cookieName.Values.Get("education")
        'qualificationl.Text = cookieName.Values.Get("qualification")
        'workexperiencel.Text = cookieName.Values.Get("workexp")
        'referncesl.Text = cookieName.Values.Get("reference")
        'interestsl.Text = cookieName.Values.Get("interests")
        'profilel.Text = cookieName.Values.Get("profile")
        ' Else
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                'Dim crid As String
                crid = Request.QueryString("crid")
                ' Response.Write(crid)
                SelecUserData(Session("userid"))
            End If
        End If
        ' End If

    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim crid As String
        crid = Request.QueryString("crid")
        'Response.Write(crid)

        If Not crid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [cvresume_master] Where Userid='" & Session("UserID") & "' And crid='" + crid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                usernamel.Text = dr("fullname").ToString()
                profilel.Text = dr("profile").ToString()
                emailidl.Text = dr("emailid").ToString()
                contactnol.Text = dr("contactnumber").ToString
                ' websitel.Text = dr("website").ToString()
                addressl.Text = dr("address").ToString()
                educationl.Text = dr("education").ToString()
                qualificationl.Text = dr("qualification").ToString()
                workexperiencel.Text = dr("workexp").ToString()
                interestsl.Text = dr("interests").ToString()
                referncesl.Text = dr("reference").ToString()

            End If

        Else

        End If
        Return Nothing
    End Function
End Class
