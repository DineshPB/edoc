<%@ Page Language="VB" AutoEventWireup="false" CodeFile="date.aspx.vb" Inherits="website_date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Display month &amp; year menus</title>
  <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">--%>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="../build/js/jquery-1.12.4.js" type="text/javascript"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../build/js/jquery-ui.js" type="text/javascript"></script>
                                          <script>
      $(function () {
          $("#datepicker").datepicker({
              changeMonth: true,
              changeYear: true,
               yearRange: '-100y:c+nn',
//               buttonImage: "/images/datepicker.gif",
          });
      });
  </script>
</head>
<body>
<form id="fa" runat="server">
<div id="1st">
 <asp:Label ID="l" runat="server"></asp:Label>
 <asp:Calendar runat="server" SelectionMode="DayWeek" ></asp:Calendar><p>Date: <%--<input type="text" id="datepicker">--%></p>
 </div>
 <div id="2nd">
 <%--<asp:TextBox ID="datepicker" runat="server"></asp:TextBox>--%></div>
 <div id="3s">
<input type="date" name="date" />
 <asp:TextBox ID="dcv" runat="server"></asp:TextBox>
 </div>
 </form>
</body>
</html>