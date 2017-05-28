<%@ Page Language="VB" AutoEventWireup="false" CodeFile="~/website/changepassword.aspx.vb" Inherits="website_changepassword" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Password|ial-scale=1">
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
                <section class="login_content">
            
              <h1>Password Information</h1>
              <div>
              <asp:TextBox ID="txtLogInEmailId" runat="server"   class="form-control" placeholder="Email" required="" ControlToValidate="txtLogInEmailId"> </asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ErrorMessage="*please enter email-id!!" 
                      ID="rfvemail" ControlToValidate="txtLogInEmailId" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
              <asp:RegularExpressionValidator ID="revemaild" runat="server" 
                      ControlToValidate="txtLogInEmailId" 
                      ErrorMessage="*Please enter correct email-id!!" 
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]w+)*\.\w+([-.]\+)*" 
                      ForeColor="Red"></asp:RegularExpressionValidator>
              </div>
             
              <div>
              <asp:Button ID="btnLogIn" runat="server" Text="Ok" class="btn btn-default submit" 
                      onclick="btnLogIn_Click" ></asp:Button>
                  <br />
                  <h4><asp:Label ID="lblnoinfo" runat="server" ForeColor="Red"></asp:Label>
       E-mail id:-<asp:Label ID="lblemailid" runat="server" 
                      EnableViewState="False"></asp:Label>
                  <br />
                  <br />
                  Name:-<asp:Label ID="lblname" runat="server"></asp:Label>
                  <br />
                  <br />
  Password:-<asp:Label ID="lblpass" runat="server"></asp:Label>
                  <br />
                  <div class="clearfix">
                     <br />
                </div>
              <div class="separator">
                <p class="change_link">New to site?
                 
                  
                  <a href="registeruser.aspx">Create Account </a>&nbsp;</p>
                  <a href="changepassoword2.aspx">Change Password</a>

                <div class="clearfix"></div>
                <br />

                <div>
                  
                    <h1><a href="SinglePro/index.html">E Document Creator</a></h1>
                  <p>&nbsp;</p>
                </div>
              </div>
            
          </section>
            </div>
                <%--<div id="register" class="animate form registration_form">
                <section class="login_content">
            
              <h1>Create Account</h1>
              <div>
              <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
              </div>
              <div>
               <asp:TextBox ID="txtLastName" runat="server"  placeholder="Last Name" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
              </div>
              <div>
               <asp:TextBox ID="txtemailid" runat="server" placeholder="Email"  required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
              </div>
              <div>
              <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" required="required" placeholder="Password"  class="form-control col-md-7 col-xs-12"></asp:TextBox>
                
              </div>
              <div>
               <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" placeholder="Confirm Password" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
              </div>
              
              <div>
                <asp:Button ID="btnSave" runat="server" Text="Submit" class="btn btn-default submit" />
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
          </section>
            </div>--%>
        </div>
    </div>
    </form>
</body>
</html>
 