<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="website_SinglePro_home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>E-Doc Creator:Home</title>
    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
    <!-- CSS
    ================================================== -->
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet">
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Elastic grid css file -->
    <link rel="stylesheet" href="css/elastic_grid.css">
    <!-- Circle counter cdn css file -->
    <!--<link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>-->
    <link href="css/jquery.circliful.css" rel="stylesheet" type="text/css" />
    <!-- Default Theme css file -->
    <link id="orginal" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
    <!-- Google fonts -->
    <link href="fonts/googlefont.css" rel="stylesheet" type="text/css" />
    <!--<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <!-- BEGAIN PRELOADER -->
  <%--  <div id="preloader">
        <div id="status">
            &nbsp;</div>
    </div>--%>
    <!-- END PRELOADER -->
    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <!-- END SCROLL TOP BUTTON -->
    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
          <div class="container">
          <div class="navbar-header">
            <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>

            <!-- LOGO -->

            <!-- TEXT BASED LOGO -->
            <a class="navbar-brand" href="#">E Document <span>Creator</span></a>
            
            <!-- IMG BASED LOGO  -->
            <!--  <a class="navbar-brand" href="#"><img src="img/logo.png" alt="logo"></a> --> 
            
                   
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul id="top-menu" class="nav navbar-nav navbar-right main_nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#service">Services</a></li> 
             
                <%  
                    If Session("userid") Is Nothing Then
                %>
                <li><a href="#team">Team</a></li> 
                <li> <a href="../login.aspx">Login</a></li>
                <li>   <a href="../content page/registerusercontent.aspx">Register</a></li>
                <%
                Else
                %>
                  <li><a href="../content page/SummaryDocs.aspx">My Documents</a></li>
                 <li> <a href="../content page/editprofile.aspx">Profile</a></li>
                <li><a href="../changepassoword2.aspx">change Password</a></li>
                <li> <a href="logout.aspx">logout</a></li>
                <%
                End If
                 %>
             
            </ul>           
          </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->

      <!-- BEGIN SLIDER AREA-->
      <div class="slider_area">
        <!-- BEGIN SLIDER-->          
        <div id="slides">
          <ul class="slides-container">

            <!-- THE FIRST SLIDE-->
            <li>
              <!-- FIRST SLIDE OVERLAY -->
              <div class="slider_overlay"></div> 
              <!-- FIRST SLIDE MAIN IMAGE -->
              <img src="img/photo_0162971842akgnfs.jpg" alt="img"/>
              <!-- FIRST SLIDE CAPTION-->
              <div class="slider_caption">
                <h2>Hi,We are E Document Creator</h2>
                <p>We Provide the user to create different types of Documents.This is CV</p>
