<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"
    session="true" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!DOCTYPE html>
    <html dir="ltr" lang="en">

    <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:36 GMT -->

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
            <%@ include file="../common/header-dashboard-website.jsp" %>
                <!-- WEBSITE HEADER MOBILE-->
                <%@ include file="../common/header-dashboard-mobile.jsp" %>



                    <!-- Our Dashbord -->
                    <section class="our-dashbord dashbord bgc-f9">

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xxl-10 offset-xxl-2 dashboard_grid_space">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="extra-dashboard-menu dn-lg">
                                                <div class="ed_menu_list">
                                                    <ul>
                                                        <li><a href="dealerdashboard"><span
                                                                    class="flaticon-dashboard"></span>Dashboard</a></li>
                                                        <li><a class="active"
                                                                href="dealerprofilepage?id=${dealer.dealerId}"><span
                                                                    class="flaticon-user-2"></span>Profile</a></li>
                                                        <li><a href="bidbydealer?dealerid=${dealer.dealerId}"><span
                                                                    class="flaticon-list"></span>My Bids</a></li>
                                                        <li><a
                                                                href="usedcarpurchasedbydealer?dealerid=${dealer.dealerId}"><span
                                                                    class="flaticon-heart"></span>My Cars</a></li>
                                                        <li><a href="logout?role=dealer"><span
                                                                    class="flaticon-logout"></span>Logout</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="dashboard_navigationbar dn db-lg mt50">
                                                <div class="dropdown">
                                                    <button onclick="myFunction()" class="dropbtn"><i
                                                            class="fa fa-bars pr10"></i> Dashboard Navigation</button>
                                                            
                                                            <ul id="myDropdown" class="dropdown-content">
                                                                <li><a href="dealerdashboard"><span
                                                                            class="flaticon-dashboard"></span>Dashboard</a></li>
                                                                <li><a class="active"
                                                                        href="dealerprofilepage?id=${dealer.dealerId}"><span
                                                                            class="flaticon-user-2"></span>Profile</a></li>
                                                                <li><a href="bidbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-list"></span>My Bids</a></li>
                                                                <li><a
                                                                        href="usedcarpurchasedbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-heart"></span>My Cars</a></li>
                                                                <li><a href="logout?role=dealer"><span
                                                                            class="flaticon-logout"></span>Logout</a></li>
                                                            </ul>
                                                    <ul id="myDropdown" class="dropdown-content">
                                                        <li><a href="dealerdashboard"><span
                                                                    class="flaticon-dashboard"></span>Dashboard</a></li>
                                                        <li><a class="active"
                                                                href="dealerprofilepage?id=${dealer.dealerId}"><span
                                                                    class="flaticon-user-2"></span>Profile</a></li>
                                                        <li><a href="bidbydealer?dealerid=${dealer.dealerId}"><span
                                                                    class="flaticon-list"></span>My Bids</a></li>
                                                        <li><a
                                                                href="usedcarpurchasedbydealer?dealerid=${dealer.dealerId}"><span
                                                                    class="flaticon-heart"></span>My Cars</a></li>
                                                        <li><a href="logout?role=dealer"><span
                                                                    class="flaticon-logout"></span>Logout</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <div class="col-lg-12 mb50">
                                                <div class="breadcrumb_content">
                                                    <h2 class="breadcrumb_title">Profile</h2>
                                                    <p>Ready to jump back in?</p>
                                                    <!-- toast(for password change) start -->
                                                    <c:if test="${not empty msg}">
                                                    <div class="toast-container" style="position: absolute; top: 90px; right: 30px; margin-top: 100px;">

                                                        <div class="toast fade show" data-autohide="true">
                                                        <div class="toast-header bg-danger">
                                                            <strong class="me-auto" style="font-weight: bold; color: black;"><i class="bi-globe"></i>
                                                            Error</strong>
                                                            <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
                                                        </div>
                                                        <div class="toast-body">
                                                            <span style="font-weight: bold;">${msg}</span>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    </c:if>
                                                    <!-- toast end -->
                                                    <!-- toast(for profile update) start -->
                                                    <c:if test="${not empty success}">
                                                    <div class="toast-container" style="position: absolute; top: 90px; right: 30px; margin-top: 100px;">

                                                        <div class="toast fade show" data-autohide="true">
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
                                               </div>
                                            </div>
                                        </div>
                                    </div>
                                   
                                            
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="new_property_form mb30">
                                                <h4 class="title mb30">Account Details</h4>
                                                <div class="dp_user_thumb_content">
                                                    <div class="wrap-custom-file mb25">
                                                        <input type="file" name="image1" id="image1"
                                                            accept=".gif, .jpg, .png">
                                                        <label for="image1">
                                                            <span>&nbsp;&nbsp;Browse</span>
                                                        </label>
                                                        <small class="file_title">Max file size is 1MB, Minimum
                                                            dimension:
                                                            330x300 And Suitable files are .jpg & .png</small>
                                                    </div>
                                                </div>
                                                <form class="contact_form" action="updatedealerprofile" method="post">
                                                    <input type="hidden" name="id" value="${dealer.dealerId}">
                                                    <div class="row">
                                                        <div class="col-lg-7">
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="mb20">
                                                                        <label class="form-label">Name</label>
                                                                        <input value="${dealerModel.dealerName}"
                                                                            class="form-control form_control"
                                                                            type="text" name="dealerName"
                                                                            placeholder="Name">
                                                                            <span style="color:red ;"><form:errors path="dealerModel.dealerName"/></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="mb20">
                                                                        <label class="form-label">City</label>
                                                                        <input value="${dealerModel.dealerAddress}"
                                                                            class="form-control form_control"
                                                                            type="text" name="dealerAddress"
                                                                            placeholder="Location">
                                                                            <span style="color:red ;"><form:errors path="dealerModel.dealerAddress"/></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="mb20">
                                                                        <label class="form-label">Phone Number</label>
                                                                        <input value="${dealerModel.dealerPhone}"
                                                                            class="form-control form_control"
                                                                            type="text" name="dealerPhone"
                                                                            placeholder="Phone">
                                                                            <span style="color:red ;"><form:errors path="dealerModel.dealerPhone"/></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="mb20">
                                                                        <label class="form-label">Email</label>
                                                                        <input value="${dealerModel.dealerEmail}"
                                                                            class="form-control form_control"
                                                                            type="text" name="dealerEmail"
                                                                            placeholder="Email">
                                                                            <span style="color:red ;"><form:errors path="dealerModel.dealerEmail"/></span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div class="new_propertyform_btn">
                                                                        <button type="submit"
                                                                            class="btn btn-thm ad_flor_btn">Save</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            
                                            <div class="new_property_form">
                                                <form action="changepassword" method="post">
                                                    <input type="hidden" name="type" value="dealer">
                                                    <input type="hidden" name="id"
                                                        value="${dealer.dealerId}">
                                                    <div class="row">

                                                        <div class="col-lg-12">
                                                            <h4 class="title mb30">Change Password</h4>
                                                        </div>
                                                        <div class="col-sm-6 col-lg-7">
                                                            <div class="mb20">
                                                                <input name="oldpass" class="form-control form_control"
                                                                    type="password" placeholder="Current Password">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-lg-7">
                                                            <div class="mb20">
                                                                <input name="newpass" class="form-control form_control"
                                                                    type="text" placeholder="New Password">
                                                            </div>
                                                            <span style="color:red ;">${emptyerror}</span>
                                                            <span style="color:red ;">${sizeerror}</span>
                                                            <span style="color:red ;">${patternerror}</span>
                                                        </div>
                                                        <div class="col-sm-6 col-lg-7">
                                                            <div class="mb20">
                                                                <input name="renewpass"
                                                                    class="form-control form_control mb20"
                                                                    type="password" placeholder="Re-enter New Password">
                                                                   
                                                                <button type="submit"
                                                                    class="btn btn-thm ad_flor_btn">Save</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
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
        <script src="js-ibc/jquery.mmenu.all.js"></script>
        <script src="js-ibc/ace-responsive-menu.js"></script>
        <script src="js-ibc/bootstrap-select.min.js"></script>
        <script src="js-ibc/chart.min.js"></script>
        <script src="js-ibc/chart-custome.js"></script>
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
        <script src="js-ibc/dashboard-script.js"></script>
        <!-- Custom script for all pages -->
        <script src="js-ibc/script.js"></script>
    </body>

    <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:38 GMT -->

    </html>