
Partial Class UC_DateSelectorVB
    Inherits System.Web.UI.UserControl
    Private Property Day() As Integer
        Get
            If (Not (Request.Form(ddlDay.UniqueID)) Is Nothing) Then
                Return Integer.Parse(Request.Form(ddlDay.UniqueID))
            Else
                Return Integer.Parse(ddlDay.SelectedItem.Value)
            End If
        End Get
        Set(ByVal value As Integer)
            Me.PopulateDay()
            ddlDay.ClearSelection()
            ddlDay.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Private Property Month() As Integer
        Get
            Return Integer.Parse(ddlMonth.SelectedItem.Value)
        End Get
        Set(ByVal value As Integer)
            Me.PopulateMonth()
            ddlMonth.ClearSelection()
            ddlMonth.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Private Property Year() As Integer
        Get
            Return Integer.Parse(ddlYear.SelectedItem.Value)
        End Get
        Set(ByVal value As Integer)
            Me.PopulateYear()
            ddlYear.ClearSelection()
            ddlYear.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Public Property SelectedDate() As DateTime
        Get
            Try
                Return DateTime.Parse(Me.Month & "/" & Me.Day & "/" & Me.Year)
            Catch ex As Exception
                Return DateTime.MinValue
            End Try
        End Get
        Set(ByVal value As DateTime)
            If Not value.Equals(DateTime.MinValue) Then
                Me.Year = value.Year
                Me.Month = value.Month
                Me.Day = value.Day
            End If
        End Set
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If (Me.SelectedDate = DateTime.MinValue) Then
                Me.PopulateYear()
                Me.PopulateMonth()
                Me.PopulateDay()
            End If
        Else
            If (Not (Request.Form(ddlDay.UniqueID)) Is Nothing) Then
                Me.PopulateDay()
                ddlDay.ClearSelection()
                ddlDay.Items.FindByValue(Request.Form(ddlDay.UniqueID)).Selected = True
            End If
        End If
    End Sub

    Private Sub PopulateDay()
        ddlDay.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "DD"
        lt.Value = "0"
        ddlDay.Items.Add(lt)
        Dim days As Integer = DateTime.DaysInMonth(Me.Year, Me.Month)
        Dim i As Integer = 1
        Do While (i <= days)
            lt = New ListItem
            lt.Text = i.ToString
            lt.Value = i.ToString
            ddlDay.Items.Add(lt)
            i = (i + 1)
        Loop
        ddlDay.Items.FindByValue(DateTime.Now.Day.ToString).Selected = True
    End Sub

    Private Sub PopulateMonth()
        ddlMonth.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "MM"
        lt.Value = "0"
        ddlMonth.Items.Add(lt)
        Dim i As Integer = 1
        Do While (i <= 12)
            lt = New ListItem
            lt.Text = Convert.ToDateTime((i.ToString + "/1/1900")).ToString("MMMM")
            lt.Value = i.ToString
            ddlMonth.Items.Add(lt)
            i = (i + 1)
        Loop
        ddlMonth.Items.FindByValue(DateTime.Now.Month.ToString).Selected = True
    End Sub

    Private Sub PopulateYear()
        ddlYear.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "YYYY"
        lt.Value = "0"
        ddlYear.Items.Add(lt)
        Dim i As Integer = DateTime.Now.Year
        Do While (i >= 1950)
            lt = New ListItem
            lt.Text = i.ToString
            lt.Value = i.ToString
            ddlYear.Items.Add(lt)
            i = (i - 1)
        Loop
        ddlYear.Items.FindByValue(DateTime.Now.Year.ToString).Selected = True
    End Sub

End Class
