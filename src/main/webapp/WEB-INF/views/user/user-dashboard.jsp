<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
                                                                <li><a class="active" href="userdashboard"><span
                                                                            class="flaticon-dashboard"></span>Dashboard</a>
                                                                </li>
                                                                <li><a href="userprofilepage?userid=${user.userId}"><span
                                                                            class="flaticon-user-2"></span>Profile</a>
                                                                </li>
                                                                <li><a href="mysellcarlist"><span
                                                                    class="flaticon-heart"></span>My Ads</a>
                                                                </li>
                                                                <li><a href="usermycarenquiries?userid=${user.userId}"><span
                                                                            class="flaticon-list"></span>My
                                                                        Inquiries</a></li>
                                                                <li><a href="usermycarlist?userid=${user.userId}"><span
                                                                            class="flaticon-heart"></span>My Cars</a>
                                                                </li>
                                                                <li><a href="logout?role=user"><span
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
                                                                <li><a class="active" href="userdashboard"><span
                                                                            class="flaticon-dashboard"></span>Dashboard</a>
                                                                </li>
                                                                <li><a href="userprofilepage?userid=${user.userId}"><span
                                                                            class="flaticon-user-2"></span>Profile</a>
                                                                </li>
                                                                <li><a href="mysellcarlist"><span
                                                                    class="flaticon-heart"></span>My Ads</a>
                                                                </li>
                                                                <li><a href="usermycarenquiries?userid=${user.userId}"><span
                                                                            class="flaticon-list"></span>My
                                                                        Inquiries</a></li>
                                                                <li><a href="usermycarlist?userid=${user.userId}"><span
                                                                            class="flaticon-heart"></span>My Cars</a>
                                                                </li>
                                                                
                                                                <li><a href="logout?role=user"><span
                                                                            class="flaticon-logout"></span>Logout</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xl-8">
                                                    <div class="breadcrumb_content mb50">
                                                        <h2 class="breadcrumb_title">Hello,${user.userName}!</h2>
                                                        <p>Ready to jump back in!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 col-lg-4">
                                                    <div class="ff_one">
                                                        <div class="icon"><span class="flaticon-list"></span></div>
                                                        <div class="detais text-end">
                                                            <div class="timer">${totalenquiries}</div>
                                                            <p class="para">Total Enquiries</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-lg-4">
                                                    <div class="ff_one">
                                                        <div class="icon"><span class="flaticon-list"></span></div>
                                                        <div class="detais text-end">
                                                            <div class="timer">${usernewcarpurchased}</div>
                                                            <p class="para">New Car Purchase</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-lg-4">
                                                    <div class="ff_one style2">
                                                        <div class="icon"><span class="flaticon-message"></span></div>
                                                        <div class="detais text-end">
                                                            <div class="timer">${userusedpurchased}</div>
                                                            <p class="para">Used Car Purchase</p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <!-- <div class="row">
                                                <div class="col-lg-12 col-xl-7">
                                                    <div class="application_statics">
                                                        <h4>Your Profile Views</h4>
                                                        <div class="c_container"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xl-5">
                                                    <div class="recent_job_activity">
                                                        <h4 class="title">Recent Activities</h4>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon blue"><span><img
                                                                        src="images-ibc/icon/briefcase-blue.svg"
                                                                        alt="briefcase-blue.svg"></span></div>
                                                            <p class="mb0"><span class="heading-color">Wade
                                                                    Warren</span> add list
                                                                for a car <span class="color-blue">Audi a3 Sportback
                                                                    2020</span></p>
                                                        </div>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon blue"><span><img
                                                                        src="images-ibc/icon/briefcase-blue.svg"
                                                                        alt="briefcase-blue.svg"></span></div>
                                                            <p class="mb0"><span class="heading-color">Wade
                                                                    Warren</span> add list
                                                                for a car <span class="color-blue">Audi a5 Sportback
                                                                    2020</span></p>
                                                        </div>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon green"><span><img
                                                                        src="images-ibc/icon/briefcase-green.svg"
                                                                        alt="briefcase-green.svg"></span></div>
                                                            <p><span class="heading-color">Wade Warren</span> Saved for
                                                                a car
                                                                Mercedes cla 2021</p>
                                                        </div>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon blue"><span><img
                                                                        src="images-ibc/icon/briefcase-blue.svg"
                                                                        alt="briefcase-blue.svg"></span></div>
                                                            <p><span class="heading-color">Wade Warren</span> add list
                                                                for a car
                                                                <span class="color-blue">Audi q5 Sportback 2020</span>
                                                            </p>
                                                        </div>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon green"><span><img
                                                                        src="images-ibc/icon/briefcase-green.svg"
                                                                        alt="briefcase-green.svg"></span></div>
                                                            <p><span class="heading-color">Wade Warren</span> Saved for
                                                                a car
                                                                Mercedes c-class 2021</span></p>
                                                        </div>
                                                        <div class="grid d-block d-sm-flex">
                                                            <div class="icon blue"><span><img
                                                                        src="images-ibc/icon/briefcase-blue.svg"
                                                                        alt="briefcase-blue.svg"></span></div>
                                                            <p><span class="heading-color">Wade Warren</span> add list
                                                                for a car
                                                                <span class="color-blue">Audi a3 Sportback 2020</span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> -->
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