<a href="../content page/cvcontent.aspx" class="slider_btn">CV</a>
              </div>
            </li>

            <!-- THE SECOND SLIDE-->
            <li>
              <!-- SECOND SLIDE OVERLAY -->
              <div class="slider_overlay"></div> 
              <!-- SECOND SLIDE MAIN IMAGE -->
              <img src="img/photo_0162970804laooji%20(1).jpg" alt="img" />
              <!-- SECOND SLIDE CAPTION-->
              <div class="slider_caption">
                <h2>Hi,We are E Document Creator </h2>
                <p>We provide the user to create different types of Documents.This is Resume</p>
                <a href="../content page/resumecontent.aspx" class="slider_btn">Resume</a>
              </div>
            </li>

            <!-- THE THIRD SLIDE-->
            <li>
              <!-- THIRD SLIDE OVERLAY -->
              <div class="slider_overlay"></div> 
              <!-- THIRD SLIDE MAIN IMAGE -->
              <img src="img/Resized-Y3Y58.jpg" alt="img"/>
              <!-- THIRD SLIDE CAPTION-->
              <div class="slider_caption">
                <h2>Hi,We are E Document Creator</h2>
                <p>We provide the user to create different types of Documents.This is Application</p>
                <a href="../content page/applicationcontent.aspx" class="slider_btn">Application</a>                 
              </div>
            </li>
          

           <!-- THE Fourth SLIDE-->
            <li>
              <!-- fourth SLIDE OVERLAY -->
              <div class="slider_overlay"></div> 
              <!-- Fourth SLIDE MAIN IMAGE -->
              <img src="img/photo_0162971845nblzti.jpg" alt="img"/>
              <!-- fourth SLIDE CAPTION-->
              <div class="slider_caption">
                <h2>Hi,We are E Document Creator</h2>
                <p>We provide the user to create different types of Documents.This is Notice</p>
                <a href="../content page/noticecontent.aspx" class="slider_btn">Notice</a>
              </div>
            </li>
            
           <!-- THE fifth SLIDE-->
            <li>
              <!-- fourth SLIDE OVERLAY -->
              <div class="slider_overlay"></div> 
              <!-- Fourth SLIDE MAIN IMAGE -->
              <img src="img/Resized-F3PM3.jpg" alt="img"/>
              <!-- fourth SLIDE CAPTION-->
              <div class="slider_caption">
                <h2>Hi,We are E Document Creator</h2>
                <p>We provide the user to create different types of Documents.This is Letter</p>
             <a href="../content page/lettertype.aspx" class="slider_btn">Letter</a>
              </div>
            </li>
            </ul>
          <!-- BEGAIN SLIDER NAVIGATION -->
          <nav class="slides-navigation">
            <!-- PREV IN THE SLIDE -->
            <a class="prev" href="#">
              <span class="icon-wrap"></span>
              <h3><strong>Prev</strong></h3>
            </a>
            <!-- NEXT IN THE SLIDE -->
            <a class="next" href="#">
              <span class="icon-wrap"></span>
              <h3><strong>Next</strong></h3>
            </a>
          </nav>       
        </div>
        <!-- END SLIDER-->          
      </div>
      <!-- END SLIDER AREA -->
    </header>
    <!--=========== End HEADER SECTION ================-->
    <!--=========== BEGIN ABOUT SECTION ================-->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="about_area">
              <!-- START ABOUT HEADING -->
              <div class="heading">
                <h2 class="wow fadeInLeftBig">About Us</h2>
                <p>This is a Web Application that is created for the users to create documents on the go and the documents can be shared to multiple places with the use of our given functionalities for sharing.The user can create different kinds of documents that are given the OUR SERVICES sections. The users that want to create the documents in our web application can do so with the help of our different editing options that are provided to the user.</p>
              </div>

              <!-- START ABOUT CONTENT -->
              <div class="about_content">
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="about_featured">
                      <div class="panel-group" id="accordion">
                        <!-- START SINGLE FEATURED ITEAM #1-->
                        <div class="panel panel-default wow fadeInLeft">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                 <span class="fa fa-check-square-o"></span>
                              </a>
                            </h4>
                          </div>
                          <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                              The users of the web application are provided with a very proper and cleanly executable design. The users can view the Web Application in the proper way with a very clean and proper.creative,innovative.  
                            </div>
                          </div>
                        </div>
                        <!-- START SINGLE FEATURED ITEAM #2 -->
                        <div class="panel panel-default wow fadeInLeft">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                 <span class="fa fa-check-square-o"></span>100% responsive layout
                              </a>
                            </h4>
                          </div>
                          <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                            The users on the Web Application can work in a very creative and responsive 
                            </div>
                          </div>
                        </div>
                        <!-- START SINGLE FEATURED ITEAM #3 -->
                        <div class="panel panel-default wow fadeInLeft">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                <span class="fa fa-check-square-o"></span>Detail Documentation
                              </a>
                            </h4>
                          </div>
                          <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                             It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). 
                            </div>
                          </div>
                        </div>
                        <!-- START SINGLE FEATURED ITEAM #4 -->
                        <div class="panel panel-default wow fadeInLeft">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                <span class="fa fa-check-square-o"></span>24Hours Premium Support
                              </a>
                            </h4>
                          </div>
                          <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                             It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages. 
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="about_slider">
                      <!-- BEGAIN FEATURED SLIDER -->
                      <div class="featured_slider">
                        <!-- SINGLE SLIDE IN THE SLIDER -->
                        <div class="single_iteam">
                          <a href="#"> <img src="img/Resized-KRAAP.jpg" alt="img" /></a>                          
                        </div>
                  
                                          
                      </div>
                      <!-- END FEATURED SLIDER -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>       
      </div>
           <!--=========== END ABOUT SECTION ================-->
    <!--=========== BEGIN SERVICE SECTION ================-->
    <section id="service">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <!-- BEGAIN SERVICE HEADING -->
            <div class="heading">
              <h2 class="wow fadeInLeftBig">Our Services</h2>
              <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
            </div>
          </div>          
        </div>
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <!-- BEGAIN SERVICE  -->
            <div class="service_area">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <!-- BEGAIN SINGLE SERVICE -->
                  <div class="single_service wow fadeInLeft">
                    <div class="service_iconarea">
                      <a href="../content page/cvcontent.aspx"><span class="fa fa-line-chart service_icon"></span></a>
                    </div>
                    <h3 class="service_title">CV</h3>
                    <p> CV is an abbreviation for Curriculum Vitae. If a job advertisement asks for a CV, that's a hint that the employer expects a great deal of life experience and accomplishments, including education, original research, presentations you've given and papers or books you've had published.</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <!-- BEGAIN SINGLE SERVICE -->
                  <div class="single_service wow fadeInRight">
                    <div class="service_iconarea">
                  <a href="../content page/resumecontent.aspx"><span class="fa fa-suitcase service_icon"></span></a>   
                    </div>
                    <h3 class="service_title">Resume</h3>
                    <p>A resume,also spelled resume,is a document used by a person to present their backgrounds and skills. Resumes can be used for a variety of reasons, but most often they are used to secure new employment.A typical resume contains a "summary" of relevant job experience and education, as its French origin implies.</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <!-- BEGAIN SINGLE SERVICE -->
                  <div class="single_service wow fadeInLeft">
                    <div class="service_iconarea">
                      <a href="../content page/noticecontent.aspx"><span class="fa fa-eraser service_icon"></span></a>
                    </div>
                    <h3 class="service_title">Notice</h3>
                    <p>Notice is the legal concept describing a requirement that a party be aware of legal process affecting their rights, obligations or duties. There are several types of notice: public notice (or legal notice), actual notice, constructive notice, and implied notice.</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <!-- BEGAIN SINGLE SERVICE -->
                  <div class="single_service wow fadeInRight">
                    <div class="service_iconarea">
                    <a href="../content page/lettermaster.aspx"> <span class="fa fa-paper-plane service_icon"></span></a> 
                    </div>
                    <h3 class="service_title">Letter</h3>
                    <p> A written message addressed to a person or organization. an award earned by participation in a school sport. the conventional characters of the alphabet used to represent speech. a strictly literal interpretation.</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <!-- BEGAIN SINGLE SERVICE -->
                  <div class="single_service wow fadeInLeft">
                   <div class="service_iconarea">
                  <a href="../content page/applicationcontent.aspx"><span class="fa fa-envelope-o service_icon"></span></a>    
                    </div>
                    <h3 class="service_title">Application</h3>
                    <p>An application for employment, job application, or application form (often simply called an application) usually includes a form or collection of forms that an individual seeking employment, called an applicant, must fill out as part of the process of informing an employer of the applicant's availability and desire to be employed, and persuading the employer to offer the applicant employment.</p>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                 
                   
                </div>               
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== END SERVICE SECTION ================-->
    <!--=========== BEGAIN TEAM SECTION ================-->
    <section id="team">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <!-- BEGAIN ABOUT HEADING -->
            <div class="heading">
              <h2 class="wow fadeInLeftBig">E-Doc Creator Team </h2>            
            </div>
            <div class="team_area">
              <!-- BEGAIN TEAM SLIDER -->
              <div class="team_slider">  
                <!-- BEGAIN SINGLE TEAM SLIDE#1 -->              
                <div class="col-lg-3 col-md-3 col-sm-4">
                  <div class="single_team wow fadeInUp">
                    <div class="team_img">
                      <img src="img/photo_0162971825fchnni.jpg" alt="img"/>
                    </div>
                    <h5 class="">Dhaivat Desai</h5>
                    <span>Founder, Buisness Head</span>                        
                    <p>Founder of the E Document Creator. Co-Developer in the E Document Creator</p>
                    <div class="team_social">
                      <a href="#"><i class="fa fa-facebook"></i></a>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                  </div>
                </div>
                <!-- BEGAIN SINGLE TEAM SLIDE#2 -->
                <div class="col-lg-3 col-md-3 col-sm-4">
                  <div class="single_team wow fadeInUp">
                    <div class="team_img">
                     <img src="img/photo_0162971826bxbfpy.jpg" alt="img" />
                    </div>
                    <h5>Dinesh Prajapati</h5>
                    <span>Co-Founder, Developer</span>                        
                    <p>Co-Founder of the E Document Creator.Plays a key role in the development of the Web Application also in the buisness guidance of the Creator</p>
                    <div class="team_social">
                      <a href="#"><i class="fa fa-facebook"></i></a>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                  </div>
                </div>
               
                              
                <!-- BEGAIN SINGLE TEAM SLIDE#7 -->
                <div class="col-lg-3 col-md-3 col-sm-4">
                  <div class="single_team wow fadeInUp">
                    <div class="team_img">
                      <img src="img/photo_0162971826pabjon.jpg" alt="img"/>
                    </div>
                    <h5>Aditya Rajput</h5>
                    <span>Co-founder,Marketing Head</span>                        
                    <p>Co-Founder of the E Document Creator. He is the head of the buisness management and also play an important part in the documentaion and structional part of the E Document Creator.</p>
                    <div class="team_social">
                      <a href="#"><i class="fa fa-facebook"></i></a>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                  </div>
                </div>                              
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== END TEAM SECTION ================-->
             <!-- BEGAIN CALL US FEATURE -->
            <div class="col-lg-3 col-md-3 col-sm-6">
              <div class="single_contact_feaured wow fadeInUp">
                <i class="fa fa-phone"></i>
                <h4>Call Us</h4>
                <p>7874628240</p>
                <p>7016678963</p> 
                <p>7016635730</p>                  </div>
            </div>
            <!-- BEGAIN CALL US FEATURE -->
            <div class="col-lg-3 col-md-3 col-sm-6">
              <div class="single_contact_feaured wow fadeInUp">
                <i class="fa fa-envelope-o"></i>
                <h4>Email Address</h4>
                <p>dhaivat1999@gmail.com</p>
                <p>prajapatidinesh869@gmail.com</p>
            <p>adityarajput369@gmail.com</p>
               </div>
            </div>
            <!-- BEGAIN CALL US FEATURE -->
           
            <!-- BEGAIN CALL US FEATURE -->
           
          </div>
          </div>         
        </div>
      </div>
    </section>
    <!--=========== END CONTACT FEATURE SECTION ================-->

    <!--=========== BEGAIN SUBSCRIBE SECTION ================-->
    <section id="subscribe">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12">
            <!-- START SUBSCRIBE HEADING -->
            <div class="heading">
              <h2 class="wow fadeInLeftBig">Subscribe Us</h2>
              <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
            </div>
            <!-- BEGAIN SUBSCRIVE FORM -->
            <form class="subscribe_form">
              <div class="subscrive_group wow fadeInUp">
                <input class="form-control subscribe_mail" type="email" placeholder="Enter your email address">
                <input class="subscr_btn" type="submit" value="Subscribe">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!--=========== END SUBSCRIBE SECTION ================-->

     <!--=========== BEGAIN FOOTER ================-->
     <footer id="footer">
       <div class="container">
         <div class="row">
           <div class="col-lg-6 col-md-6 col-sm-6">
             <div class="footer_left">
				<!--=========== Designed By WpFreeware Team ================-->
               <p>Copyright E-doc Creator . All Rights Reserved</p>
			   <!--=========== Designed By WpFreeware Team ================-->
             </div>
           </div>
           <div class="col-lg-6 col-md-6 col-sm-6">
             <div class="footer_right">
               <ul class="social_nav">
                 <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                 <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                 <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                 <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
               </ul>
             </div>
           </div>
         </div>
       </div>
      </footer>
      <!--=========== END FOOTER ================-->

     <!-- Javascript Files
     ================================================== -->
  
     <!-- initialize jQuery Library -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
    <!-- Google map -->
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/jquery.ui.map.js"></script>
     <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script> 
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.superslides.min.js" type="text/javascript"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>    
    <!-- for circle counter -->
    <script type="text/javascript" src="js/jquery.circliful.min.js"></script>
    <!--<script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>-->
    <!-- for portfolio filter gallery -->
    <script src="js/modernizr.custom.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/elastic_grid.min.js"></script>
    <script src="js/portfolio_slider.js"></script>

    <!-- Custom js-->
    <script src="js/custom.js"></script>
</body>
</html>
