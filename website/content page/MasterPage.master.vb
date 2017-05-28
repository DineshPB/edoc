
Partial Class website_MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("userid") Is Nothing Then
            hdn.Value = "0"
        Else
            hdn.Value = "1"
        End If
    End Sub
End Class

