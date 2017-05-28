<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master" AutoEventWireup="false" CodeFile="~/website/content page/lettert1.aspx.vb" Inherits="website_content_page_letterdisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="row">
        <div class="col-md-15 col-sm-15 col-xs-15">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Letter <small>Here it will show Letter</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a> </li>
                                <li><a href="#">Settings 2</a> </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                    <div class="clearfix">
                    </div>
                </div>
              
                 <div class="bodyBody a4p" >
 
      
        <div class="divReturnAddress">
            <asp:Label ID="Adress_1" runat="server" Text="Adress line 1"></asp:Label><br/>
            <asp:Label ID="Adress_2" runat="server" Text="Adress line 2"></asp:Label><br/>
            <asp:Label ID="Adress_3" runat="server" Text="Adress line 3"></asp:Label><br/>    
            <br/>
           <asp:Label ID="Date_label" runat="server" Text="User date"></asp:Label>
        </div>

        <div class="divSubject">
            <asp:Label ID="Subject_label" runat="server" Text="Subejct Enter Here"></asp:Label>
            <br />
            <br />
            
        </div>
        <asp:Label ID="toname" runat="server" Text=""></asp:Label>
        <div class="divContents">
            <p style="margin-left: 40px">
                <asp:Label ID="para1" runat="server"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:Label ID="para2" runat="server"></asp:Label>
            </p>





            <p style="margin-left: 40px">

                <asp:Label ID="para3" runat="server"></asp:Label>
            </p>
        </div>

        <div class="divAdios">
            <asp:Label ID="Greetings_label" runat="server" Text="Greetings"></asp:Label><br/>
            <asp:Button ID="wordbtn"  runat="server" Text="Save As Word(.Doc)File" />
            <asp:Button ID="pdfbtn"  runat="server" Text="Save As PDF File" />
            <!-- Space for signature. -->
            <br/>
            <br/>
            <br/><%--
            <asp:Label ID="Name_label" runat="server" Text="Label"></asp:Label>  Evanildo Lopes do Almeida <br/>
            <asp:Label ID="bye_label" runat="server" Text="Label"></asp:Label> Hauswart Binningerstrasse 19/23 <br/>--%>
        </div></div>
    </div>
        <div class="clearfix">
        </div>
    </div>
    </div>
    <script src="../../../build/js/jspdf.debug.js" type="text/javascript"></script>
    <script src="../../../build/js/html2pdf.js" type="text/javascript"></script>
    <script>

        var pdf = new jsPDF('p', 'pt', 'letter');
        var canvas = pdf.canvas;
        canvas.height = 72 * 11;
        canvas.width = 72 * 8.5; ;
        // var width = 400;

        html2pdf(document.body, pdf, function (pdf) {
            var iframe = document.createElement('iframe');
            iframe.setAttribute('style', 'position:absolute;right:0; top:0; bottom:0; height:100%; width:500px');
            document.body.appendChild(iframe);
            iframe.src = pdf.output('datauristring');

            //var div = document.createElement('pre');
            //div.innerText=pdf.output();
            //document.body.appendChild(div);
        }
        );
     </script>
</asp:Content>

