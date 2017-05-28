
Partial Class website_SinglePro_logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("userid") = Nothing
        Session("name") = Nothing
        Response.Redirect("~/website/SinglePro/home.aspx")
    End Sub
End Class
