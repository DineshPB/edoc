
Partial Class website_CoockiesExample
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Create a new cookie, passing the name into the constructor
        Dim cookie As New HttpCookie("Cookie1")

        'Set the cookies value

        cookie.Values.Add("abc", NameField.Text)
        cookie.Values.Add("xyz", abc.Text)
        'Set the cookie to expire in 1 minute
        Dim dtNow As DateTime = DateTime.Now
        Dim tsMinute As New TimeSpan(0, 0, 1, 0)
        cookie.Expires = dtNow.Add(tsMinute)

        'Response.Cookies("userName").Value = "mike"
        'Response.Cookies("userName").Expires = DateTime.Now.AddDays(1)
        Response.Cookies.Add(cookie)
        Response.Write(cookie.Name.ToString())
        Response.Redirect("~/website/resume/OnePageResume/onepageresume.aspx")
    End Sub
End Class
