<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"
  session="true" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page import="com.model.user.UserEntity" %>
    <%@page import="com.model.dealer.DealerModel" %>


      <% UserEntity userData=(UserEntity)session.getAttribute("user"); %>
        <% DealerModel dealerData=(DealerModel)session.getAttribute("dealer"); %>

       <!-- Sidebar Panel Start -->
       <div class="listing_sidebar">
        <div class="siderbar_left_home pt20">
          <a class="sidebar_switch sidebar_close_btn float-end" href="#">X</a>
          <div class="footer_contact_widget mt100">
            <h3 class="title">Quick contact info</h3>
            <p>We at IBCCARZ going to create new experience for customers which will save there time. We will consult a proper product as per Customer requirements .we are here for Customer needs and one stop shop for Customer were they can get all services regarding car which includes buy/sell/Finance/Insurance. We are experts in automobiles industry were we can provide new purchase experience to customers. </p>
          </div>
          <div class="footer_contact_widget">
            <h5 class="title">CONTACT</h5>
            <a href="tel:+91 7622893333"><div class="footer_phone">+91 7622893333</div></a>
            <a href="mailto:info@ibccarz.com"><p>info@ibccarz.com</p></a>
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
<!-- header-top start-->
<div class="header_top home3_style dashbord_style dn-992">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-8 col-xl-7">
          <div class="header_top_contact_opening_widget text-center text-md-start">
            <ul class="mb0">
              <li class="list-inline-item"><a href="tel:7622893333"><span
                class="flaticon-phone-call"></span>+91 7622893333</a>
          </li>
          <li class="list-inline-item"><a href="#"><span class="flaticon-map"></span>3,Satkar Avenue,Nana-Chiloda</a></li>
          <li class="list-inline-item"><a href="#"><span class="flaticon-clock"></span>Mon - Fri 9:00 AM -
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
              <li class="list-inline-item"><a href="#"><span class="fab fa-instagram"></span></a></li>
              <li class="list-inline-item"><a href="#"><span class="fab fa-linkedin"></span></a></li>
            
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- header-top end-->

  <!-- Main Header Nav -->
  <header class="header-nav menu_style_home_one home3_style dashbord_style main-menu">
    <!-- Ace Responsive Menu -->
    <nav class="posr"> 
      <div class="container-fluid"> 
        <!-- Menu Toggle btn-->
        <div class="menu-toggle">
            <button type="button" id="menu-btn">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <a href="index.html" class="navbar_brand float-start dn-md">
            <img class="logo1 img-fluid" src="images-ibc/logo.png"  alt="header-logo2.png">
            <img class="logo2 img-fluid" src="images-ibc/logo.png"  alt="header-logo2.svg">
          </a>
          <!-- Responsive Menu Structure-->
          <ul id="respMenu" class="ace-responsive-menu menu_list_custom_code wa text-end"
            data-menu-style="horizontal">
            <li> <a href="index"><span class="title">Home</span></a>

            </li>
            <%if(dealerData==null && userData!=null ){%>
              <li> <a href="newcarlist"><span class="title">New Cars</span></a>

              </li>
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
                              <li><a href="" data-bs-toggle="modal" data-bs-target="#sellyourcarModal">Buy Used
                                Cars</a></li>
                        </ul>
                      </li>
                      <%}%>
                        </li>
                        <li> <a href="aboutus"><span class="title">About Us</span></a></li>
                        <li> <a href="contactus"><span class="title">Contact Us</span></a></li>
                        <%if(userData!=null){%>
                          <li class="add_listing"><a href="userdashboard">Profile</a></li>
                          <%}else if(dealerData!=null){%>
                            <li class="add_listing"><a href="dealerdashboard">Profile</a></li>
                            <%}else{%>
                              <li class="add_listing"><a href="userdealerlogin?val=navigate"
                                  data-bs-toggle="modal" data-bs-target="#logInModal">Login | Register</a></li>
                              <%}%>
                                <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a>
                                </li>
                          </ul>
                        </div>
                      </nav>
                    </header>
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
                        <label class="form-label">Username
                          or email address *</label>
                        <input type="email" name="email" class="form-control">
                      </div>
                      <div class="form-group mb5">
                        <label class="form-label">Password
                          *</label>
                        <input type="password" name="password" class="form-control">
                      </div>
                      <div class="custom-control custom-checkbox">
                        <!-- <input type="checkbox" class="custom-control-input" id="exampleCheck3"> -->
                        <!-- <label class="custom-control-label" for="exampleCheck3">Remember
                          me</label> -->
                        <a class="btn-fpswd float-end" href="forgotpasswordpage">Lost your
                          password?</a>
                      </div>
                      <button type="submit" class="btn btn-log btn-thm mt5">Sign
                        in</button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="row mt30 tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
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
    <div class="sign_up_modal modal fade" id="buyusedcarModal" data-backdrop="static" data-keyboard="false"
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
                    <a class="nav-link active" id="buyusedcarhome-tab" data-bs-toggle="tab" href="#buyusedcarhome"
                      role="tab" aria-controls="buyusedcarhome" aria-selected="true">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="buyusedcarprofile-tab" data-bs-toggle="tab" href="#buyusedcarprofile"
                      role="tab" aria-controls="buyusedcarprofile" aria-selected="false">Register</a>
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
     <div class="sign_up_modal modal fade" id="sellyourcarModal" data-backdrop="static" data-keyboard="false"
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
                   <a class="nav-link active" id="sellyourcarhome-tab" data-bs-toggle="tab" href="#sellyourcarhome"
                     role="tab" aria-controls="sellyourcarhome" aria-selected="true">Login</a>
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" id="sellyourcarprofile-tab" data-bs-toggle="tab" href="#sellyourcarprofile"
                     role="tab" aria-controls="sellyourcarprofile" aria-selected="false">Register</a>
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