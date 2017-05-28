Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_content_page_applicationcontent
    Inherits System.Web.UI.Page
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Not Session("Userid") Is Nothing Then
            'Dim strSendDate As Date
            'strSendDate = Convert.ToDateTime(txtdate)

            Dim cmd As New SqlCommand
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            ' & Convert.ToInt32(Session("userid")) & "
            'cmd.CommandText = "Insert into user(firstname,lastname,emailid,password,gender,enterdate) values ('" & txtFirstName.Text & "','" & txtLastName.Text & "','" & txtemailid.Text & "','" & txtpassword.Text & "'," & intGender & ",'" & DateTime.Now.ToString() & "')"
            cmd.CommandText = "Insert into application_master(Userid,fullname,subject,heading,sender,receiver,firstparagraph,secondparagraph,thirdparagraph,date) values('" & Convert.ToInt32(Session("userid")) & "','" & txtfullname.Text & "','" & txtsubject.Text & "','" & txtheading.Text & "','" & txtsender.Text & "','" & txtreceiver.Text & "','" & txtfirstpara.Text & "','" & txtsecondpara.Text & "','" & txtthirdpara.Text & "','" & ucDateSelector.SelectedDate & "')"
            cmd.ExecuteNonQuery()
            Response.Redirect("~/website/content page/SummaryDocs.aspx")
        Else

        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim applicationid As String
        applicationid = Request.QueryString("applicationid")
       
        If Not applicationid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [application_master] Where Userid='" & Session("userid") & "' And applicationid='" + applicationid + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                txtfullname.Text = dr("fullname").ToString()
                txtdate.Text = dr("date").ToString()
                txtsubject.Text = dr("subject").ToString()
                txtheading.Text = dr("heading").ToString
                txtreceiver.Text = dr("receiver").ToString()
                txtfirstpara.Text = dr("firstparagraph").ToString()
                txtsecondpara.Text = dr("secondparagraph").ToString()
                txtthirdpara.Text = dr("thirdparagraph").ToString()
                txtsender.Text = dr("sender").ToString()

                txtdate.Visible = True
                btnSave.Visible = False
                btnupdate.Visible = True
            End If

        Else
            txtdate.Visible = False
            btnupdate.Visible = False
            btnSave.Visible = True
        End If
        Return Nothing
    End Function

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            If Not Session("userid") Is Nothing Then
                Dim applicationid As String
                applicationid = Request.QueryString("applicationid")
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Update [application_master] Set sender='" & txtsender.Text & "',receiver='" & txtreceiver.Text & "',fullname='" & txtfullname.Text & "',subject='" & txtsubject.Text & "',heading='" & txtheading.Text & "',firstparagraph='" & txtfirstpara.Text & "',secondparagraph='" & txtsecondpara.Text & "',thirdparagraph='" & txtthirdpara.Text & "',date='" & ucDateSelector.SelectedDate & "' Where Userid='" & Session("Userid") & "' And applicationid='" + applicationid + "'"
                cmd.ExecuteNonQuery()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")

            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
