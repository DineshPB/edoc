Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_content_page_cvcontent
    Inherits System.Web.UI.Page


    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Not Session("userid") Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim type As String = "Cv"
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            ' & Convert.ToInt32(Session("userid")) & "
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" & txtFirstName.Text & "','" & txtLastName.Text & "','" & txtemailid.Text & "','" & txtpassword.Text & "'," & intGender & ",'" & DateTime.Now.ToString() & "')"
            cmd.CommandText = "Insert into [cvresume_master] (Userid,fullname,emailid,contactnumber,website,address,education,qualification,interests,reference,type) values ('" & Convert.ToInt32(Session("userid")) & "','" & txtfullname.Text & "','" & txtemailid.Text & "'," & txtcontactno.Text & ",'" & txtwebsite.Text & "','" & txtaddress.Text & "','" & txteducation.Text & "','" & txtqualification.Text & "','" & txtInterest.Text & "','" & txtreference.Text & "','" + type + "')"
            cmd.ExecuteNonQuery()
            Response.Redirect("~/website/content page/SummaryDocs.aspx")
        Else

            'Create a new cookie, passing the name into the constructor
            Dim cookie As New HttpCookie("Cookie1")
            'Set the cookies value

            cookie.Values.Add("fullname", txtfullname.Text)
            cookie.Values.Add("emailid", txtemailid.Text)
            cookie.Values.Add("contactnumber", txtcontactno.Text)
            cookie.Values.Add("website", txtwebsite.Text)
            cookie.Values.Add("address", txtaddress.Text)
            cookie.Values.Add("education", txteducation.Text)
            'cookie.Values.Add("qualification", txtqualification.Text)
            'cookie.Values.Add("workexp", txtworkexpereince.Text)
            ' cookie.Values.Add("reference", txtreference.Text)
            'cookie.Values.Add("interests", txtInterest.Text)
            'cookie.Values.Add("profile", uprofile.Text)
            'Set the cookie to expire in 1 minute
            Dim dtNow As DateTime = DateTime.Now
            Dim tsMinute As New TimeSpan(0, 0, 1, 0)
            cookie.Expires = dtNow.Add(tsMinute)

            'Response.Cookies("userName").Value = "mike"
            'Response.Cookies("userName").Expires = DateTime.Now.AddDays(1)
            Response.Cookies.Add(cookie)
            Response.Write(cookie.Name.ToString())
            Response.Redirect("~/website/cv/CV-Template/cvtemp.aspx")
        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            Else

                Response.Redirect("~/website/login.aspx")
            End If
            'Else
            '    Response.Redirect("~/website/login.aspx")
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim crid As String
        crid = Request.QueryString("crid")

        Dim type As String = "cv"
        If Not crid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [cvresume_master] Where Userid='" & Session("userid") & "' And crid='" + crid + "' And type='" + type + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                txtfullname.Text = dr("fullname").ToString()
                uprofile.Text = dr("profile").ToString()
                txtemailid.Text = dr("emailid").ToString()
                txtcontactno.Text = dr("contactnumber").ToString
                txtwebsite.Text = dr("website").ToString()
                txtaddress.Text = dr("address").ToString()
                txteducation.Text = dr("education").ToString()
                txtqualification.Text = dr("qualification").ToString()
                ' txtworkexpereince.Text = dr("workexp").ToString()
                txtInterest.Text = dr("interests").ToString()
                txtreference.Text = dr("reference").ToString()

                btnSave.Visible = False
                btnupdate.Visible = True
            End If

        Else
            btnupdate.Visible = False
            btnSave.Visible = True
        End If
        Return Nothing
    End Function

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            If Not Session("userid") Is Nothing Then
                Dim crid As String
                crid = Request.QueryString("crid")
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Update [cvresume_master] Set fullname='" & txtfullname.Text & "',profile='" & uprofile.Text & "',emailid='" & txtemailid.Text & "',contactnumber='" & txtcontactno.Text & "',website='" & txtwebsite.Text & "',address='" & txtaddress.Text & "',education='" & txteducation.Text & "',qualification='" & txtqualification.Text & "',reference='" & txtreference.Text & "' Where Userid='" & Session("Userid") & "' And crid='" + crid + "'"
                cmd.ExecuteNonQuery()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")
            End If
        Catch ex As Exception

        End Try

    End Sub
End Class
