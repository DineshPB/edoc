<%@ Page Title="" Language="VB" MasterPageFile="~/website/content page/MasterPage.master"
    AutoEventWireup="false" CodeFile="applicationdisplay.aspx.vb" Inherits="website_content_page_applicationdisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-15 col-sm-15 col-xs-15">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Application <small>Here it will show Application</small></h2>
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
                <a class="word-export" href="javascript:void(0)">Export as .doc File </a></h2>
                <div id="export-content">
                    <div class="bodyBody a4p">
                        <div class="divSubjecta">
                            <asp:Label ID="Subject_label" runat="server" Text="Subejct Enter Here"></asp:Label>
                            <br />
                            <br />
                        </div>
                        <div>
                            <asp:Label ID="Adress_1" runat="server" Text="Adress line 1"></asp:Label><br />
                            <asp:Label ID="Adress_2" runat="server" Text="Adress line 2"></asp:Label><br />
                            <asp:Label ID="Adress_3" runat="server" Text="Adress line 3"></asp:Label><br />
                            <br />
                            <asp:Label ID="Date_label" runat="server" Text="User date"></asp:Label>
                        </div>
                        <asp:Label ID="toname" runat="server" Text=""></asp:Label>
                        <div class="divContents">
                            <p style="margin-left: 40px">
                                <asp:Label ID="para1" runat="server"></asp:Label>
                            </p>
                            <br />
                            <p style="margin-left: 40px">
                                <asp:Label ID="para2" runat="server"></asp:Label>
                            </p>
                            </p><br />
                            <p style="margin-left: 40px">
                                <asp:Label ID="para3" runat="server"></asp:Label>
                            </p>
                            <br />
                            </p>
                        </div>
                        <div>
                            <asp:Label ID="Greetings_label" runat="server" Text="Greetings"></asp:Label><br />
                            <!-- Space for signature. -->
                            <asp:Button ID="wordbtn" Text="Save As Word(.Doc)File" runat="server" />
                            <asp:Button ID="pdfbtn" Text="Save As PDF File" runat="server" />
                            <br />
                            <br />
                            <br />
                            <%-- <asp:Label ID="Name_label" runat="server" Text="Label"></asp:Label>  Evanildo Lopes do Almeida <br/>
            <asp:Label ID="bye_label" runat="server" Text="Label"></asp:Label> Hauswart Binningerstrasse 19/23 <br/>--%>
                        </div>
                        </page>
                    </div>
                </div>
                <script src="../../build/js/jquery.min.js" type="text/javascript"></script>
                <script src="../../build/js/FileSaver.js" type="text/javascript"></script>
                <script src="../../build/js/jquery.wordexport.js" type="text/javascript"></script>
                <script type="text/javascript">
                    jQuery(document).ready(function ($) {
                        $("a.word-export").click(function (event) {
                            $("#export-content").wordExport();
                        });
                    });
                </script>
                <div class="clearfix">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
