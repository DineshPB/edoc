<%@ Page Language="VB" AutoEventWireup="false" EnableEventValidation="false" CodeFile="onepageresume.aspx.vb"
    Inherits="website_resume_OnePageResume_onepageresume" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="//cdn.rawgit.com/niklasvh/html2canvas/0.5.0-alpha2/dist/html2canvas.min.js"
        type="text/javascript"></script>
    <script type="text/javascript" src="//cdn.rawgit.com/MrRio/jsPDF/master/dist/jspdf.min.js"
        type="text/javascript"></script>
    <link href="onepageresume.css" rel="stylesheet" type="text/css" />
    <script src="../../js/app.js" type="text/javascript"></script>
    <script src="../../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../../build/js/html2pdf.js" type="text/javascript"></script>
    
</head>
<body >
    <form runat="server" id="f1">
  <%--  <asp:Button ID="btn1" Text="Print" runat="server" 
        OnClientClick="return PrintPanel();"  />--%>
    <asp:Panel ID="pnlContents" runat="server">
      
            <div>
                <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
                <title>One Page Resume</title>
                <%--<div>
                    <div class="ui button aligned center teal" id="div1">
                create pdf</div>
            <button id="create_pdf" value="download to pdf" onclick="return create_pdf_onclick()">
                download to pdf</button>
            <asp:button id="button2" runat="server" text="pdf" />
            <asp:textbox id="data" runat="server"></asp:textbox>
            <asp:button id="button1" runat="server" text="show" onclientclick="create_pdf_onclick(); return false;" />
            <asp:button id="btnexport" text="export to image" runat="server" usesubmitbehavior="false"
                onclick="exporttoimage" onclientclick="return converttoimage(this)" />
            <asp:label id="lblnodata" runat="server"></asp:label></div>--%>
            <div id="page-wrap">
                fsdfsdfsdk sffsfsdfds
                <img id="pic" alt="photo of cthulu" src="../../photo_0162971825fchnni.jpg" />
                <div id="contact-info" class="vcard">
                    <!-- microformats! -->
                    <h1 class="fn">
                        <asp:literal id="usernamel" runat="server" mode="passthrough"></asp:literal>
                    </h1>
                    <p>
                        <asp:literal id="addressl" runat="server" mode="passthrough"></asp:literal>
                    </p>
                    <p>
                        websites:
                        <asp:literal id="websitel" runat="server" mode="passthrough"></asp:literal>
                        <br />
                        <p>
                            cell:
                            <asp:literal id="contactnol" runat="server" mode="passthrough"></asp:literal>
                            <br />
                            email:
                            <asp:literal id="emailidl" runat="server" mode="passthrough"></asp:literal>
                            &nbsp;</p>
                </div>
                <div id="objective">
                    <p>
                        <asp:literal id="profilel" runat="server"></asp:literal>
                    </p>
                </div>
                <div class="clear">
                </div>
                <dl>
                    <dd class="clear">
                    </dd>
                    <dt>education</dt>
                    <dd>
                        <h2>
                            education</h2>
                        <p>
                            <asp:literal id="educationl" runat="server" mode="passthrough"></asp:literal>
                        </p>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>qualifications</dt>
                    <dd>
                        <h2>
                            qualifications</h2>
                        <p>
                            <asp:literal id="qualificationl" runat="server" mode="passthrough"></asp:literal>
                        </p>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>experience</dt>
                    <dd>
                        <h2>
                            experience</h2>
                        <asp:literal id="workexperiencel" runat="server" mode="passthrough"></asp:literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>hobbies</dt>
                    <dd>
                        <h2>
                            hobbies</h2>
                    </dd>
                    <dd>
                        <asp:literal id="interestsl" runat="server" mode="passthrough"></asp:literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>references</dt>
                    <dd>
                        <h2>
                            references</h2>
                    </dd>
                    <dd>
                        <asp:literal id="referncesl" runat="server" mode="passthrough"></asp:literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                </dl>
                <div class="clear">
                </div>
            </div>
            
                </div>
           
    </asp:Panel>
    </form>
</body>
<script type="text/javascript">
//    function PrintPanel() {
//        var panel = document.getElementById("<%=pnlContents.ClientID %>");
//        var printWindow = window.open('', '', 'height=400,width=1000');
//        printWindow.document.write('<html><head>');
//        printWindow.document.write('<style></style>');
//        printWindow.document.write('</head><body >');
//        printWindow.document.write(panel.innerHTML);
//        printWindow.document.write('</body></html>');
//        printWindow.document.close();
//        setTimeout(function () {
//            printWindow.print();
//        }, 50);
//        return false;
//    }
</script>

<script type="text/javascript">
    //function create_pdf_onclick() {
    alert("a")
    var pdf = new jsPDF('p', 'pt', 'letter');
    var canvas = pdf.canvas;
    var width = 600;
    //canvas.width=8.5*72;
    document.body.style.width = width + "px";

    html2canvas(document.body, {
        canvas: canvas,
        onrendered: function (canvas) {
            var iframe = document.createElement('iframe');
            iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:800px');
            document.body.appendChild(iframe);
            iframe.src = pdf.output('datauristring');

            //var div = document.createElement('pre');
            //div.innerText=pdf.output();
            //document.body.appendChild(div);
        }
    });
    //}
   
</script>
</html>
