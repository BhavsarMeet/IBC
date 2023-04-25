<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


      <%@page import="com.model.user.UserEntity" %>
        <%@page import="com.model.dealer.DealerModel" %>

          <!DOCTYPE html>
          <html dir="ltr" lang="en">

          <!-- Mirrored from creativelayers.net/themes/voiture-html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:57:47 GMT -->

          <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="keywords"
              content="auto, car, car dealer, car dealership, car listing, cars, classified, dealership, directory, listing, modern, motors, responsive">
            <meta name="description" content="Voiture - Automotive & Car Dealer HTML Template">
            <meta name="CreativeLayers" content="ATFN">
            <!-- css file -->
            <link rel="stylesheet" href="css-ibc/bootstrap.min.css">
            <link rel="stylesheet" href="css-ibc/style.css">
            <!-- Responsive stylesheet -->
            <link rel="stylesheet" href="css-ibc/responsive.css">
            <!-- Font Awesome Live URL -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

          
            <!-- Title -->
            <title>IBCCARZ - An Automotive Company</title>
            <!-- Favicon -->
            <link href="images-ibc/favicon.ico" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
            <link href="images-ibc/favicon.ico" sizes="128x128" rel="shortcut icon" />

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
          </head>

          <body>
            <% UserEntity userData=(UserEntity)session.getAttribute("user"); %>
              <% DealerModel dealerData=(DealerModel)session.getAttribute("dealer"); %>


                <div class="wrapper ovh">
                  <div class="preloader"></div>

                  <!-- Sidebar Panel Start -->
                  <div class="listing_sidebar">
                    <div class="siderbar_left_home pt20">
                      <a class="sidebar_switch sidebar_close_btn float-end" href="#">X</a>
                      <div class="footer_contact_widget mt100">
                        <h3 class="title">Quick contact info</h3>
                        <p>We at IBCCARZ going to create new experience for customers which will save there time. We
                          will consult a proper product as per Customer requirements .we are here for Customer needs and
                          one stop shop for Customer were they can get all services regarding car which includes
                          buy/sell/Finance/Insurance. We are experts in automobiles industry were we can provide new
                          purchase experience to customers. </p>
                      </div>
                      <div class="footer_contact_widget">
                        <h5 class="title">CONTACT</h5>
                        <a href="tel:+91 7622893333">
                          <div class="footer_phone">+91 7622893333</div>
                        </a>
                        <a href="mailto:info@ibccarz.com">
                          <p>info@ibccarz.com</p>
                        </a>
                      </div>
                      <div class="footer_about_widget">
                        <h5 class="title">OFFICE</h5>
                        <p>India <br>3,Satkar Avenue<br>Near Naroda Railway,<br>Nana Chiloda Ahmedabad-382330</p>
                      </div>
                      <div class="footer_contact_widget">
                        <h5 class="title">OPENING HOURS</h5>
                        <p>Monday-Friday: 09:00AM - 09:00PM<br>Saturday: 09:00AM - 07:00PM<br>Sunday: Closed</p>
                      </div>
                    </div>
                  </div>
                  <!-- Sidebar Panel End -->

                  <!-- header top -->
                  <div class="header_top dn-992">
                    <div class="container">
                      <div class="row">
                        <div class="col-lg-8 col-xl-7">
                          <div class="header_top_contact_opening_widget text-center text-md-start">
                            <ul class="mb0">
                              <li class="list-inline-item"><a href="tel:7622893333"><span
                                    class="flaticon-phone-call"></span>+91 7622893333</a>
                              </li>
                              <li class="list-inline-item"><a href="#"><span class="flaticon-map"></span>3,Satkar
                                  Avenue,Nana-Chiloda</a></li>
                              <li class="list-inline-item"><a href="#"><span class="flaticon-clock"></span>Mon - Fri
                                  9:00 AM -
                                  9:00 PM</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-lg-4 col-xl-5">
                          <div class="header_top_social_widgets text-center text-md-end">
                            <ul class="m0">
                              <li class="list-inline-item"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                              <li class="list-inline-item"><a href="#"><span class="fab fa-twitter"></span></a></li>
                              <li class="list-inline-item"><a href="https://api.whatsapp.com/send?phone=7622893333"><span><i class='fab fa-whatsapp'></i></span></a></li>
                              
                              <li class="list-inline-item"><a href=""><span class="fab fa-instagram"></span></a></li>
                              <li class="list-inline-item"><a href="#"><span class="fab fa-linkedin"></span></a></li>
                              <!-- <li class="list-inline-item"><a href="#" data-bs-toggle="modal" data-bs-target="#logInModal">Login</a>
            </li>
            <li class="list-inline-item"><a href="#" data-bs-toggle="modal"
                data-bs-target="#logInModal">Register</a></li> -->
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Main Header Nav -->
                  <header class="header-nav menu_style_home_one transparent main-menu">
                    <!-- Ace Responsive Menu -->
                    <nav>
                      <div class="container posr">
                        <!-- Menu Toggle btn-->
                        <div class="menu-toggle">
                          <button type="button" id="menu-btn">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                          </button>
                        </div>
                        <a href="index" class="navbar_brand float-start dn-md">
                          <img class="logo1 img-fluid"  src="images-ibc/logo.png"  alt="header-logo.svg">
                          <img class="logo2 img-fluid" src="images-ibc/logo.png"   alt="header-logo2.svg">
                        </a>
                        <!-- Responsive Menu Structure-->
                        <%if(dealerData!=null){%>
                          <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                            <li>
                              <a href="index"><span class="title">Home</span></a>

                            </li>
                            <li>
                              <a href="usedcarlist-dealer"><span class="title">Used Cars</span></a>

                            </li>

                            <li>
                              <a href="aboutus"><span class="title">About Us</span></a>

                            </li>
                            <li>
                              <a href="contactus"><span class="title">Contact Us</span></a>

                            </li>
                            <li class="add_listing">
                              <a href="dealerdashboard">Profile</a>
                            </li>
                            <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a></li>
                          </ul>
                          <%}else if(userData!=null){%>
                            <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                              <li> <a href="index"><span class="title">Home</span></a>

                              </li>

                              <li> <a href="newcarlist"><span class="title">New Cars</span></a>

                              </li>
                              <li> <a href=""><span class="title">Used Cars</span></a>
                                <ul>
                                  <li><a href="usedcarlist-user">Buy Used Cars</a></li>
                                  <li><a href="gotoaddusedcardetails">Sell Your Car</a></li>
                                </ul>
                              </li>
                              <li> <a href="aboutus"><span class="title">About Us</span></a>

                              </li>
                              <li> <a href="contactus"><span class="title">Contact Us</span></a>

                              </li>
                              <li class="add_listing"><a href="userdashboard">Profile</a></li>
                              <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a></li>
                            </ul>
                            <%}else{%>
                              <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                                <li> <a href="index"><span class="title">Home</span></a>

                                </li>

                                <li> <a href="newcarlist"><span class="title">New Cars</span></a>

                                </li>
                                <li> <a href=""><span class="title">Used Cars</span></a>
                                  <ul>
                                    <li><a href="" data-bs-toggle="modal" data-bs-target="#buyusedcarModal">Buy Used
                                        Cars</a>
                                    </li>
                                    <li><a href="" data-bs-toggle="modal" data-bs-target="#sellyourcarModal">Sell Your
                                        Car</a>
                                    </li>
                                  </ul>
                                </li>
                                <li> <a href="aboutus"><span class="title">About Us</span></a>

                                </li>
                                <li> <a href="contactus"><span class="title">Contact Us</span></a>

                                </li>
                                <li class="add_listing"><a href="" data-bs-toggle="modal"
                                    data-bs-target="#logInModal">Login |
                                    Register</a></li>
                                <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a></li>
                              </ul>
                              <%}%>
                      </div>
                    </nav>
                  </header>
                  <!-- toasts for register error show starts -->
                  <!-- toast start -->
                  <c:if test="${not empty nameerror}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${nameerror}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty cityerror}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${cityerror}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty phoneerror}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${phoneerror}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty emailerror}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${emailerror}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty passworderror}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${passworderror}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <!-- toasts for register error show ends -->
                  <!-- toast end -->


                  <!-- toast start -->
                  <c:if test="${not empty error}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show" data-autohide="true">
                        <div class="toast-header bg-danger">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Error</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${error}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <!-- toast end -->
                  <!-- toast start -->
                  <c:if test="${not empty success}">
                    <div class="toast-container" style="position: absolute; top: 10px; right: 10px; margin-top: 100px;">

                      <div class="toast fade show">
                        <div class="toast-header bg-success">
                          <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                            Success</strong>
                          <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                        </div>
                        <div class="toast-body">
                          <span style="font-weight: bold;">${success}</span>
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <!-- toast end -->

                  <!-- Modal -->
                  <div class="sign_up_modal modal fade" id="logInModal" data-backdrop="static" data-keyboard="false"
                    tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body container p60">
                          <div class="row">
                            <div class="col-lg-12">
                              <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                  <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab"
                                    aria-controls="home" aria-selected="true">Login</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab"
                                    aria-controls="profile" aria-selected="false">Register</a>
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="tab-content container p0" id="myTabContent">
                            <div class="row mt30 tab-pane fade show active" id="home" role="tabpanel"
                              aria-labelledby="home-tab">
                              <div class="col-lg-12">
                                <div class="login_form">
                                  <!-- <p>New to Cars.com? <a href="page-register.html">Sign up.</a> Are you a dealer?</p> -->
                                  <form action="userdealerlogin" method="post">
                                    <input type="hidden" name="val" value="navigate">
                                    <div class="mb-2 mr-sm-2">
                                      <label class="form-label">Username or email address *</label>
                                      <input type="email" name="email" class="form-control">
                                    </div>
                                    <div class="form-group mb5">
                                      <label class="form-label">Password *</label>
                                      <input type="password" name="password" class="form-control">
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <!-- <input type="checkbox" class="custom-control-input" id="exampleCheck3"> -->
                                      <!-- <label class="custom-control-label" for="exampleCheck3">Remember me</label> -->
                                      <a class="btn-fpswd float-end" href="forgotpasswordpage">Lost your password?</a>
                                    </div>
                                    <button type="submit" class="btn btn-log btn-thm mt5">Sign in</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                            <div class="row mt30 tab-pane fade" id="profile" role="tabpanel"
                              aria-labelledby="profile-tab">
                              <div class="col-lg-12">
                                <div class="sign_up_form">
                                  <p>By registering your user account will be created.</p>
                                  <form action="sendotptouser" method="post">
                                    <input type="hidden" name="val" value="navigate">

                                    <div class="row">
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">Name</label>
                                          <input type="text" name="userName" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">City</label>
                                          <input type="text" name="userAddress" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Phone</label>
                                          <input type="text" name="userPhoneNumber" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Email</label>
                                          <input type="email" name="userEmail" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group mb20">
                                          <label class="form-label">Password</label>
                                          <input type="password" name="userPassword" class="form-control">
                                        </div>
                                      </div>
                                      <!-- <div class="col-lg-6">
                                          <div
                                              class="form-group mb20">
                                              <label
                                                  class="form-label">Confirm
                                                  Password</label>
                                              <input type="password"
                                                  class="form-control">
                                          </div>
                                      </div> -->
                                    </div>
                                    <button type="submit" class="btn btn-signup btn-thm mb0">Sign
                                      Up</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- modal end -->

                  <!-- Modal -->
                  <div class="sign_up_modal modal fade" id="buyusedcarModal" data-backdrop="static"
                    data-keyboard="false" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body container p60">
                          <div class="row">
                            <div class="col-lg-12">
                              <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                  <a class="nav-link active" id="buyusedcarhome-tab" data-bs-toggle="tab"
                                    href="#buyusedcarhome" role="tab" aria-controls="buyusedcarhome"
                                    aria-selected="true">Login</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="buyusedcarprofile-tab" data-bs-toggle="tab"
                                    href="#buyusedcarprofile" role="tab" aria-controls="buyusedcarprofile"
                                    aria-selected="false">Register</a>
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="tab-content container p0" id="myTabContent">
                            <div class="row mt30 tab-pane fade show active" id="buyusedcarhome" role="tabpanel"
                              aria-labelledby="buyusedcarhome-tab">
                              <div class="col-lg-12">
                                <div class="login_form">
                                  <!-- <p>New to Cars.com? <a href="page-register.html">Sign up.</a> Are you a dealer?</p> -->
                                  <form action="userdealerlogin" method="post">
                                    <input type="hidden" name="val" value="buyusedcar">
                                    <div class="mb-2 mr-sm-2">
                                      <label class="form-label">Username or email address *</label>
                                      <input type="email" name="email" class="form-control">
                                    </div>
                                    <div class="form-group mb5">
                                      <label class="form-label">Password *</label>
                                      <input type="password" name="password" class="form-control">
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <!-- <input type="checkbox" class="custom-control-input" id="exampleCheck3"> -->
                                      <!-- <label class="custom-control-label" for="exampleCheck3">Remember me</label> -->
                                      <a class="btn-fpswd float-end" href="forgotpasswordpage">Lost your password?</a>
                                    </div>
                                    <button type="submit" class="btn btn-log btn-thm mt5">Sign in</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                            <div class="row mt30 tab-pane fade" id="buyusedcarprofile" role="tabpanel"
                              aria-labelledby="buyusedcarprofile-tab">
                              <div class="col-lg-12">
                                <div class="sign_up_form">
                                  <p>By registering your user account will be created.</p>
                                  <form action="sendotptouser" method="post">
                                    <input type="hidden" name="val" value="buyusedcar">

                                    <div class="row">
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">Name</label>
                                          <input type="text" name="userName" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">City</label>
                                          <input type="text" name="userAddress" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Phone</label>
                                          <input type="text" name="userPhoneNumber" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Email</label>
                                          <input type="email" name="userEmail" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group mb20">
                                          <label class="form-label">Password</label>
                                          <input type="password" name="userPassword" class="form-control">
                                        </div>
                                      </div>
                                      <!-- <div class="col-lg-6">
                      <div
                          class="form-group mb20">
                          <label
                              class="form-label">Confirm
                              Password</label>
                          <input type="password"
                              class="form-control">
                      </div>
                  </div> -->
                                    </div>
                                    <button type="submit" class="btn btn-signup btn-thm mb0">Sign
                                      Up</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- modal end -->
                  <!-- Modal -->
                  <div class="sign_up_modal modal fade" id="sellyourcarModal" data-backdrop="static"
                    data-keyboard="false" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body container p60">
                          <div class="row">
                            <div class="col-lg-12">
                              <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                  <a class="nav-link active" id="sellyourcarhome-tab" data-bs-toggle="tab"
                                    href="#sellyourcarhome" role="tab" aria-controls="sellyourcarhome"
                                    aria-selected="true">Login</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" id="sellyourcarprofile-tab" data-bs-toggle="tab"
                                    href="#sellyourcarprofile" role="tab" aria-controls="sellyourcarprofile"
                                    aria-selected="false">Register</a>
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="tab-content container p0" id="myTabContent">
                            <div class="row mt30 tab-pane fade show active" id="sellyourcarhome" role="tabpanel"
                              aria-labelledby="sellyourcarhome-tab">
                              <div class="col-lg-12">
                                <div class="login_form">
                                  <!-- <p>New to Cars.com? <a href="page-register.html">Sign up.</a> Are you a dealer?</p> -->
                                  <form action="userdealerlogin" method="post">
                                    <input type="hidden" name="val" value="sellyourcar">
                                    <div class="mb-2 mr-sm-2">
                                      <label class="form-label">Username or email address *</label>
                                      <input type="email" name="email" class="form-control">
                                    </div>
                                    <div class="form-group mb5">
                                      <label class="form-label">Password *</label>
                                      <input type="password" name="password" class="form-control">
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                      <!-- <input type="checkbox" class="custom-control-input" id="exampleCheck3"> -->
                                      <!-- <label class="custom-control-label" for="exampleCheck3">Remember me</label> -->
                                      <a class="btn-fpswd float-end" href="forgotpasswordpage">Lost your password?</a>
                                    </div>
                                    <button type="submit" class="btn btn-log btn-thm mt5">Sign in</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                            <div class="row mt30 tab-pane fade" id="sellyourcarprofile" role="tabpanel"
                              aria-labelledby="sellyourcarprofile-tab">
                              <div class="col-lg-12">
                                <div class="sign_up_form">
                                  <p>By registering your user account will be created.</p>
                                  <form action="sendotptouser" method="post">
                                    <input type="hidden" name="val" value="sellyourcar">

                                    <div class="row">
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">Name</label>
                                          <input type="text" name="userName" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label class="form-label">City</label>
                                          <input type="text" name="userAddress" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Phone</label>
                                          <input type="text" name="userPhoneNumber" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group">
                                          <label class="form-label">Email</label>
                                          <input type="email" name="userEmail" class="form-control">
                                        </div>
                                      </div>
                                      <div class="col-lg-12">
                                        <div class="form-group mb20">
                                          <label class="form-label">Password</label>
                                          <input type="password" name="userPassword" class="form-control">
                                        </div>
                                      </div>
                                      <!-- <div class="col-lg-6">
                     <div
                         class="form-group mb20">
                         <label
                             class="form-label">Confirm
                             Password</label>
                         <input type="password"
                             class="form-control">
                     </div>
                 </div> -->
                                    </div>
                                    <button type="submit" class="btn btn-signup btn-thm mb0">Sign
                                      Up</button>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- modal end -->
                   <!-- Modal Start-->
                   <div class="sign_up_modal modal fade" id="detailslogin"
                   data-backdrop="static" data-keyboard="false" tabindex="-1"
                   aria-hidden="true">
                   <div class="modal-dialog modal-dialog-centered">
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="btn-close"
                                   data-bs-dismiss="modal" aria-label="Close"></button>
                           </div>
                           <div class="modal-body container p60">
                               <div class="row">
                                   <div class="col-lg-12">
                                       <ul class="sign_up_tab nav nav-tabs" id="myTab"
                                           role="tablist">
                                           <li class="nav-item">
                                               <a class="nav-link active" id="login-tab"
                                                   data-bs-toggle="tab" href="#login"
                                                   role="tab" aria-controls="login"
                                                   aria-selected="true">Login</a>
                                           </li>
                                           <li class="nav-item">
                                               <a class="nav-link" id="register-tab"
                                                   data-bs-toggle="tab" href="#register"
                                                   role="tab" aria-controls="register"
                                                   aria-selected="false">Register</a>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="tab-content container p0" id="myTabContent">
                                   <div class="row mt30 tab-pane fade show active"
                                       id="login" role="tabpanel"
                                       aria-labelledby="login-tab">
                                       <div class="col-lg-12">
                                           <div class="login_form">
                                               <!-- <p>New to Cars.com? <a
                                                       href="page-register.html">Sign
                                                       up.</a> Are you a dealer?</p> -->
                                               <form action="userdealerlogin"
                                                   method="post">
                                                   <input type="hidden" name="val"
                                                       value="newcaruser">
                                                   <input type="hidden" name="varid"
                                                       value="${cars.carVariantId}">
                                                   <div class="mb-2 mr-sm-2">
                                                       <label
                                                           class="form-label">Username
                                                           or email address *</label>
                                                       <input type="email" name="email"
                                                           class="form-control">
                                                   </div>
                                                   <div class="form-group mb5">
                                                       <label
                                                           class="form-label">Password
                                                           *</label>
                                                       <input type="password"
                                                           name="password"
                                                           class="form-control">
                                                   </div>
                                                   <div
                                                       class="custom-control custom-checkbox">
                                                       <!-- <input type="checkbox"
                                                           class="custom-control-input"
                                                           id="exampleCheck3"> -->
                                                       <!-- <label
                                                           class="custom-control-label"
                                                           for="exampleCheck3">Remember
                                                           me</label> -->
                                                       <a class="btn-fpswd float-end"
                                                           href="forgotpasswordpage">Lost your
                                                           password?</a>
                                                   </div>
                                                   <button type="submit"
                                                       class="btn btn-log btn-thm mt5">Sign
                                                       in</button>
                                               </form>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="row mt30 tab-pane fade" id="register"
                                       role="tabpanel" aria-labelledby="register-tab">
                                       <div class="col-lg-12">
                                           <div class="sign_up_form">
                                            <p>By registering your user account will be created.</p>
                                               <form action="sendotptouser"
                                                   method="post">
                                                   <input type="hidden" name="val"
                                                       value="newcaruser">
                                                   <input type="hidden" name="varid"
                                                       value="${cars.carVariantId}">
                                                   <div class="row">
                                                       <div class="col-lg-6">
                                                           <div class="form-group">
                                                               <label
                                                                   class="form-label">Name</label>
                                                               <input type="text"
                                                                   name="userName"
                                                                   class="form-control">
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-6">
                                                           <div class="form-group">
                                                               <label
                                                                   class="form-label">City</label>
                                                               <input type="text"
                                                                   name="userAddress"
                                                                   class="form-control">
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-12">
                                                           <div class="form-group">
                                                               <label
                                                                   class="form-label">Phone</label>
                                                               <input type="text"
                                                                   name="userPhoneNumber"
                                                                   class="form-control">
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-12">
                                                           <div class="form-group">
                                                               <label
                                                                   class="form-label">Email</label>
                                                               <input type="email"
                                                                   name="userEmail"
                                                                   class="form-control">
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-12">
                                                           <div
                                                               class="form-group mb20">
                                                               <label
                                                                   class="form-label">Password</label>
                                                               <input type="password"
                                                                   name="userPassword"
                                                                   class="form-control">
                                                           </div>
                                                       </div>
                                                      
                                                   </div>
                                                   <button type="submit"
                                                       class="btn btn-signup btn-thm mb0">Sign
                                                       Up</button>
                                               </form>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- Modal End-->
                  <!-- Main Header Nav For Mobile -->
                  <div id="page" class="stylehome1 h0">
                    <div class="mobile-menu">
                      <div class="header stylehome1">
                        <div class="mobile_menu_bar">
                          <a class="menubar" href="#menu"><small>Menu</small><span></span></a>
                        </div>
                        <div class="mobile_menu_main_logo"><img class="nav_logo_img img-fluid"
                            src="images-ibc/m-logo.png"    alt="images-ibc/m-logo.png"></div>
                      </div>
                    </div>
                    <!-- /.mobile-menu -->
                    <nav id="menu" class="stylehome1">
                      <ul>
                        <li><a href="index"><span>Home</span></a></li>
                        <%if(dealerData==null && userData!=null ){%>
                          <li><a href="newcarlist"><span>New Cars</span></a></li>
                          <%}%>
                            <%if(dealerData!=null){%>
                              <li>
                                <a href="usedcarlist-dealer"><span class="title">Used Cars</span></a>
                              </li>

                              <%}else if(userData!=null){%>
                                <li> <a href=""><span class="title">Used Cars</span></a>
                                  <ul>
                                    <li><a href="usedcarlist-user">Buy Used Cars</a></li>
                                    <li><a href="gotoaddusedcardetails">Sell Your Car</a></li>
                                  </ul>
                                </li>
                                <%}else{%>
                                  <li><a href=""><span class="title">Used Cars</span></a>
                                    <ul>
                                      <li><a href="" data-bs-toggle="modal" data-bs-target="#buyusedcarModal">Buy Used
                                          Cars</a></li>
                                      <li><a href="gotoaddusedcardetails">Sell Your Car</a></li>
                                    </ul>
                                  </li>
                                  <%}%>
                                    </li>
                                    <li>
                                      <a href="aboutus"><span>About Us</span></a>
                                    </li>
                                    <li>
                                      <a href="contactus"><span>Contact Us</span></a>
                                    </li>
                                    <%if(userData!=null){%>
                                      <li class="add_listing">
                                        <a href="userdashboard">Profile</a>
                                      </li>
                                      <%}else if(dealerData!=null){%>
                                        <li class="add_listing">
                                          <a href="dealerdashboard">Profile</a>
                                        </li>
                                        <%}else{%>
                                          <li class="add_listing">
                                            <a href="userdealerlogin?val=navigate" data-bs-toggle="modal"
                                              data-bs-target="#logInModal">Login | Register</a>
                                          </li>
                                          <%}%>
                                            <!-- Only for Mobile View -->
                                            <li class="mm-add-listing">
                                              <span class="border-none">
                                                <span class="mmenu-contact-info">
                                                  <span class="phone-num"><i class="flaticon-map"></i> <a
                                                      href="#">3,Satkar Avenue,Nana-Chiloda,Ahmedabad-382330</a></span>
                                                  <span class="phone-num"><i class="flaticon-phone-call"></i> <a
                                                      href="tel:7622893333">+91 7622893333</a></span>
                                                  <span class="phone-num"><i class="flaticon-clock"></i> <a href="#">Mon
                                                      - Fri 9:00 AM -
                                                      9:00 PM</a></span>
                                                </span>
                                                <span class="social-links">
                                                  <a href="#"><span class="fab fa-facebook-f"></span></a>
                                                  <a href="#"><span class="fab fa-twitter"></span></a>
                                                  <a href="#"><span class="fab fa-instagram"></span></a>
                                                  <a href="#"><span class="fab fa-youtube"></span></a>
                                                  <a href="#"><span class="fab fa-pinterest"></span></a>
                                                </span>
                                              </span>
                                            </li>
                      </ul>
                    </nav>
                  </div>



                  <!-- Home Design -->
                  <section class="home-one bg-home1">
                    <div class="container">
                      <div class="row posr">
                        <div class="col-lg-10 m-auto">
                          <div class="home_content home1_style">
                            <div class="home-text text-center mb30">
                              <h2 class="title"><span class="aminated-object1"><img class="objects"
                                    src="images-ibc/home/title-bottom-border.svg" alt=""></span>Find Your Next Match
                              </h2>
                              <p class="para">Find the right price, dealer and advice.</p>
                            </div>
                            <div class="advance_search_panel">
                              <div class="row">
                                <div class="col-lg-12">
                                  <ul class="nav nav-pills justify-content-center" id="pills-tab" role="tablist">
                                    <!-- <li class="nav-item" role="presentation">
                                      <button class="nav-link active" id="pills-allstatus-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-allstatus" type="button" role="tab"
                                        aria-controls="pills-allstatus" aria-selected="true">All Status</button>
                                    </li> -->
                                    <li class="nav-item" role="presentation">
                                      <button class="nav-link active" id="pills-newcar-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-newcar" type="button" role="tab"
                                        aria-controls="pills-newcar" aria-selected="false">New Cars</button>
                                    </li>
                                    <!-- <li class="nav-item" role="presentation">
                                      <button class="nav-link" id="pills-usedcar-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-usedcar" type="button" role="tab"
                                        aria-controls="pills-usedcar" aria-selected="false">Used Cars</button>
                                    </li> -->
                                    
                                  </ul>
                                  <div class="adss_bg_stylehome1">
                                    <div class="tab-content" id="pills-tabContent">
                                      <!-- <div class="tab-pane fade" id="pills-usedcar" role="tabpanel"
                                      aria-labelledby="pills-usedcar-tab">
                                      <div class="row">
                                        <div class="col-lg-12">
                                          <div class="home1_advance_search_wrapper">
                                            <ul class="mb0 text-center">
                                              <form action="usedcarlist">
                                              <li class="list-inline-item">
                                                <div class="select-boxes">
                                                  <div class="car_brand">
                                                    <h6 class="title">Min Budget(in lacs)</h6>
                                                    <select class="selectpicker" name="lowBudgetNewCar" onchange="checkBudgetNewCar()" id="lowbudgetnewcar">
                                                      <option>Select Min Budget</option>
                                                      <option>0</option>
                                                      <option>5</option>
                                                      <option>10</option>
                                                      <option>15</option>
                                                      <option>20</option>
                                                      <option>30</option>
                                                    </select>
                                                  </div>
                                                </div>
                                              </li>
                                              <li class="list-inline-item">
                                                <div class="select-boxes">
                                                  <div class="car_models">
                                                    <h6 class="title">Max Budget(in lacs)</h6>
                                                    <select class="selectpicker" name="highBudgetNewCar" onchange="checkBudgetNewCar()" id="highbudgetnewcar">
                                                      <option>Select Max Budget</option>
                                                      <option value="5">5</option>
                                                      <option value="10">10</option>
                                                      <option value="15">15</option>
                                                      <option value="20">20</option>
                                                      <option value="30">30</option>
                                                      <option value="50">50</option>
                                                      <option value="50+">50+</option>
                                                    </select>
                                                  </div>
                                                </div>
                                              </li>
                                              <li class="list-inline-item">
                                                <div class="select-boxes">
                                                  <div class="car_prices">
                                                    <h6 class="title">Price</h6>
                                                    <select class="selectpicker">
                                                      <option>All Price</option>
                                                      <option>No max Price</option>
                                                      <option>$2,000</option>
                                                      <option>$5,000</option>
                                                      <option>$10,000</option>
                                                      <option>$15,000</option>
                                                      <option>$5,000</option>
                                                    </select>
                                                  </div>
                                                </div>
                                              </li>
                                              <li class="list-inline-item">
                                                <div class="select-boxes">
                                                  <button  type="submit" class="btn btn-thm advnc_search_form_btn"
                                                  id="searchnewcarbutton"><span
                                                      class="flaticon-magnifiying-glass" ></span>Search</button>
                                                </div>
                                              </li>
                                            </form>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                    </div> -->
                                      <div class="tab-pane fade show active" id="pills-newcar" role="tabpanel"
                                        aria-labelledby="pills-newcar-tab">
                                        <div class="row">
                                          <div class="col-lg-12">
                                            <div class="home1_advance_search_wrapper">
                                              <ul class="mb0 text-center">
                                                <form action="newcarlist">
                                                <li class="list-inline-item">
                                                  <div class="select-boxes">
                                                    <div class="car_brand">
                                                      <h6 class="title">Min Budget(in lacs)</h6>
                                                      <select class="selectpicker" name="lowBudgetNewCar" onchange="checkBudgetNewCar()" id="lowbudgetnewcar">
                                                        <option>Select Min Budget</option>
                                                        <option>0</option>
                                                        <option>5</option>
                                                        <option>10</option>
                                                        <option>15</option>
                                                        <option>20</option>
                                                        <option>30</option>
                                                      </select>
                                                    </div>
                                                  </div>
                                                </li>
                                                <li class="list-inline-item">
                                                  <div class="select-boxes">
                                                    <div class="car_models">
                                                      <h6 class="title">Max Budget(in lacs)</h6>
                                                      <select class="selectpicker" name="highBudgetNewCar" onchange="checkBudgetNewCar()" id="highbudgetnewcar">
                                                        <option>Select Max Budget</option>
                                                        <option value="5">5</option>
                                                        <option value="10">10</option>
                                                        <option value="15">15</option>
                                                        <option value="20">20</option>
                                                        <option value="30">30</option>
                                                        <option value="50">50</option>
                                                        <option value="50+">50+</option>
                                                      </select>
                                                    </div>
                                                  </div>
                                                </li>
                                                <li class="list-inline-item">
                                                  <div class="select-boxes">
                                                    <div class="car_prices">
                                                      <!-- <h6 class="title">Price</h6>
                                                      <select class="selectpicker">
                                                        <option>All Price</option>
                                                        <option>No max Price</option>
                                                        <option>$2,000</option>
                                                        <option>$5,000</option>
                                                        <option>$10,000</option>
                                                        <option>$15,000</option>
                                                        <option>$5,000</option>
                                                      </select> -->
                                                    </div>
                                                  </div>
                                                </li>
                                                <li class="list-inline-item">
                                                  <div class="select-boxes">
                                                    <button  type="submit" class="btn btn-thm advnc_search_form_btn"
                                                    id="searchnewcarbutton"><span
                                                        class="flaticon-magnifiying-glass" ></span>Search</button>
                                                  </div>
                                                </li>
                                              </form>
                                              </ul>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>

                  <!-- Car Category -->
                  <section class="car-category mobile_space bgc-f9 z-2 pb100">
                    <div class="container">
                      <div class="row">
                        <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                          data-wow-delay="0.1s">
                          <a href="newcarlist?type=Compact SUV">
                            <div class="category_item">
                              <div class="thumb">
                                <img src="images-ibc/category-item/1.png" alt="1.png">
                              </div>
                              <div class="details">
                                <p class="title">Compact</p>
                              </div>
                            </div>
                          </a>
                        </div>
                        <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                          data-wow-delay="0.3s">
                          <a href="newcarlist?type=Sedan">
                            <div class="category_item">
                              <div class="thumb">
                                <img src="images-ibc/category-item/2.png" alt="2.png">
                              </div>
                              <div class="details">
                                <p class="title">Sedan</p>
                              </div>
                            </div>
                          </a>
                        </div>
                        <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                          data-wow-delay="0.5s">
                          <a href="newcarlist?type=SUV">
                            <div class="category_item">
                              <div class="thumb">
                                <img src="images-ibc/category-item/3.png" alt="3.png">
                              </div>
                              <div class="details">
                                <p class="title">SUV</p>
                              </div>
                            </div>
                          </a>
                        </div>
                        <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                          data-wow-delay="0.7s">
                          <a href="newcarlist?type=Hatchback">
                            <div class="category_item">
                              <div class="thumb">
                                <img src="images-ibc/category-item/4.png" alt="4.png">
                              </div>
                              <div class="details">
                                <p class="title">Hatchback</p>
                              </div>
                            </div>
                          </a>
                        </div>
                        <div class="col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.9s">
                          <a href="newcarlist?type=Coupe">
                            <div class="category_item">
                              <div class="thumb">
                                <img src="images-ibc/category-item/5.png" alt="5.png">
                              </div>
                              <div class="details">
                                <p class="title">Coupe</p>
                              </div>
                            </div>
                        </div>
                        </a>
                      </div>
                    </div>
                  </section>





                  <!-- Featured Product  -->
                  <section class="featured-product">
                    <div class="container">
                      <div class="row justify-content-center">
                        <div class="col-lg-8">
                          <div class="main-title text-center">
                            <h2>Featured Listings</h2>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="popular_listing_sliders row">
                            <!-- Nav tabs -->
                            <div class="nav nav-tabs col-lg-6 justify-content-center" role="tablist">
                              <!-- <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All
                                Status</button> -->
                              <button class="nav-link active" id="nav-shopping-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-shopping" role="tab" aria-controls="nav-shopping"
                                aria-selected="true">New Cars</button>
                              <!-- <button class="nav-link" id="nav-hotels-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-hotels" role="tab" aria-controls="nav-hotels"
                                aria-selected="false">Used Cars</button> -->
                            </div>



                            <!-- Tab panes -->
                            <div class="tab-content col-lg-12" id="nav-tabContent">
                              <div class="tab-pane fade show active" id="nav-shopping" role="tabpanel"
                                aria-labelledby="nav-shopping-tab">
                                <div class="row">
                                  <!-- CARLIST 1 -->
                                  <div class="col-sm-6 col-xl-3">
                                    <c:forEach items="${carlist1}" var="cars">
                                      <div class="car-listing">
                                        <div class="thumb">
                                          <div class="tag">NEW</div>
                                          <img src="pictures\newcar${cars.imageFrontView}"
                                            onerror="this.src='images-ibc/no-image.png';" alt="No image found">
                                          <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                              <%if(userData!=null || dealerData!=null){%>
                                                <li class="list-inline-item"><a
                                                    href="newcardetails?vid=${cars.carVariantId}"
                                                    class="btn btn-outline-primary btn-sm">Details</a>
                                                </li>
                                                <%}else{%>
                                                  <li class="list-inline-item"><a href="" data-bs-toggle="modal"
                                                      data-bs-target="#detailslogin"
                                                      class="btn btn-outline-primary btn-sm">Details</a>
                                                  </li>
                                                  <%}%>
                                            </ul>
                                          </div>
                                        </div>
                                        <div class="details">
                                          <div class="wrapper">
                                            <h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
                                            <%if(userData!=null || dealerData!=null){%>
                                              <h6 class="title"><a
                                                  href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
                                                  <span>${cars.carModelName}</span><span> -
                                                    ${cars.carManufacturingYear}</span></a>

                                              </h6>
                                              <%}else{%>
                                                <h6 class="title"><a href="" data-bs-toggle="modal"
                                                    data-bs-target="#detailslogin"><span>${cars.carBrand}</span>
                                                    <span>${cars.carModelName}</span><span> -
                                                      ${cars.carManufacturingYear}</span></a>
                                                </h6>
                                                <%}%>
                                          </div>
                                         
                                          <div class="listing_footer">
                                            <ul class="mb0">
                                              <li class="list-inline-item"><span
                                                  class="flaticon-road-perspective me-2 "></span>${cars.carMileage}
                                                Kmpl</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gas-station me-2"></span>${cars.carFuelType}</a>
                                              </li>
                                              <li class="list-inline-item"><span class="me-2"><i
                                                    class="fas fa-car"></i></span>${cars.carBodyType}</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gear me-2"></span>${cars.carTransmissionType}</a>
                                              </li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                          
                                    </c:forEach>
                                  </div>
                                  <!-- CARLIST 1 END -->

                                  <!-- CARLIST 2 START -->
                                  <div class="col-sm-6 col-xl-3">
                                    <!-- Car Listing Starts -->
                                    <c:forEach items="${carlist2}" var="cars">

                                      <div class="car-listing">
                                        <div class="thumb">
                                          <div class="tag">NEW</div>
                                          <img src="pictures\newcar${cars.imageFrontView}"
                                            onerror="this.src='images-ibc/no-image.png';" alt="No image found">
                                          <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                              <%if(userData!=null || dealerData!=null){%>
                                                <li class="list-inline-item"><a
                                                    href="newcardetails?vid=${cars.carVariantId}"
                                                    class="btn btn-outline-primary btn-sm">Details</a>
                                                </li>
                                                <%}else{%>
                                                  <li class="list-inline-item"><a href="" data-bs-toggle="modal"
                                                      data-bs-target="#detailslogin"
                                                      class="btn btn-outline-primary btn-sm">Details</a>
                                                  </li>
                                                  <%}%>
                                            </ul>
                                          </div>
                                        </div>
                                        <div class="details">
                                          <div class="wrapper">

                                            <h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
                                            <%if(userData!=null || dealerData!=null){%>
                                              <h6 class="title"><a
                                                  href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
                                                  <span>${cars.carModelName}</span><span> -
                                                    ${cars.carManufacturingYear}</span></a>

                                              </h6>
                                              <%}else{%>
                                                <h6 class="title"><a href="" data-bs-toggle="modal"
                                                    data-bs-target="#detailslogin"><span>${cars.carBrand}</span>
                                                    <span>${cars.carModelName}</span><span> -
                                                      ${cars.carManufacturingYear}</span></a>
                                                </h6>
                                                <%}%>

                                          </div>
                                          <div class="listing_footer">
                                            <ul class="mb0">
                                              <li class="list-inline-item"><span
                                                  class="flaticon-road-perspective me-2 "></span>${cars.carMileage}
                                                Kmpl</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gas-station me-2"></span>${cars.carFuelType}</a>
                                              </li>
                                              <li class="list-inline-item"><span class="me-2"><i
                                                    class="fas fa-car"></i></span>${cars.carBodyType}</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gear me-2"></span>${cars.carTransmissionType}</a>
                                              </li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                    </c:forEach>
                                  </div>
                                  <!-- CARLIST 2 END -->

                                  <!-- CARLIST 3 start -->
                                  <div class="col-sm-6 col-xl-3">
                                    <!-- Car Listing Starts -->
                                    <c:forEach items="${carlist3}" var="cars">

                                      <div class="car-listing">
                                        <div class="thumb">
                                          <div class="tag">NEW</div>
                                          <img src="pictures\newcar${cars.imageFrontView}"
                                            onerror="this.src='images-ibc/no-image.png';" alt="No image found">
                                          <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                              <%if(userData!=null || dealerData!=null){%>
                                                <li class="list-inline-item"><a
                                                    href="newcardetails?vid=${cars.carVariantId}"
                                                    class="btn btn-outline-primary btn-sm">Details</a>
                                                </li>
                                                <%}else{%>
                                                  <li class="list-inline-item"><a href="" data-bs-toggle="modal"
                                                      data-bs-target="#detailslogin"
                                                      class="btn btn-outline-primary btn-sm">Details</a>
                                                  </li>
                                                  <%}%>
                                            </ul>
                                          </div>
                                        </div>
                                        <div class="details">
                                          <div class="wrapper">
                                            <h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
                                            <%if(userData!=null || dealerData!=null){%>
                                              <h6 class="title"><a
                                                  href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
                                                  <span>${cars.carModelName}</span><span> -
                                                    ${cars.carManufacturingYear}</span></a>

                                              </h6>
                                              <%}else{%>
                                                <h6 class="title"><a href="" data-bs-toggle="modal"
                                                    data-bs-target="#detailslogin"><span>${cars.carBrand}</span>
                                                    <span>${cars.carModelName}</span><span> -
                                                      ${cars.carManufacturingYear}</span></a>
                                                </h6>
                                                <%}%>
                                           
                                          </div>
                                          <div class="listing_footer">
                                            <ul class="mb0">
                                              <li class="list-inline-item"><span
                                                  class="flaticon-road-perspective me-2 "></span>${cars.carMileage}
                                                Kmpl</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gas-station me-2"></span>${cars.carFuelType}</a>
                                              </li>
                                              <li class="list-inline-item"><span class="me-2"><i
                                                    class="fas fa-car"></i></span>${cars.carBodyType}</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gear me-2"></span>${cars.carTransmissionType}</a>
                                              </li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                    </c:forEach>
                                  </div>
                                  <!-- CARLIST 3 END -->

                                  <!-- CARLIST 4 Starts -->
                                  <div class="col-sm-6 col-xl-3">
                                    <!-- Car Listing Starts -->
                                    <c:forEach items="${carlist4}" var="cars">
                                      <div class="car-listing">
                                        <div class="thumb">
                                          <div class="tag">NEW</div>
                                          <img src="pictures\newcar${cars.imageFrontView}"
                                            onerror="this.src='images-ibc/no-image.png';" alt="No image found">
                                          <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                              <%if(userData!=null || dealerData!=null){%>
                                                <li class="list-inline-item"><a
                                                    href="newcardetails?vid=${cars.carVariantId}"
                                                    class="btn btn-outline-primary btn-sm">Details</a>
                                                </li>
                                                <%}else{%>
                                                  <li class="list-inline-item"><a href="" data-bs-toggle="modal"
                                                      data-bs-target="#detailslogin"
                                                      class="btn btn-outline-primary btn-sm">Details</a>
                                                  </li>
                                                  <%}%>
                                            </ul>
                                          </div>
                                        </div>
                                        <div class="details">
                                          <div class="wrapper">
                                            <h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
                                            <%if(userData!=null || dealerData!=null){%>
                                              <h6 class="title"><a
                                                  href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
                                                  <span>${cars.carModelName}</span><span> -
                                                    ${cars.carManufacturingYear}</span></a>

                                              </h6>
                                              <%}else{%>
                                                <h6 class="title"><a href="" data-bs-toggle="modal"
                                                    data-bs-target="#detailslogin"><span>${cars.carBrand}</span>
                                                    <span>${cars.carModelName}</span><span> -
                                                      ${cars.carManufacturingYear}</span></a>
                                                </h6>
                                                <%}%>
                                          </div>
                                          <div class="listing_footer">
                                            <ul class="mb0">
                                              <li class="list-inline-item"><span
                                                  class="flaticon-road-perspective me-2 "></span>${cars.carMileage}
                                                Kmpl</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gas-station me-2"></span>${cars.carFuelType}</a>
                                              </li>
                                              <li class="list-inline-item"><span class="me-2"><i
                                                    class="fas fa-car"></i></span>${cars.carBodyType}</a>
                                              </li>
                                              <li class="list-inline-item"><span
                                                  class="flaticon-gear me-2"></span>${cars.carTransmissionType}</a>
                                              </li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                    </c:forEach>
                                  </div>
                                  <!-- CARLIST 4 END -->
                                </div>
                              </div>

                              <!-- USED CAR LISTING  -->

                            </div>
                            <!-- TAB CONTENT END -->
                          </div>
                        </div>
                      </div>
                      <div class="row mt20">
                        <div class="col-lg-12">
                          <div class="text-center">
                            <a href="newcarlist" class="more_listing">Show All Cars <span class="icon"><span
                                  class="fas fa-plus"></span></span></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>

                  <!-- Why Chose us  -->
                  <section class="why-chose pt0 pb90">
                    <div class="container">
                      <div class="row justify-content-center">
                        <div class="col-lg-8">
                          <div class="main-title text-center">
                            <h2>Why Choose Us?</h2>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                          <div class="why_chose_us">
                            <div class="icon float-start"><span class="flaticon-price-tag"></span></div>
                            <div class="details">
                              <h5 class="title">One stop shop</h5>
                              <p>
                                Time saving Platform were all services available on figure tips.
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                          <div class="why_chose_us">
                            <div class="icon float-start style2"><span class="flaticon-car"></span></div>
                            <div class="details">
                              <h5 class="title">Quality</h5>
                              <p>we are here to provide delightfull experience to our customers. 
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                          <div class="why_chose_us">
                            <div class="icon float-start style3"><span class="flaticon-trust"></span></div>
                            <div class="details">
                              <h5 class="title">Transparency with best deals</h5>
                              <p>We are promising about our services that deals will be transparent and clear,we follow customers first policy.
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>



                  <!-- Our Popular Listing -->
                  <!-- <section class="popular-listing pb80 bg-ptrn1 bgc-heading-color">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2 class="text-white">Popular Listings</h2>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="home1_popular_listing">
            <div class="listing_item_4grid_slider dots_none">
              <div class="item">
                <div class="car-listing">
                  <div class="thumb">
                    <div class="tag">FEATURED</div>
                    <img src="images-ibc/listing/1.jpg" alt="1.jpg">
                    <div class="thmb_cntnt2">
                      <ul class="mb0">
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-photo-camera mr3"></span> 22</a></li>
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-play-button mr3"></span> 3</a></li>
                      </ul>
                    </div>
                    <div class="thmb_cntnt3">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span class="flaticon-shuffle-arrows"></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-heart"></span></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="details">
                    <div class="wrapper">
                      <h5 class="price">$129</h5>
                      <h6 class="title"><a href="page-car-single-v1.html">Volvo XC90 - 2020</a></h6>
                      <div class="listign_review">
                        <ul class="mb0">
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#">4.7</a></li>
                          <li class="list-inline-item">(684 reviews)</li>
                        </ul>
                      </div>
                    </div>
                    <div class="listing_footer">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-road-perspective me-2"></span>77362</a></li>
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-gas-station me-2"></span>Diesel</a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-gear me-2"></span>Automatic</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="car-listing">
                  <div class="thumb">
                    <div class="tag">FEATURED</div>
                    <img src="images-ibc/listing/2.jpg" alt="2.jpg">
                    <div class="thmb_cntnt2">
                      <ul class="mb0">
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-photo-camera mr3"></span> 22</a></li>
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-play-button mr3"></span> 3</a></li>
                      </ul>
                    </div>
                    <div class="thmb_cntnt3">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span class="flaticon-shuffle-arrows"></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-heart"></span></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="details">
                    <div class="wrapper">
                      <h5 class="price">$56</h5>
                      <h6 class="title"><a href="page-car-single-v1.html">Mercedes-Benz S 560 - 2021</a></h6>
                      <div class="listign_review">
                        <ul class="mb0">
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#">4.7</a></li>
                          <li class="list-inline-item">(684 reviews)</li>
                        </ul>
                      </div>
                    </div>
                    <div class="listing_footer">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-road-perspective me-2"></span>77362</a></li>
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-gas-station me-2"></span>Diesel</a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-gear me-2"></span>Automatic</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="car-listing">
                  <div class="thumb">
                    <div class="tag">FEATURED</div>
                    <img src="images-ibc/listing/3.jpg" alt="3.jpg">
                    <div class="thmb_cntnt2">
                      <ul class="mb0">
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-photo-camera mr3"></span> 22</a></li>
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-play-button mr3"></span> 3</a></li>
                      </ul>
                    </div>
                    <div class="thmb_cntnt3">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span class="flaticon-shuffle-arrows"></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-heart"></span></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="details">
                    <div class="wrapper">
                      <h5 class="price">$230</h5>
                      <h6 class="title"><a href="page-car-single-v1.html">BMW M8 Gran Coupe Base - 2021</a></h6>
                      <div class="listign_review">
                        <ul class="mb0">
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#">4.7</a></li>
                          <li class="list-inline-item">(684 reviews)</li>
                        </ul>
                      </div>
                    </div>
                    <div class="listing_footer">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-road-perspective me-2"></span>77362</a></li>
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-gas-station me-2"></span>Diesel</a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-gear me-2"></span>Automatic</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="car-listing">
                  <div class="thumb">
                    <div class="tag blue">SPECIAL</div>
                    <img src="images-ibc/listing/4.jpg" alt="4.jpg">
                    <div class="thmb_cntnt2">
                      <ul class="mb0">
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-photo-camera mr3"></span> 22</a></li>
                        <li class="list-inline-item"><a class="text-white" href="#"><span
                              class="flaticon-play-button mr3"></span> 3</a></li>
                      </ul>
                    </div>
                    <div class="thmb_cntnt3">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span class="flaticon-shuffle-arrows"></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-heart"></span></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="details">
                    <div class="wrapper">
                      <h5 class="price">$478</h5>
                      <h6 class="title"><a href="page-car-single-v1.html">Nıssan Qasqai - Sky Pack</a></h6>
                      <div class="listign_review">
                        <ul class="mb0">
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#"><i class="fa fa-star"></i></a></li>
                          <li class="list-inline-item"><a href="#">4.7</a></li>
                          <li class="list-inline-item">(684 reviews)</li>
                        </ul>
                      </div>
                    </div>
                    <div class="listing_footer">
                      <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-road-perspective me-2"></span>77362</a></li>
                        <li class="list-inline-item"><a href="#"><span
                              class="flaticon-gas-station me-2"></span>Diesel</a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-gear me-2"></span>Automatic</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->
                  <!-- Testimonials  -->
                  <section class="our-testimonials-home1 pt120 pb120">
                    <div class="container">
                      <div class="row justify-content-center">
                        <div class="col-lg-8">
                          <div class="main-title text-center">
                            <h2>Testimonials</h2>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="testimonial_slider_home1">
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t1.jpeg" alt="1.png">
                                  <h4 class="title">Gopal J shah <br><small>Director of jayshree Krishna proteins Pvt
                                      Ltd</small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">We had taken the delivery of BMW 520 D from IBCCARZ
                                    they had delivered car in given time . Best service and delight full experience of
                                    car purchase.best company for deals with time saving process.</p>
                                </div>
                              </div>
                            </div>
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t2.jpeg" alt="2.png">
                                  <h4 class="title">Jay Mistry <br><small>Director of Nilamware House</small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">Best to buy from IBCARZ i had taken all premium car
                                    test drive at my door step and got the delivery of car in given time taking delivery
                                    of volov XC60 on my desired date,thanks to IBCCARZ for best purchase experience of
                                    car.</p>
                                </div>
                              </div>
                            </div>
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t3.jpeg" alt="1.png">
                                  <h4 class="title">Kalpesh patel <br><small>Director of manglam seed Ltd</small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">We had taken 5 Nexon and BMW X1 and kia seltos
                                    deliveries with IBCCARZ we saved time and got best deals with fast delivery we
                                    recommend IBCARZ for car purchase they are best Product consaltant.</p>
                                </div>
                              </div>
                            </div>
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t4.jpeg" alt="2.png">
                                  <h4 class="title">Narendra patel <br><small>CA</small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">I think IBCCARZ is one stop solution when you are
                                    planning buy a car they had given best price of my old car and best deal of my tata
                                    harrier and most important fast delivery happy and delighted with there service.</p>
                                </div>
                              </div>
                            </div>
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t5.jpeg" alt="1.png">
                                  <h4 class="title">Viren Ghia <br><small>Md creed consaltany </small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">Booked Ciaz from IBCCARZ And got best deal . Best
                                    product consultation and good process which saves customers time had great deal and
                                    delivered my car on time i would say IBCCARZ provides best deal and service.</p>
                                </div>
                              </div>
                            </div>
                            <div class="item">
                              <div class="testimonial_box">
                                <div class="thumb">
                                  <img class="rounded-circle" src="images-ibc/testimonial/t6.jpeg" alt="2.png">
                                  <h4 class="title">Naresh talli <br><small>Owner of shreenath travels</small></h4>
                                </div>
                                <div class="details">
                                  <div class="icon"><span class="fa fa-quote-left"></span></div>
                                  <p style="text-justify: auto;">I had Booked Kia Carens from IBCCARZ and got delivered
                                    in three days. They had provided the best service and i got the delivery at my
                                    requested date . Thank you IBCCARZ for best service.</p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>
                  <!-- Funfact -->
                  <section class="our-funfact pt50 pb30">
                    <div class="container">
                      <div class="row">
                        <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                          <div class="funfact_one text-center">
                            <div class="details">
                              <div class="timer">27600</div>
                              <p class="ff_title">CARS FOR SALE</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                          <div class="funfact_one text-center">
                            <div class="details">
                              <div class="timer">6500</div>
                              <p class="ff_title">DEALER REVIEWS</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                          <div class="funfact_one text-center">
                            <div class="details">
                              <div class="timer">8230</div>
                              <p class="ff_title">VISITORS PER DAY</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.7s">
                          <div class="funfact_one text-center">
                            <div class="details">
                              <div class="timer">5250</div>
                              <p class="ff_title">VERIFIED DEALERS</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>

                  <!-- Our Apps -->
                  <section class="our-app pt0">
                    <div class="container">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="app_thumb">
                            <img src="images-ibc/item/phone.png" alt="phone.png">
                          </div>
                        </div>
                        <div class="col-md-8 col-xl-5 offset-xl-1 col-xxl-4 offset-xxl-1">
                          <div class="mobile_app_widget">
                            <h5 class="subtitle text-thm">DOWNLOAD & ENJOY</h5>
                            <h3 class="title">Get the IBCCARZ Mobile App</h3>
                            <p class="para">Search through numerous of cars and find the right fit for you. Simply put
                              an enquiry to get the best deal.</p>
                            <div class="wrapper">
                              <a href="#" class="app_btns playstore me-3 d-flex float-start">
                                <span class="icon fab fa-apple me-3"></span>
                                <span class="details">
                                  <span class="smtitle">Download on the</span>
                                  <span class="stitle">Apple Store</span>
                                </span>
                              </a>
                              <a href="#" class="app_btns applestore d-flex">
                                <span class="icon fab fa-google-play me-3"></span>
                                <span class="details">
                                  <span class="smtitle">Get in on</span><br>
                                  <span class="stitle">Google Play</span>
                                </span>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>


                  <!-- Our Blog -->
                  <!-- <section class="our-blog pb90">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2>Recent Articles</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
            <div class="for_blog">
              <div class="thumb">
                <div class="tag">BLOG</div>
                <img class="img-whp" src="images-ibc/blog/1.jpg" alt="1.jpg">
              </div>
              <div class="details">
                <div class="wrapper">
                  <div class="bp_meta">
                    <ul>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-user"></span>Brooklyn Simmons</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span class="flaticon-chat"></span>12
                          Comments</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-calendar-1"></span>April 25, 2021</a></li>
                    </ul>
                  </div>
                  <h4 class="title"><a href="page-blog-single.html">2021 BMW 540i M Sport Review: Light on Sport, Heavy
                      on Tech</a></h4>
                  <a href="page-blog-single.html" class="more_listing">Read More <span class="icon"><span
                        class="fas fa-plus"></span></span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
            <div class="for_blog">
              <div class="thumb">
                <div class="tag">SUV</div>
                <img class="img-whp" src="images-ibc/blog/2.jpg" alt="2.jpg">
              </div>
              <div class="details">
                <div class="wrapper">
                  <div class="bp_meta">
                    <ul>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-user"></span>Brooklyn Simmons</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span class="flaticon-chat"></span>12
                          Comments</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-calendar-1"></span>April 25, 2021</a></li>
                    </ul>
                  </div>
                  <h4 class="title"><a href="page-blog-single.html">2022 Volkswagen Taos First Drive: Exactly as Good as
                      It Needs to Be</a></h4>
                  <a href="page-blog-single.html" class="more_listing">Read More <span class="icon"><span
                        class="fas fa-plus"></span></span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-xl-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="for_blog">
              <div class="thumb">
                <div class="tag">2021</div>
                <img class="img-whp" src="images-ibc/blog/3.jpg" alt="3.jpg">
              </div>
              <div class="details">
                <div class="wrapper">
                  <div class="bp_meta">
                    <ul>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-user"></span>Brooklyn Simmons</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span class="flaticon-chat"></span>12
                          Comments</a></li>
                      <li class="list-inline-item"><a href="page-blog-single.html"><span
                            class="flaticon-calendar-1"></span>April 25, 2021</a></li>
                    </ul>
                  </div>
                  <h4 class="title"><a href="page-blog-single.html">2021 Kia Sorento Hybrid Review: Big Vehicle With
                      Small-Vehicle Fuel Economy</a></h4>
                  <a href="page-blog-single.html" class="more_listing">Read More <span class="icon"><span
                        class="fas fa-plus"></span></span></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->

                  <!-- Our Partners -->
                  <!-- <section class="our-partner pt0 pb100">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2 class="m-3">Popular Makes</h2>
            </div>
          </div>
        </div>
        <div class="partner_divider">
          <div class="row">
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
              <div class="partner_item">
                <img src="images-ibc/partners/1.png" alt="1.png">
              </div>
            </div>
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
              <div class="partner_item">
                <img src="images-ibc/partners/2.png" alt="2.png">
              </div>
            </div>
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
              <div class="partner_item">
                <img src="images-ibc/partners/3.png" alt="3.png">
              </div>
            </div>
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.7s">
              <div class="partner_item">
                <img src="images-ibc/partners/4.png" alt="4.png">
              </div>
            </div>
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.9s">
              <div class="partner_item">
                <img src="images-ibc/partners/5.png" alt="5.png">
              </div>
            </div>
            <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.1s">
              <div class="partner_item">
                <img src="images-ibc/partners/6.png" alt="6.png">
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->

                  <!-- Our Footer -->
                  <section class="footer_one pt50 pb25">
                    <div class="container">
                      <div class="row">
                        <div class="col-md-4 col-xl-7">
                          <div class="footer_about_widget text-start" >
                            <div class="logo mb40 mb0-sm"><img src="images-ibc/logo.png"    alt="header-logo.png">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-8 col-xl-5">
                          <div class="footer_menu_widget text-start text-md-end mt15">
                            <ul>
                              <!-- <li class="list-inline-item"><a href="#">Home</a></li>
                              <li class="list-inline-item"><a href="#">Explore</a></li>
                              <li class="list-inline-item"><a href="#">Listings</a></li>
                              <li class="list-inline-item"><a href="#">Blog</a></li>
                              <li class="list-inline-item"><a href="#">Shop</a></li>
                              <li class="list-inline-item"><a href="#">Pages</a></li> -->
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <hr>
                    <div class="container pt80 pt20-sm pb70 pb0-sm">
                      <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_about_widget">
                            <h5 class="title">OFFICE</h5>
                            <p>India<br>3,Satkar Avenue,<br>Near Naroda Railway,<br>Nana Chiloda Ahmedabad-382330</p>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">NEED HELP</h5>
                            <a href="tel:+91 7622893333">
                              <div class="footer_phone">+91 7622893333</div>
                            </a>
                            <a href="mailto:info@ibccarz.com">
                              <p>info@ibccarz.com</p>
                            </a>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">OPENING HOURS</h5>
                            <p>Monday - Friday: 09:00AM - 09:00PM<br>Saturday: 09:00AM - 07:00PM<br>Sunday: Closed</p>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">KEEP IN TOUCH</h5>
                            <form class="footer_mailchimp_form" action="contactus">
                              <div class="wrapper">
                                <div class="col-auto">
                                  <input type="email" name="email" class="form-control"
                                    placeholder="Enter your email...">
                                  <button type="submit">GO</button>
                                </div>
                              </div>
                            </form>
                            <p>Get latest updates and offers.</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6 col-lg-8 col-xl-9">
                          <div class="copyright-widget mt5 text-start mb20-sm">
                            <p>MSQUARE &#169; 2022. All Rights Reserved.</p>
                          </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                          <div class="footer_social_widget text-start text-md-end">
                            <ul class="mb0">
                              <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>
                  <a class="scrollToHome" href="#"><i class="fas fa-arrow-up"></i></a>
                </div>
                <!-- Wrapper End -->
                <script>
                  console.log(document.getElementById("lowbudgetnewcar").value);
                    if(document.getElementById("lowbudgetnewcar").value=="Select Min Budget" || document.getElementById("highbudgetnewcar").value=="Select Max Budget"){
                      console.log("here");
                      document.getElementById("searchnewcarbutton").disabled = true;
                    }
                    function checkBudgetNewCar() {
                      
                      if (parseInt(document.getElementById("lowbudgetnewcar").value) > parseInt(document.getElementById("highbudgetnewcar").value)) {
                          document.getElementById("searchnewcarbutton").disabled = true;
                          alert("min should be lower than max amount");
                      } else {
                          document.getElementById("searchnewcarbutton").disabled = false;

                      }

                      if(document.getElementById("lowbudgetnewcar").value=="Select Min Budget" || document.getElementById("highbudgetnewcar").value=="Select Max Budget"){
                        console.log("here");
                        document.getElementById("searchnewcarbutton").disabled = true;
                      }
                     
                    }
   
                 
                </script>


                <script src="js-ibc/jquery-3.6.0.js"></script>
                <script src="js-ibc/jquery-migrate-3.0.0.min.js"></script>
                <script src="js-ibc/popper.min.js"></script>
                <script src="js-ibc/bootstrap.min.js"></script>
                <script src="js-ibc/bootstrap-select.min.js"></script>
                <script src="js-ibc/jquery.mmenu.all.js"></script>
                <script src="js-ibc/ace-responsive-menu.js"></script>
                <script src="js-ibc/isotop.js"></script>
                <script src="js-ibc/snackbar.min.js"></script>
                <script src="js-ibc/simplebar.js"></script>
                <script src="js-ibc/parallax.js"></script>
                <script src="js-ibc/scrollto.js"></script>
                <script src="js-ibc/jquery-scrolltofixed-min.js"></script>
                <script src="js-ibc/jquery.counterup.js"></script>
                <script src="js-ibc/wow.min.js"></script>
                <script src="js-ibc/progressbar.js"></script>
                <script src="js-ibc/slider.js"></script>
                <script src="js-ibc/timepicker.js"></script>
                <script src="js-ibc/wow.min.js"></script>
                <!-- Custom script for all pages -->
                <script src="js-ibc/script.js"></script>
          </body>

          <!-- Mirrored from creativelayers.net/themes/voiture-html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:13 GMT -->

          </html>