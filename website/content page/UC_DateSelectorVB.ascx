<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UC_DateSelectorVB.ascx.vb"
    Inherits="UC_DateSelectorVB" %>
<link href="../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"
    type="text/css" />
<!-- Font Awesome -->
<link href="../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="../../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link href="../../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
<!-- Custom styling plus plugins -->
<link href="../../build/css/custom.min.css" rel="stylesheet">
<link href="../../build/css/mycustom.css" rel="stylesheet" type="text/css" />
<link href="../../build/css/jquery-ui.css.css" rel="stylesheet" type="text/css" />
<link href="../../build/css/chat.css" rel="stylesheet" type="text/css" />
Year:<asp:DropDownList ID="ddlYear" runat="server" class="btn btn-default dropdown-toggle"
    onchange="PopulateDays()" />
Month:<asp:DropDownList ID="ddlMonth" runat="server" class="btn btn-default dropdown-toggle"
    onchange="PopulateDays()">
    <asp:ListItem>
    January</asp:ListItem>
    <asp:ListItem>February</asp:ListItem>
</asp:DropDownList>
Day:<asp:DropDownList ID="ddlDay" class="btn btn-default dropdown-toggle" runat="server" />
<br />
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Required" ClientValidationFunction="Validate" />
<script type="text/javascript">
    function Validate(sender, args) {
        var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
        var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
        var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
        args.IsValid = (ddlDay.selectedIndex != 0 && ddlMonth.selectedIndex != 0 && ddlYear.selectedIndex != 0)
    }
    function PopulateDays() {
        var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
        var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
        var ddlDay = document.getElementByI + d("<%=ddlDay.ClientID%>");
        var y = ddlYear.options[ddlYear.selectedIndex].value;
        var m = ddlMonth.options[ddlMonth.selectedIndex].value != 0;
        if (ddlMonth.options[ddlMonth.selectedIndex].value != 0 && ddlYear.options[ddlYear.selectedIndex].value != 0) {
            var dayCount = 32 - new Date(ddlYear.options[ddlYear.selectedIndex].value, ddlMonth.options[ddlMonth.selectedIndex].value - 1, 32).getDate();
            ddlDay.options.length = 0;
            AddOption(ddlDay, "DD", "0");
            for (var i = 1; i <= dayCount; i++) {
                AddOption(ddlDay, i, i);
            }
        }
    }
    function AddOption(ddl, text, value) {
        var opt = document.createElement("OPTION");
        opt.text = text;
        opt.value = value;
        ddl.options.add(opt);
    }
</script>
