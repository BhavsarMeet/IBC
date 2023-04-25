<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<!-- Mirrored from creativelayers.net/themes/voiture-html/page-contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:59:09 GMT -->

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
  <div class="wrapper">
    <div class="preloader"></div>
    <!-- WEBSITE HEADER -->
    <%@ include file="../common/header-website.jsp" %>

      <!-- MOBILE HEADER  -->
      <%@ include file="../common/header-mobile.jsp" %>



        <!-- Our Contact -->
        <section class="our-contact p0 mt0 mt70-992">
          <div class="container-fluid p0">
            <div class="row">
              <div class="col-lg-12">
                <div>
                  <div class="map-area">
                    <div class="container-fluid m-0 p-0">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117493.1755213204!2d72.52869099807162!3d23.036189127060183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e812736fb0283%3A0xe661f9c334773d2a!2ssatkar%20avenue%20apartment!5e0!3m2!1sen!2sin!4v1665053229485!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                </div>
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
              </div>
            </div>
          </div>
        </section>

        <!-- Our Contact -->
        <section class="our-contact inner_page_section_spacing bgc-f9">
          <div class="container">
            <div class="row">
              <div class="col-md-4">
                <div class="contact_icon_box mb50">
                  <div class="details">
                    <h3 class="title">Contact Details</h3>
                    <p>India<br>3,Satkar Avenue,<br>Near Naroda Railway,<br>Nana Chiloda Ahmedabad-382330</p>
                    <h4 class="subtitle">+91 7622893333</h4>
                    <p>info@ibccarz.com</p>
                    <div class="footer_social_widget">
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
              <div class="col-md-8">
                <div class="form_grid">
                  <div class="wrapper">
                    <h3 class="title mb20">Contact Form</h3>
                    <form class="contact_form" name="contact_form" action="generalinquiry" method="post">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="form-label">First Name*</label>
                            <input class="form-control" name="firstName" type="text" placeholder="Joe">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="form-label">Last Name*</label>
                            <input class="form-control" name="lastName" type="text" placeholder="Shah">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="form-label">Email*</label>
                            <input class="form-control email" name="email" type="email" value="${email}" placeholder="joe@gmail.com">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label class="form-label">Phone</label>
                            <input class="form-control" type="text" name="phone" placeholder="9090909090">
                          </div>
                        </div>
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label class="form-label">Message(300 characters allowed)</label>
                            <textarea  name="message" maxlength="100" placeholder="Start typing here..." class="form-control" rows="6"></textarea>
                          </div>
                          <div class="form-group mb0">
                            <button type="submit" class="btn btn-thm">Get In Touch</button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

       <!-- Our Footer -->
       <section class="footer_one pt50 pb25">
        <div class="container">
          <div class="row">
            <div class="col-md-4 col-xl-7">
              <div class="footer_about_widget text-start">
                <div class="logo mb40 mb0-sm"><img src="images-ibc/logo.png"   alt="header-logo.png">
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
                <a href="tel:+91 7622893333"><div class="footer_phone">+91 7622893333</div></a>
                            <a href="mailto:info@ibccarz.com"><p>info@ibccarz.com</p></a>
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
                      <input type="email" name="email" class="form-control" placeholder="Enter your email...">
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
                <p>MSQUARE © 2022. All Rights Reserved.</p>
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
  <script src="js-ibc/jquery-3.6.0.js"></script>
  <script src="js-ibc/jquery-migrate-3.0.0.min.js"></script>
  <script src="js-ibc/popper.min.js"></script>
  <script src="js-ibc/bootstrap.min.js"></script>
  <script src="js-ibc/bootstrap-select.min.js"></script>
  <script src="js-ibc/jquery.mmenu.all.js"></script>
  <script src="js-ibc/ace-responsive-menu.js"></script>
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
  <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&amp;callback=initMap"></script>
  <script src="js-ibc/googlemaps1.js"></script>
  <!-- Custom script for all pages -->
  <script src="js-ibc/script.js"></script>
</body>

<!-- Mirrored from creativelayers.net/themes/voiture-html/page-contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:59:09 GMT -->

</html>