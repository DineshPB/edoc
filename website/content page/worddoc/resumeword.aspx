<%@ Page Language="VB" AutoEventWireup="false" CodeFile="resumeword.aspx.vb" Inherits="website_content_page_worddoc_resumeword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="../js/app.js" type="text/javascript"></script>
    <script src="../../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../../build/js/html2pdf.js" type="text/javascript"></script>
    <style type="text/css">
    .page {    size: 21cm 29.7cm; margin: 30mm 45mm 30mm 45mm;}
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
        .style4
        {
            width: 323px;
            height: 41px;
        }
        .style5
        {
            width: 1053px;
            height: 41px;
        }
        .style6
        {
            height: 41px;
        }
        .style10
        {
            width: 323px;
            height: 27px;
        }
        .style11
        {
            width: 1053px;
            height: 27px;
        }
        .style12
        {
            height: 27px;
        }
        .style13
        {
            width: 323px;
            height: 68px;
        }
        .style14
        {
            width: 1053px;
            height: 68px;
        }
        .style15
        {
            height: 68px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
   <asp:Button ID="Button1" runat="server" Text="Back to previous page" 
        PostBackUrl="~/website/content page/SummaryDocs.aspx" />
     <a class="word-export" href="javascript:void(0)">Export as .doc </a>
  <%--   <asp:Button ID="redirect" runat="server" Text="Back to My documents" PostBackUrl="~/website/content page/SummaryDocs.aspx" />--%>
   
    <div id="export-content" class="page" >
    
        <table align="center" >
            <tr>
                <td class="style4" >
                    </td>
                <td class="style5">
                        <h1><b><asp:Literal ID="usernamel" runat="server" Mode="PassThrough"></asp:Literal></b></h1>
                    </td>
                <td class="style6" colspan="0.5px">
                        <br/></td>
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2">
                        <asp:Literal ID="addressl" runat="server"></asp:Literal>
                    </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style14">
                        </td>
                <td class="style15" >
                    e:<asp:Literal ID="emailidl" runat="server" 
                                Mode="PassThrough"></asp:Literal>
                        <br />
                    w: 
                    <asp:Literal ID="websitel" runat="server" 
                                Mode="PassThrough"></asp:Literal>
                    <br />
                     m:<asp:Literal ID="contactnol" runat="server" 
                                Mode="PassThrough"></asp:Literal>
                        </td>
            </tr>
            <tr>
                <td class="style10">
                   <h4> Personal Profile</h4></td>
                <td class="style11">
                    </td>
                <td class="style12" >
                    </td>
            </tr>
            <tr>
                <td class="style3" >
                    </td>
                <td class="style2">
                    <asp:Literal ID="profilel" runat="server"></asp:Literal>
                    </td>
                <td  >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    <h4>Qualifications</h4></td>
            </tr>
            <tr>
                <td class="style3" >
                    &nbsp;</td>
                <td class="style2">
                                            <asp:Literal ID="qualificationl" runat="server" Mode="PassThrough"></asp:Literal>
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
                    <h4>Interests</h4></td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                                            <asp:Literal ID="interestsl" runat="server" Mode="PassThrough"></asp:Literal>
			    </td>
                <td >
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    <h4>Education</h4></td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                     </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                                    <asp:Literal ID="educationl" runat="server" Mode="PassThrough"></asp:Literal>
                    </td>
                <td  >
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    <h4>References</h4></td>
                <td class="style2">
                    </td>
                <td class="style1" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                                            <asp:Literal ID="referncesl" runat="server" Mode="PassThrough"></asp:Literal>
                    </td>
                <td class="style1" >
                    &nbsp;</td>
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
<%--<script type="text/javascript">
    //function create_pdf_onclick() {
    alert("a")
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
    </script>--%>
</body>
</html>
