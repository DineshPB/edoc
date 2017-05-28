<%@ Page Language="VB" AutoEventWireup="false" %>

<!DOCTYPE HTML><html>
    <head>
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
    </head>
    <body class="bodyBody a4p" >
 
      
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
            <!-- Space for signature. -->
            <br/>
            <br/>
            <br/>
           <%-- <asp:Label ID="Name_label" runat="server" Text="Label"></asp:Label>  Evanildo Lopes do Almeida <br/>
            <asp:Label ID="bye_label" runat="server" Text="Label"></asp:Label> Hauswart Binningerstrasse 19/23 <br/>--%>
        </div></page>
    </body>
</html>

