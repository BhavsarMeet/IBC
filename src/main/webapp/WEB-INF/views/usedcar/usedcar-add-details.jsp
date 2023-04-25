<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html dir="ltr" lang="en">

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-add-listings.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:39 GMT -->

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
                <link rel="stylesheet" href="css-ibc/fileuploader.css">
                <link rel="stylesheet" href="css-ibc/style.css">
                <link rel="stylesheet" href="css-ibc/dashbord_navitaion.css">
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


                            <!-- Our Dashbord -->
                            <section class="bgc-f9">

                                <div class="container-fluid">
                                    <!-- <div class="row"> -->
                                    <!-- <div class="col-xxl-10 offset-xxl-2 dashboard_grid_space"> -->

                                    <c:if test="${not empty error}">
                                        <div class="toast-container"
                                            style="position: absolute; top: 90px; right: 30px; margin-top: 100px;">

                                            <div class="toast fade show" data-autohide="true">
                                                <div class="toast-header bg-danger">
                                                    <strong class="me-auto" style="font-weight: bold; color: black;"><i
                                                            class="bi-globe"></i>
                                                        Error</strong>
                                                    <button type="button" class="btn-close"
                                                        data-bs-dismiss="toast"></button>
                                                </div>
                                                <div class="toast-body">
                                                    <span style="font-weight: bold;">${error}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="new_property_form">
                                                <h4 class="title mb30">Enter the details</h4>

                                                <form action="addusedcar" method="post">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="ui_kit_select_search add_new_property mb20">
                                                                <label class="form-label">Make</label>
                                                                <input 
                                                                    class="form-control form_control" type="text"
                                                                    name="usedCarBrand" required>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarBrand" />
                                                                </span>
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="ui_kit_select_search add_new_property mb20">
                                                                <label class="form-label">Model</label>
                                                                <input
                                                                    class="form-control form_control" type="text"
                                                                    name="usedCarModelName" required>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarModelName" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="mb20">
                                                                <label class="form-label">Variant</label>
                                                                <input 
                                                                    class="form-control form_control" type="text"
                                                                    name="usedCarVariant" required>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarVariant" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="ui_kit_select_search add_new_property mb20">
                                                                <label class="form-label">Year</label>
                                                                <input 
                                                                    class="form-control form_control" type="text"
                                                                    name="usedCarYear" spellcheck="true" required>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarYear" />
                                                                </span>
                                                           
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="ui_kit_select_search add_new_property mb20">
                                                                <label class="form-label">Fuel
                                                                    Type</label>
                                                                <select class="selectpicker" name="usedCarFuelType"
                                                                    data-live-search="true" data-width="100%" required>

                                                                    <option>Select</option>
                                                                    <option value="Petrol">Petrol </option>
                                                                    <option value="Diesel">Diesel</option>
                                                                    <option value="Electric">Electirc</option>
                                                                    <option value="CNG">CNG</option>
                                                                </select>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarFuelType" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="ui_kit_select_search add_new_property mb20">
                                                                <label class="form-label">RTO
                                                                    Passing</label>
                                                                <select class="selectpicker" name="usedCarRTO"
                                                                    data-live-search="true" data-width="100%" required>
                                                                    <option>Select</option>
                                                                    <option data-tokens="GJ-01">GJ-01</option>
                                                                </select>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarRTO" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="mb20">
                                                                <label class="form-label">Kilometers
                                                                    Driven</label>
                                                                <input 
                                                                    class="form-control form_control" type="number"
                                                                    name="usedCarKilometers" required>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarKilometers" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="mb20">
                                                                <label class="form-label">Transmission
                                                                    Type</label>
                                                                <select class="selectpicker"
                                                                    name="usedCarTransmissionType"
                                                                    data-live-search="true" data-width="100%" required>
                                                                    <option>Select</option>
                                                                    <option id="SUV" value="Manual">Manual</option>
                                                                    <option id="Sedan" value="Automatic">Automatic
                                                                    </option>
                                                                    <option id="Hatchback" value="Hybrid">Hybrid
                                                                    </option>
                                                                </select>
                                                                <span style="color:red ;">
                                                                    <form:errors
                                                                        path="usedCar.usedCarTransmissionType" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="mb20">
                                                                <label class="form-label">Body
                                                                    Type</label>
                                                                <select class="selectpicker" name="usedCarBodyType"
                                                                    data-live-search="true" data-width="100%" required>
                                                                    <option>Select</option>
                                                                    <option id="SUV" value="SUV">SUV</option>
                                                                    <option id="Sedan" value="Sedan">Sedan</option>
                                                                    <option id="Hatchback" value="Hatchback">Hatchback
                                                                    </option>
                                                                    <option id="Compact SUV" value="Compact SUV">Compact
                                                                        SUV</option>
                                                                    <option id="Compact Sedan" value="Compact Sedan">
                                                                        Compact Sedan</option>
                                                                    <option id="MUV" value="MUV">MUV</option>
                                                                    <option id="Convertible" value="Convertible">
                                                                        Convertible</option>
                                                                    <option id="Coupe" value="Coupe">Coupe</option>
                                                                    <option id="Station Wagon" value="Station Wagon">
                                                                        Station Wagon</option>
                                                                    <option id="Sports Car" value="Sports Car">Sports
                                                                        Car</option>
                                                                    <option id="Minivan" value="Minivan">Minivan
                                                                    </option>
                                                                    <option id="Truck" value="Truck">Truck</option>
                                                                </select>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarBodyType" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-4">
                                                            <div class="mb20">
                                                                <label class="form-label">Number Of
                                                                    Owners</label>
                                                                <select class="selectpicker" name="usedCarNoOfOwners"
                                                                    data-live-search="true" data-width="100%" required>
                                                                    <option>Select</option>
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>

                                                                </select>
                                                                <span style="color:red ;">
                                                                    <form:errors path="usedCar.usedCarNoOfOwners" />
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="col-lg-12">
                                                        <div class="new_propertyform_btn">
                                                            <button type="submit" class="btn btn-thm ad_flor_btn">Add
                                                                Listing</button>
                                                        </div>
                                                    </div>
                                                </form>

                                                    <!-- </div> -->
                                                    <!-- </div> -->
                                            </div>
                                        </div>          
                                    </div>
                                </div>
                            </section>
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


                <!-- <script>
                    document.querySelector('.img__btn').addEventListener('click', function () {
                        document.querySelector('.cont').classList.toggle('s--signup');
                    });

                    function setRegister() {
                        document.getElementById("registerinput").value = "register";
                    }
                </script> -->
                <!-- Wrapper End -->
                <script src="js-ibc/jquery-3.6.0.js"></script>
                <script src="js-ibc/jquery-migrate-3.0.0.min.js"></script>
                <script src="js-ibc/popper.min.js"></script>
                <script src="js-ibc/bootstrap.min.js"></script>
                <script src="js-ibc/jquery.mmenu.all.js"></script>
                <script src="js-ibc/ace-responsive-menu.js"></script>
                <script src="js-ibc/bootstrap-select.min.js"></script>
                <script src="js-ibc/snackbar.min.js"></script>
                <script src="js-ibc/simplebar.js"></script>
                <script src="js-ibc/parallax.js"></script>
                <script src="js-ibc/scrollto.js"></script>
                <script src="js-ibc/jquery-scrolltofixed-min.js"></script>
                <script src="js-ibc/jquery.counterup.js"></script>
                <script src="js-ibc/wow.min.js"></script>
                <script src="js-ibc/jquery.smartuploader.js"></script>
                <script src="js-ibc/progressbar.js"></script>
                <script src="js-ibc/slider.js"></script>
                <script src="js-ibc/timepicker.js"></script>
                <script src="js-ibc/wow.min.js"></script>
                <script src="js-ibc/dashboard-script.js"></script>
                <script
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&amp;callback=initMap"></script>
                <script src="js-ibc/googlemaps1.js"></script>
                <!-- Custom script for all pages -->
                <script src="js-ibc/script.js"></script>
            </body>

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-add-listings.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:39 GMT -->

            </html>