<%@ Page Language="VB" AutoEventWireup="false" CodeFile="changepassoword2.aspx.vb" Inherits="website_changepassoword2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Password| </title>
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>
<body class="login">
    <form id="Form1" runat="server">
    <div>
        <a class="hiddenanchor" id="signup"></a><a class="hiddenanchor" id="signin"></a>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content" id="frmchangepassword" runat="server">
            
                <div>
              <h1>Change Password</h1>
              
              </div>
             
             <div class="clearfix">
              <asp:Label ID="lblpassinfo" runat="server" ForeColor="Red"></asp:Label>
              <asp:TextBox ID="oldpass" runat="server"  class="form-control" placeholder="Old Password" TextMode="Password"  ></asp:TextBox>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                      ControlToValidate="oldpass" 
                      ErrorMessage="*Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character" 
                      ForeColor="Red" 
                      ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
                  <br />
                </div>

              <div class="clearfix">
              <asp:TextBox ID="changePassword" runat="server"  class="form-control" placeholder="New Password" TextMode="Password"  ></asp:TextBox>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                      ControlToValidate="changepassword" 
                      ErrorMessage="*Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character" 
                      ForeColor="Red" 
                      ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
                  <br />
                </div>
                 <div class="clearfix">
              <asp:TextBox ID="confirmpassword" runat="server"  class="form-control" placeholder="confirm New Password" TextMode="Password"  ></asp:TextBox>
                     <br />
                     <asp:CompareValidator ID="cvpassword" runat="server" 
                         ControlToCompare="changePassword" ControlToValidate="confirmpassword" 
                         ErrorMessage="*Password not match!!" ForeColor="Red"></asp:CompareValidator>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                         ControlToValidate="confirmpassword" 
                         ErrorMessage="*Password must contain minimum 8 characters,atleast 1 uppercase,1 lowercare,1 number,1 special character" 
                         ForeColor="Red" 
                         ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
                     <br />
                     <br />
              <asp:Button ID="changepasswordbtn" runat="server" Text="Change Password" 
                         class="btn btn-default submit" ></asp:Button>
                     <br />
                     
                </div>
             
            
          </section>
          <section id="frmlogin" runat="server">
          <asp:Label ID="lblchnpass" runat="server" ForeColor="Red"></asp:Label>
           <div class="separator">
                

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><a href="SinglePro/index.html">E-Document</a> Creator</h1>
                  <p>&nbsp;</p>
                </div>
              </div>
         
          </section>
            </div>
                
        </div>
    </div>
    </form>
</body>
</html>

 
