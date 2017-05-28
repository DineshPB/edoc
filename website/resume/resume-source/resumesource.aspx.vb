Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Partial Class website_resume_resume_source_resumesource
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim str As String
        str = "Data Source=.\SQLEXPRESS;AttachDbFilename=H:\edoccreator\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Dim cn As New SqlConnection(str)
        Dim q As String = "Select * from [cvr] Where fullname='" + data.Text + "'"
        Dim cmd As New SqlCommand(q, cn)
        cn.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read() Then

            usernamel.Text = dr("fullname").ToString()
            emailidl.Text = dr("emailid").ToString()
            contactnol.Text = dr("contactno").ToString()
            addressl.Text = dr("address").ToString()
            cn.Close()
        Else
            lblnodata.Text = "*No Data Found!"
        End If
    End Sub
End Class
