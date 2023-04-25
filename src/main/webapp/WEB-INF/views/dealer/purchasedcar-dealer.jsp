<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html dir="ltr" lang="en">

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-favorites.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:39 GMT -->

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
                                                                            class="flaticon-dashboard"></span>Dashboard</a>
                                                                </li>
                                                                <li><a href="dealerprofilepage?id=${dealer.dealerId}"><span
                                                                            class="flaticon-user-2"></span>Profile</a>
                                                                </li>
                                                                <li><a href="bidbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-list"></span>My Bids</a>
                                                                </li>
                                                                <li><a class="active"
                                                                        href="usedcarpurchasedbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-heart"></span>My Cars</a>
                                                                </li>
                                                                <li><a href="logout?role=dealer"><span
                                                                            class="flaticon-logout"></span>Logout</a>
                                                                </li>
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
                                                                    class="fa fa-bars pr10"></i> Dashboard
                                                                Navigation</button>
                                                            <ul id="myDropdown" class="dropdown-content">
                                                                <li><a href="dealerdashboard"><span
                                                                            class="flaticon-dashboard"></span>Dashboard</a>
                                                                </li>
                                                                <li><a href="dealerprofilepage?id=${dealer.dealerId}"><span
                                                                            class="flaticon-user-2"></span>Profile</a>
                                                                </li>
                                                                <li><a href="bidbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-list"></span>My Bids</a>
                                                                </li>
                                                                <li><a class="active"
                                                                        href="usedcarpurchasedbydealer?dealerid=${dealer.dealerId}"><span
                                                                            class="flaticon-heart"></span>My Cars</a>
                                                                </li>
                                                                <li><a href="logout?role=dealer"><span
                                                                            class="flaticon-logout"></span>Logout</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xl-8">
                                                    <div class="col-lg-12 mb50">
                                                        <div class="breadcrumb_content">
                                                            <h2 class="breadcrumb_title">My Cars</h2>
                                                            <p>Ready to jump back in?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="dashboard_favorites_contents p10-520">
                                                        <div class="row">
                                                            <c:forEach items="${dealerpurchasedcar}" var="cars">

                                                                <div class="col-sm-6 col-xl-12 col-xxl-6">
                                                                    <div class="car-listing list_style">
                                                                        <div class="thumb">
                                                                            <div class="tag">FEATURED</div>
                                                                            <img class="img-fluid"
                                                                                src="pictures\usedcar${cars.usedCarFrontImage}" height="125%" width="100%"
                                                                                onerror="this.src='images-ibc/no-image.png';"  alt="No image found">
                                                                           
                                                                        </div>
                                                                        <div class="details">
                                                                            <div class="wrapper">
                                                                                <h5 class="price">&#8377; ${cars.usedCarDisplayPrice}
                                                                                </h5>
                                                                                <h6 class="title"><a
                                                                                        href="purchasedcardetailsdealer?carid=${cars.usedCarModelData.usedCarId}&dealerid=${dealer.dealerId}">${cars.usedCarModelData.usedCarBrand}
                                                                                        ${cars.usedCarModelData.usedCarModelName}
                                                                                        -
                                                                                        ${cars.usedCarModelData.usedCarYear}</a>
                                                                                </h6>
                                                                                <div class="listign_review">
                                                                                    <a class="btn btn-sm btn-outline-primary"
                                                                                        href="purchasedcardetailsdealer?carid=${cars.usedCarModelData.usedCarId}&dealerid=${dealer.dealerId}">View details
                                                                                        </a>
                                                                                </div>
                                                                                <div class="mb0 db_share_icons">
                                                                                    <a href="#"><span
                                                                                            class="flaticon-heart"></span></a>
                                                                                </div>
                                                                            </div>
                                                                            <div class="listing_footer">
                                                                                <ul class="mb0">
                                                                                    <li class="list-inline-item"><a
                                                                                            href="#"><span
                                                                                                class="flaticon-road-perspective me-2"></span>${cars.usedCarDisplaykm} Km</a>
                                                                                    </li>
                                                                                    <li class="list-inline-item"><a
                                                                                            href="#"><span
                                                                                                class="flaticon-gas-station me-2"></span>${cars.usedCarModelData.usedCarFuelType}</a>
                                                                                    </li>
                                                                                    <li class="list-inline-item"><a
                                                                                        href="#"><span
                                                                                            class="me-2"><i class="fas fa-car"></i></span>${cars.usedCarModelData.usedCarBodyType}</a>
                                                                                </li>
                                                                                    <li class="list-inline-item"><a
                                                                                            href="#"><span
                                                                                                class="flaticon-gear me-2"></span>${cars.usedCarModelData.usedCarTransmissionType}</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
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

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-favorites.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:39 GMT -->

            </html>