<%@ Page Language="VB" AutoEventWireup="false" CodeFile="letterpdf.aspx.vb" Inherits="website_content_page_pdf_letterpdf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="../../js/app.js" type="text/javascript"></script>
    <script src="../../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../../build/js/html2pdf.js" type="text/javascript"></script>
    <style type="text/css">
   <%-- .page {    size: 21cm 29.7cm; margin: 30mm 45mm 30mm 45mm;--%> }
        .style1
        {
            width: 64px;
        }
        .style2
        {
            width: 1053px;
        }
        .style3
        {
            width: 323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <%--
     <a class="word-export" href="javascript:void(0)">Export as .doc </a>--%>
  <%--   <asp:Button ID="redirect" runat="server" Text="Back to My documents" PostBackUrl="~/website/content page/SummaryDocs.aspx" />--%>
   
    <div id="export-content" class="page">
    
        <table >
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2">
                    </td>
                <td>
                    <asp:Label ID="Adress_1" runat="server" Text="Adress line 1"></asp:Label><br/></td>
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2">
                    </td>
                <td >
                    <asp:Label ID="Adress_2" runat="server" Text="Adress line 2"></asp:Label></td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td >
                     <asp:Label ID="Adress_3" runat="server" Text="Adress line 3"></asp:Label></td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td  >
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td >
                    <asp:Label ID="Date_label" runat="server" Text="User date"></asp:Label></td>
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2">
                    </td>
                <td  >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td >
                    </td>
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2"><b>
                    <asp:Label ID="Subject_label" runat="server" Text="Subejct Enter Here"></asp:Label></b></td>
                <td >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="toname" runat="server" Text=""></asp:Label>
                </td>
                <td class="style2">
                    </td>
                <td  style="text-align:right;width:1020px;>
                     </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    </td>
                <td >
                    </td>
            </tr>
            <tr>
                <td >
                    </td>
                <td>
                    </td>
                <td >
                     </td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    </td>
                <td >
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    <asp:Label ID="para1" runat="server"></asp:Label></td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                   <asp:Label ID="para2" runat="server"></asp:Label></td>
                <td >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td >
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    <asp:Label ID="para3" runat="server"></asp:Label>
                </td>
                <td>
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td  >
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
                <td class="style1" >
                    <asp:Label ID="Greetings_label" runat="server" Text="Greetings"></asp:Label>
                </td>
            </tr>
        </table>
    
    
    </div>
    </form>
    <script src="../../../build/js/jquery.min.js" type="text/javascript"></script>

      <script src="../../../build/js/FileSaver.js" type="text/javascript"></script>
    <script src="../../../build/js/jquery.wordexport.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $("a.word-export").click(function (event) {
                $("#export-content").wordExport();
            });
        });
</script>
<script type="text/javascript">
    //function create_pdf_onclick() {
   
    var pdf = new jsPDF('p', 'pt', 'A3');
    var canvas = pdf.canvas;
    var width = 900;
    canvas.width = 8.5 * 72;
    document.body.style.width = width + "px";

    html2canvas(document.body, {
        canvas: canvas,
        onrendered: function (canvas) {
            var iframe = document.createElement('iframe');
            iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:50%');
            document.body.appendChild(iframe);
            iframe.src = pdf.output('datauristring');

            //                var div = document.createElement('pre');
            //                div.innerText=pdf.output();
            //                document.body.appendChild(div);
        }
    });
    //}
    </script>
</body>
</html>
