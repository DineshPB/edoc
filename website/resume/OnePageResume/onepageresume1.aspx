<%@ Page Language="VB" AutoEventWireup="false" EnableEventValidation="false" CodeFile="onepageresume1.aspx.vb"
    Inherits="website_resume_OnePageResume_onepageresume" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
    <style>*
{
    margin: 0;
    padding: 0;
    }
h1
{
    margin: 0 0 16px 0;
    padding: 0 0 16px 0;
    font-size: 42px;
    font-weight: bold;
    letter-spacing: -2px;
    border-bottom: 1px solid #999;
}
p
{
    margin: 0 0 16px 0;
}
a
{
    color: #999;
    text-decoration: none;
    border-bottom: 1px dotted #999;
}
#objective p
{
    font-family: Georgia, Serif;
    font-style: italic;
    color: #666;
}
.clear
{
    clear: both;
}
dd.clear
{
    float: none;
    margin: 0;
    height: 15px;
}
dd
{
    width: 600px;
    float: right;
}
dt
{
    font-style: italic;
    font-weight: bold;
    font-size: 18px;
    text-align: right;
    padding: 0 26px 0 0;
    width: 150px;
    float: left;
    height: 100px;
    border-right: 1px solid #999;
}
h2
{
    font-size: 20px;
    margin: 0 0 6px 0;
    position: relative;
}
h2 span
{
    position: absolute;
    bottom: 0;
    right: 0;
    font-style: italic;
    font-family: Georgia, Serif;
    font-size: 16px;
    color: #999;
    font-weight: normal;
}
ul
{
    margin: 0 0 32px 17px;
}
body
{
    font: 16px Helvetica, Sans-Serif;
    line-height: 24px;
    background: url(images/noise.jpg);
}
.clear
{
    clear: both;
}
#page-wrap
{
    width: 800px;
    margin: 40px auto 60px;
}
#pic
{
    float: right;
    margin: -30px 0 0 0;
}

h2
{
    font-size: 20px;
    margin: 0 0 6px 0;
    position: relative;
}
h2 span
{
    position: absolute;
    bottom: 0;
    right: 0;
    font-style: italic;
    font-family: Georgia, Serif;
    font-size: 16px;
    color: #999;
    font-weight: normal;
}

a:hover
{
    border-bottom-style: solid;
    color: black;
}
ul
{
    margin: 0 0 32px 17px;
}
#objective
{
    width: 500px;
    float: left;
}
#objective p
{
    font-family: Georgia, Serif;
    font-style: italic;
    color: #666;
}
dt
{
    font-style: italic;
    font-weight: bold;
    font-size: 18px;
    text-align: right;
    padding: 0 26px 0 0;
    width: 150px;
    float: left;
    height: 100px;
    border-right: 1px solid #999;
}
dd
{
    width: 600px;
    float: right;
}
dd.clear
{
    float: none;
    margin: 0;
    height: 15px;
}
</style>
    <script type="text/javascript">
        var doc = new jsPDF();
        var specialElementHandlers = {
            '#editor': function (element, renderer) {
                return true;
            }
        };

        //$('#create_pdf').click(function () {
        function print1() {
            //            debugger;
            //            doc.fromHTML($('#page-wrap').html(), 15, 15, {
            //                'width': 170,
            //                'elementHandlers': specialElementHandlers
            //            });
            //            var name = $('#usernamel')
            //            doc.save('sample-file.pdf');
            window.print();
        }
        //});
    </script>
</head>
<body>
    <form id="form1" runat="server" class="form">
    
        <asp:Button ID="btn1" Text="Print" runat="server" OnClientClick="return PrintPanel();"
            Height="171px" Width="304px" />
        <asp:Panel ID="pnlContents" runat="server">
            <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
            <title>One Page Resume</title>
            <%--<div>
                <div class="ui button aligned center teal" id="Div1">
                    Create PDF</div>
                <button id="create_pdf" value="download to pdf">
                    download to pdf</button>
                <asp:Button ID="Button2" runat="server" Text="pdf" />
                <asp:TextBox ID="data" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="show" OnClientClick="print1(); return false;"
                    autopostback="false" />
                <asp:Label ID="lblnodata" runat="server"></asp:Label></div>--%>
            <div id="page-wrap">
                <img id="pic" alt="Photo of Cthulu" src="../../photo_0162971825fchnni.jpg" />
                <div id="contact-info" class="vcard">
                    <!-- Microformats! -->
                    <h1 class="fn">
                        <asp:Literal ID="usernamel" runat="server" Mode="PassThrough"></asp:Literal>
                    </h1>
                    <p>
                        <asp:Literal ID="addressl" runat="server" Mode="PassThrough"></asp:Literal>
                    </p>
                    <p>
                        Websites:
                        <asp:Literal ID="websitel" runat="server" Mode="PassThrough"></asp:Literal>
                        <br />
                        <p>
                            Cell:
                            <asp:Literal ID="contactnol" runat="server" Mode="PassThrough"></asp:Literal>
                            <br />
                            Email:
                            <asp:Literal ID="emailidl" runat="server" Mode="PassThrough"></asp:Literal>
                            &nbsp;</p>
                </div>
                <div id="objective">
                    <p>
                        <asp:Literal ID="profilel" runat="server"></asp:Literal>
                    </p>
                </div>
                <div class="clear">
                </div>
                <dl>
                    <dd class="clear">
                    </dd>
                    <dt>Education</dt>
                    <dd>
                        <h2>
                            Education</h2>
                        <p>
                            <asp:Literal ID="educationl" runat="server" Mode="PassThrough"></asp:Literal>
                        </p>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>Qualifications</dt>
                    <dd>
                        <h2>
                            Qualifications</h2>
                        <p>
                            <asp:Literal ID="qualificationl" runat="server" Mode="PassThrough"></asp:Literal>
                        </p>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>Experience</dt>
                    <dd>
                        <h2>
                            Experience</h2>
                        <asp:Literal ID="workexperiencel" runat="server" Mode="PassThrough"></asp:Literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>Hobbies</dt>
                    <dd>
                        <h2>
                            Hobbies</h2>
                    </dd>
                    <dd>
                        <asp:Literal ID="interestsl" runat="server" Mode="PassThrough"></asp:Literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                    <dt>References</dt>
                    <dd>
                        <h2>
                            References</h2>
                    </dd>
                    <dd>
                        <asp:Literal ID="referncesl" runat="server" Mode="PassThrough"></asp:Literal>
                    </dd>
                    <dd class="clear">
                    </dd>
                </dl>
                <div class="clear">
                </div>
            </div>
   </asp:Panel>
    </form>
</body>
<script type="text/javascript">
    function PrintPanel() {
        var panel = document.getElementById("<%=pnlContents.ClientID %>");
        var printWindow = window.open('', '', 'height=400,width=800');
        printWindow.document.write('<html><head>');
        printWindow.document.write('<style></style>');
        printWindow.document.write('</head><body >');
        printWindow.document.write(panel.innerHTML);
        printWindow.document.write('</body></html>');
        printWindow.document.close();
        setTimeout(function () {
            printWindow.print();
        }, 50);
        return false;
    }
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
            iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:600px');
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
