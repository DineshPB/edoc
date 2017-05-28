Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_content_page_noticecontent
    Inherits System.Web.UI.Page
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try
            If Not Session("userid") Is Nothing Then
                Dim cmd As New SqlCommand
                Dim strDate As String
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text

                cmd.CommandText = "Insert into [notice_master](Userid,fullname,subject,heading,sender,receiver,firstparagraph,secondparagraph,thirdparagraph,date) values(" & Convert.ToInt32(Session("userid")) & ",'" & txtfullname.Text & "','" & txtsubject.Text & "','" & txtheading.Text & "','" & txtsender.Text & "','" & txtreceiver.Text & "','" & txtfirstpara.Text & "','" & txtsecondpara.Text & "','" & txtthirdpara.Text & "','" + ucDateSelector.SelectedDate + "' )"
                cmd.ExecuteNonQuery()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")
            Else

            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim noticeid As String
        noticeid = Request.QueryString("noticeid")


        If Not noticeid Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [notice_master] Where Userid='" & Session("userid") & "' And noticeid='" + noticeid + "'"
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
                txtdate.Text = dr("date").ToString()
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
                Dim noticeid As String
                noticeid = Request.QueryString("noticeid")
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Update [notice_master] Set sender='" & txtsender.Text & "',receiver='" & txtreceiver.Text & "',fullname='" & txtfullname.Text & "',subject='" & txtsubject.Text & "',heading='" & txtheading.Text & "',firstparagraph='" & txtfirstpara.Text & "',secondparagraph='" & txtsecondpara.Text & "',thirdparagraph='" & txtthirdpara.Text & "',date='" +
 ucDateSelector.SelectedDate + "' Where Userid='" & Session("Userid") & "' And noticeid='" + noticeid + "'"
                cmd.ExecuteNonQuery()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")
            End If
        Catch ex As Exception

        End Try
    End Sub

    
End Class
