
Partial Class website_admin_adminlogout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("aUserid") = Nothing
        Session("aname") = Nothing
        Response.Redirect("~/website/admin/adminlogin.aspx")
    End Sub
End Class
