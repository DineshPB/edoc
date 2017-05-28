<%@ Page Language="VB" AutoEventWireup="false" CodeFile="resumetemp.aspx.vb" Inherits="website_resume_resumetemp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <script src="../js/app.js" type="text/javascript"></script>
    <script src="../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../build/js/html2pdf.js" type="text/javascript"></script>
    <title></title>
    <link href="resumecs.css" rel="stylesheet" type="text/css" />
    <link href="resume.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
      
     <asp:Panel ID="pnlContents" runat="server">
    <div>
        
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
        <title></title>
        <meta content="text/html; charset=utf-8" http-equiv="content-type" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />
   <%--     <link href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css"
            media="all" rel="stylesheet" type="text/css" />--%>
        <link href="reset-fonts-grids.css" rel="stylesheet" type="text/css" />
        <link href="resume.css" media="all" rel="stylesbheet" type="text/css" />
        <div id="doc2" class="style1">
            <div id="inner">
                <div id="hd">
                    <div class="style1">
                        <div class="style1">
                            <h1 class="style1">
                                <asp:Literal ID="usernamel" runat="server" Mode="PassThrough"></asp:Literal>
                            </h1>
                            <h2 class="style1">
                                <asp:Literal ID="postionl" runat="server" Mode="PassThrough"></asp:Literal>
                            </h2>
                        </div>
                        <div class="style1">
                            <div class="style1">
                                <h3 class="style1">
                                    <asp:Literal ID="addressl" runat="server" Mode="PassThrough"></asp:Literal>
                                    <asp:Literal ID="emailidl" runat="server" Mode="PassThrough"></asp:Literal>
                                </h3>
                                <h3 class="style1">
                                    <asp:Literal ID="contactnol" runat="server" Mode="PassThrough"></asp:Literal>
                                    &nbsp;</h3>
                            </div>
                            <!--// .contact-info -->
                        </div>
                    </div>
                    <!--// .yui-gc -->
                </div>
                <div class="style1">
                    <div class="style1">
                        <h1 class="style1">
                            Profile</h1>
                    </div>
                    <div class="style1">
                        <div class="style1">
                            <h2 class="style1">
                            </h2>
                            <p class="style1">
                                <asp:Literal ID="profilel" runat="server" Mode="PassThrough"></asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>
                <!--// hd -->
                <div id="bd">
                    <div id="yui-main">
                        <div class="style1">
                            <div class="style1">
                                <div class="style1">
                                    <h1 class="style1">
                                        Education</h1>
                                </div>
                                <div class="style1">
                                    <p class="style1">
                                        <asp:Literal ID="educationl" runat="server" Mode="PassThrough"></asp:Literal>
                                    </p>
                                </div>
                                <!--// hd -->
                            </div>
                            <!--// .yui-gf -->
                            <div class="style1">
                                <div class="style1">
                                    <h1 class="style1">
                                        Qualifications</h1>
                                </div>
                                <div class="style1">
                                    <div class="style1">
                                        <h2 class="style1">
                                        </h2>
                                        <p class="style1">
                                            <asp:Literal ID="qualificationl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </p>
                                         <!--// yui-main -->
                                    </div>
                                    <div class="style1">
                                        <h1 class="style1">
                                            Interests</h1>
                                        <p class="style1">
                                            <asp:Literal ID="interestsl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--// .yui-gf -->
                            <div class="style1">
                                <div class="style1">
                                    <h1 class="style1">
                                        Work Expereince</h1>
                                    <p class="style1">
                                        <asp:Literal ID="workexperiencel" runat="server" Mode="PassThrough"></asp:Literal>
                                </div>
                            </div>
                            <!--// .yui-gf-->
                            <div class="style1">
                                <div class="style1">
                                    <h1 class="style1">
                                        References</h1>
                                </div>
                                <!--// .yui-u -->
                                <div class="style1">
                                    <div class="style1">
                                        <h4 class="style1">
                                            <asp:Literal ID="referncesl" runat="server" Mode="PassThrough"></asp:Literal>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <!--// .yui-gf -->
                        </div>
                        <!--// .yui-b -->
                    </div>
                    <!--// yui-main -->
                </div>
                <!--// bd -->
                <div id="ft">
                    <p class="style1">
                </div>
                <!--// footer -->
            </div>
            <!-- // inner -->
        </div>
        <!--// doc -->
    </div></asp:Panel>
    </form>
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
                iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:100%');
                document.body.appendChild(iframe);
                iframe.src = pdf.output('datauristring');

                //                var div = document.createElement('pre');
                //                div.innerText=pdf.output();
                //                document.body.appendChild(div);
            }
        });
        //}
    </script>
    <%--<script type="text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head>');
            printWindow.document.write('<link type="text/css" rel="stylesheet" href="style.css">');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 50);
            return false;
        }
    </script>--%>
</body>
</html>
