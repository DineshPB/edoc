<%@ Page Language="VB" AutoEventWireup="false" CodeFile="noticedocx.aspx.vb" Inherits="website_notice_noticedocx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
<style type="text/css">
            .bodyBody {
                margin: 10px;
                font-size: 1.50em;
            }
            
            .divHeader {
               text-align: right;
                border: 1px solid;
            }
            .divReturnAddress {
                text-align: left;
                float: right;
            }
            .divSubject {
                clear: both;
                font-weight: bold;
                padding-top: 80px;
                margin-left: 40px;
            }   
            .divAdios {
                float: right;
                padding-top: 50px;
                  }
                .a4
                {
                width: 21cm;
  height: 29.7cm; 
            }
            .a4p
            {
                width: 29.7cm;
  height: 21cm; 
            }
          
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <a class="word-export" href="javascript:void(0)">Export as .doc </a>
                        
                        <div class="bodyBody a4p" >
 
      
      <div id="export-content">
        <div class="divReturnAddress">
           <table>
      <tr>
     
      <td align="right"  style="text-align:right;width:1020px;">
       <asp:Label ID="Adress_1" runat="server" Text="Adress line 1"></asp:Label><br/>
      </td></tr></table>
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
            <!-- Space for signature. -->
            <br/>
            <br/>
            <br/><%--
            <asp:Label ID="Name_label" runat="server" Text="Label"></asp:Label>  Evanildo Lopes do Almeida <br/>
            <asp:Label ID="bye_label" runat="server" Text="Label"></asp:Label> Hauswart Binningerstrasse 19/23 <br/>--%>
        </div></div>
                        </div>
    </form>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../../build/js/FileSaver.js" type="text/javascript"></script>
    <script src="../../build/js/jquery.wordexport.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $("a.word-export").click(function (event) {
                $("#export-content").wordExport();
            });
        });
</script>
</body>
</html>
