<%@ Page Language="VB" AutoEventWireup="false" CodeFile="showdata.aspx.vb" Inherits="website_showdata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login! | </title>
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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#dp").datepicker({
              changeMonth: true,
              changeYear: true
          }); ;
      });
  </script>
</head>
<body class="login">
    <form id="Form1" runat="server">
    <div>
        <a class="hiddenanchor" id="signup"></a><a class="hiddenanchor" id="signin"></a>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
            
              <h1>Show Notice Data</h1>
              <div class="container">
    <div class="row">
        <div class='col-sm-6'>
            <div class="form-group">
                <div class='input-group date'>
                <asp:TextBox ID="dp" href="#" runat="server" class="glyphicon glyphicon-calendar" />   
                   <%-- <input type='text' class="form-control" name="datetimepicker1" href="#datetimepicker1" />--%>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <%--<script type="text/javascript">
            $(function () {
                $("#dp").datetimepicker();
            });
        </script>--%>
    </div>
</div>
              <h3>Click on Button to show Information</h3>
              <div>
                  <br />
              </div>
            
                                <div>
              <asp:Button ID="btnLogIn" runat="server" Text="Notice" class="btn btn-default submit" 
                                        PostBackUrl="~/website/noticeinfodata.aspx" ></asp:Button>
                <a class="reset_pass" href="changepassword.aspx"></a>
              </div>
              
                <br />

                <div>
                  <h1><a href="home.aspx">E-Document</a> Creator</h1>
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
