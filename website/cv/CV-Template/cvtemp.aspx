<%@ Page Language="VB" AutoEventWireup="false" EnableEventValidation="false" CodeFile="cvtemp.aspx.vb"
    Inherits="website_cv_CV_Template_cvtemp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<<html>
<head>
    <title>Joe Bloggs - Curriculum Vitae</title>
    <meta name="viewport" content="width=device-width" />
    <meta name="description" content="The Curriculum Vitae of Joe Bloggs." />
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="style.css">
    <link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300'
        rel='stylesheet' type='text/css'>
    <script src="../../js/app.js" type="text/javascript"></script>
    <script src="../../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../../build/js/html2pdf.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body id="top">
    <form runat="server" id="f1">
  <%--  <asp:Button ID="btn1" Text="Print" runat="server" OnClientClick="window.print();"
        Height="171px" Width="304px" />--%>
    
    <asp:Panel ID="pnlContents" runat="server">
        
        <div id="cv" class="instaFade">
            <div class="mainDetails">
                <div id="headshot" class="quickFade">
                    &nbsp;</div>
                <div id="name">
                    <h1 class="quickFade delayTwo">
                        <asp:Literal ID="usernamel" runat="server" Mode="PassThrough"></asp:Literal>
                    </h1>
                    <h2 class="quickFade delayThree">
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </h2>
                    <h3 class="quickFade delayThree">
                        <asp:Literal ID="addressl" runat="server"></asp:Literal>
                    </h3>
                </div>
                <div id="contactDetails" class="quickFade delayFour">
                    <ul>
                        <li>e:<asp:Literal ID="emailidl" runat="server" Mode="PassThrough"></asp:Literal>
                        </li>
                        <li>w: <asp:Literal ID="websitel" runat="server" Mode="PassThrough"></asp:Literal></li>
                        <li>m:<asp:Literal ID="contactnol" runat="server" Mode="PassThrough"></asp:Literal>
                        </li>
                    </ul>
                </div>
                <div class="clear">
                </div>
            </div>
            <div id="mainArea" class="quickFade delayFive">
                <section>
			<article>
				<div class="sectionTitle">
					<h1>Personal Profile</h1>
				</div>
				
				<div class="sectionContent">
					<p>
                    <asp:Literal ID="profilel" runat="server"></asp:Literal>
                    </p>
				</div>
			</article>
			<div class="clear"></div>
		</section>
                <section>
			<div class="sectionTitle">
				<h1>Qualifications</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<p>
                        <asp:Literal ID="qualificationl" runat="server" Mode="PassThrough"></asp:Literal>
                    </p>
				</article>
			</div>
			<div class="clear"></div>
		</section>
                <section>
			<div class="sectionTitle">
				<h1>Interests</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<h2>&nbsp;</h2>
				</article>
                                            <asp:Literal ID="interestsl" runat="server" Mode="PassThrough"></asp:Literal>
			</div>
			<div class="clear"></div>
		</section>
                <section>
			<div class="sectionTitle">
				<h1>Education</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<h2>&nbsp;</h2>
				</article>
                                    <asp:Literal ID="educationl" runat="server" Mode="PassThrough"></asp:Literal>
			</div>
			<div class="clear"></div>
		</section>
                <section>
			<div class="sectionTitle">
				<h1>References</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<h2>&nbsp;</h2>
				</article>
                                            <asp:Literal ID="referncesl" runat="server" Mode="PassThrough"></asp:Literal>
			</div>
			<div class="clear"></div>
		</section>
            </div>
        </div>
    </asp:Panel></h6>
    </form>
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
    <%--<script type="text/javascript">
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
   
</script>--%>
    <script type="text/javascript">
        //function create_pdf_onclick() {
      
        var pdf = new jsPDF('p', 'pt', 'A3');
        var canvas = pdf.canvas;
        var width = 900;
        canvas.width=8.5*72;
        document.body.style.width = width + "px";

        html2canvas(document.body, {
            canvas: canvas,
            onrendered: function (canvas) {
                var iframe = document.createElement('iframe');
                iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:100%');
                document.body.appendChild(iframe);
                iframe.src = pdf.output('datauristring');

                var div = document.createElement('pre');
                div.innerText=pdf.output();
                document.body.appendChild(div);
            }
        });
        //}
    </script>
</body>
</html>
