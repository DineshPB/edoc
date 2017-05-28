
Partial Class website_admin_AdminMasterPage
    Inherits System.Web.UI.MasterPage

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("aUserid") Is Nothing Then
            Response.Redirect("registeradmin.aspx")

        End If
    End Sub
End Class

