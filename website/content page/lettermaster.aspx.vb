Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class lettermaster
    Inherits System.Web.UI.Page
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Not Session("userid") Is Nothing Then

            'Dim strSendDate As DateTime
            'strSendDate = Convert.ToDateTime("txtdate.Text")

            Dim typel = "Formal"
            Dim salutationl = salutation.SelectedItem.Text
            Dim cmd As New SqlCommand()
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text

            'Dim Dt As Date = Convert.ToDateTime(txtdate.Text)
            'Dt = DateTime.Parse(txtdate.Text)
            ' + Convert.ToInt32(Session("userid")) + "
            '," + Convert.ToDateTime(txtdate.Text).Date + "
            'cmd.CommandText = "Insert into [letter_master](Userid,sender,receiver,subject,firstparagraph,secondparagraph,thirdparagraph,salutation,type,address1,address2,address3,senddate) values ('" & Convert.ToInt32(Session("userid")) & "','" + txtfrom.Text + "','" + name.Text + "','" + txtsubject.Text + "','" + txtfirstparagraph.Text + "','" + txtsecondparagraph.Text + "','" + txtthirdparagraph.Text + "','" + salutationl + "','" + typel + "','" + address.Text + "','" + address2.Text + "','" + address3.Text + "','" + Convert.ToDateTime(Dt) + "')"
            cmd.CommandText = "Insert into [letter_master](Userid,sender,receiver,subject,firstparagraph,secondparagraph,thirdparagraph,salutation,type,address1,address2,address3,senddate) values ('" & Convert.ToInt32(Session("userid")) & "','" + txtfrom.Text + "','" + name.Text + "','" + txtsubject.Text + "','" + txtfirstparagraph.Text + "','" + txtsecondparagraph.Text + "','" + txtthirdparagraph.Text + "','" + salutationl + "','" + typel + "','" + address.Text + "','" + address2.Text + "','" + address3.Text + "','" + ucDateSelector.SelectedDate + "') ; Select @@IDENTITY AS ReturnVal"
            cmd.ExecuteNonQuery()
            Response.Redirect("~/website/content page/SummaryDocs.aspx")
           
        Else

        End If
    End Sub
    Protected Sub salutation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles salutation.SelectedIndexChanged
        lbl.Text = salutation.SelectedItem.Text
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("userid") Is Nothing Then
                SelecUserData(Session("userid"))
            End If
        End If
    End Sub
    Public Function SelecUserData(ByVal UserID As Int32)
        Dim letter As String
        letter = Request.QueryString("letterid")
        Dim type As String = "Formal"
        If Not letter Is Nothing Then
            Dim cmd As New SqlCommand()
            Dim dt As New DataTable
            cmd.Connection = New DBConn().ConnOpen()
            cmd.CommandType = CommandType.Text
            cmd.CommandText = "Select * from [letter_master] Where Userid='" & Session("userid") & "' And letterid='" + letter + "'"
            Dim da As New SqlDataAdapter(cmd)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                txtfrom.Text = dr("sender").ToString()
                name.Text = dr("receiver").ToString()
                address.Text = dr("address1").ToString()
                address2.Text = dr("address2").ToString
                address3.Text = dr("address3").ToString()
                txtdate.Text = dr("senddate").ToString()
                txtsubject.Text = dr("subject").ToString()
                lbl.Text = dr("salutation").ToString()
                txtfirstparagraph.Text = dr("firstparagraph").ToString()
                txtsecondparagraph.Text = dr("secondparagraph").ToString()
                txtthirdparagraph.Text = dr("thirdparagraph").ToString()
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
                Dim letter As String
                letter = Request.QueryString("letterid")
                Dim cmd As New SqlCommand()
                cmd.Connection = New DBConn().ConnOpen()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "Update [letter_master] Set sender='" & txtfrom.Text & "',receiver='" & name.Text & "',address1='" & address.Text & "',address2='" & address2.Text & "',address3='" & address3.Text & "',subject='" & txtsubject.Text & "',firstparagraph='" & txtfirstparagraph.Text & "',secondparagraph='" & txtsecondparagraph.Text & "',thirdparagraph='" & txtthirdparagraph.Text & "',senddate='" + ucDateSelector.SelectedDate + "' Where Userid='" & Session("Userid") & "' And letterid='" + letter + "'"
                cmd.ExecuteNonQuery()
                Response.Redirect("~/website/content page/SummaryDocs.aspx")
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
