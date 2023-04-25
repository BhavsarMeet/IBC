<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>

            <html dir="ltr" lang="en">

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:38 GMT -->

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
                                                                <li><a  href="userdashboard"><span
                                                                    class="flaticon-dashboard"></span>Dashboard</a>
                                                        </li>
                                                        <li><a href="userprofilepage?userid=${user.userId}"><span
                                                                    class="flaticon-user-2"></span>Profile</a>
                                                        </li>
                                                        <li><a href="mysellcarlist"><span
                                                            class="flaticon-heart"></span>My Ads</a>
                                                        </li>
                                                        <li><a class="active" href="usermycarenquiries?userid=${user.userId}"><span
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
                                                                <li><a  href="userdashboard"><span
                                                                    class="flaticon-dashboard"></span>Dashboard</a>
                                                        </li>
                                                        <li><a href="userprofilepage?userid=${user.userId}"><span
                                                                    class="flaticon-user-2"></span>Profile</a>
                                                        </li>
                                                        <li><a href="mysellcarlist"><span
                                                            class="flaticon-heart"></span>My Ads</a>
                                                        </li>
                                                        <li><a class="active" href="usermycarenquiries?userid=${user.userId}"><span
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
                                                    <div class="col-lg-12 mb50">
                                                        <div class="breadcrumb_content">
                                                            <h2 class="breadcrumb_title">My Listing</h2>
                                                            <p>Ready to jump back in?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div
                                                        class="dashboard_favorites_contents dashboard_my_lising_tabs p10-520">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <!-- Nav tabs -->
                                                                <div class="nav nav-tabs justify-content-start"
                                                                    role="tablist">
                                                                    <button class="nav-link active" id="nav-home-tab"
                                                                        data-bs-toggle="tab" data-bs-target="#nav-home"
                                                                        role="tab" aria-controls="nav-home"
                                                                        aria-selected="true">Used Car</button>
                                                                    <button class="nav-link" id="nav-shopping-tab"
                                                                        data-bs-toggle="tab"
                                                                        data-bs-target="#nav-shopping" role="tab"
                                                                        aria-controls="nav-shopping"
                                                                        aria-selected="false">New Car</button>

                                                                </div>
                                                            </div>
                                                            <!-- Tab panes -->
                                                            <div class="col-lg-12 mt50">
                                                                <div class="tab-content row" id="nav-tabContent">
                                                                    <div class="tab-pane fade show active" id="nav-home"
                                                                        role="tabpanel" aria-labelledby="nav-home-tab">
                                                                        <div class="col-lg-12">
                                                                            <div
                                                                                class="table-responsive my_lisging_table">
                                                                                <table class="table">
                                                                                    <thead class="table-light">
                                                                                        <tr class="thead_row">
                                                                                            <th class="thead_title pl20"
                                                                                                scope="col">Make</th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">Year</th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">Km Driven
                                                                                            </th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">RTO Passing
                                                                                            </th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">FuelType
                                                                                            </th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">Action</th>
                                                                                            <th class="thead_title"
                                                                                                scope="col">Remarks</th>

                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <c:forEach
                                                                                            items="${usedCarEnquiryListOfUser}"
                                                                                            var="usedcar">
                                                                                            <tr>
                                                                                                <th class="align-middle pl20"
                                                                                                    scope="row">
                                                                                                    <div
                                                                                                        class="car-listing bdr_none d-flex mb0">
                                                                                                        <div
                                                                                                            class="thumb w150">
                                                                                                            <img class="img-fluid"
                                                                                                                src="pictures\usedcar${usedcar.usedCarFrontImage}" height="125%" width="100%"
                                                                                                                onerror="this.src='images-ibc/no-image.png';"
                                                                                                                alt="No image found">
                                                                                                        </div>
                                                                                                        <div
                                                                                                            class="details ms-1">
                                                                                                            <h6
                                                                                                                class="title">
                                                                                                                <a
                                                                                                                    href="usermycardetails?carid=${usedcar.usedCarModelData.usedCarId}">${usedcar.usedCarModelData.usedCarBrand}
                                                                                                                    ${usedcar.usedCarModelData.usedCarModelName}
                                                                                                                    -
                                                                                                                    ${usedcar.usedCarModelData.usedCarYear}</a>
                                                                                                            </h6>
                                                                                                            <h5
                                                                                                                class="price">
                                                                                                                &#8377;
                                                                                                                ${usedcar.usedCarDisplayPrice}
                                                                                                            </h5>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </th>

                                                                                                <td
                                                                                                    class="align-middle">
                                                                                                    ${usedcar.usedCarModelData.usedCarYear}
                                                                                                </td>
                                                                                                <td
                                                                                                    class="align-middle">
                                                                                                    ${usedcar.usedCarDisplaykm} Km
                                                                                                </td>
                                                                                                <td
                                                                                                    class="align-middle">
                                                                                                    ${usedcar.usedCarModelData.usedCarRTO}
                                                                                                </td>
                                                                                                <td
                                                                                                    class="align-middle">
                                                                                                    ${usedcar.usedCarModelData.usedCarFuelType}
                                                                                                </td>

                                                                                                <td
                                                                                                    class="editing_list align-middle">
                                                                                                    <ul>
                                                                                                        <li
                                                                                                            class="list-inline-item mb-1">
                                                                                                            <a href="usermycardetails?carid=${usedcar.usedCarModelData.usedCarId}"
                                                                                                                data-bs-toggle="tooltip"
                                                                                                                data-bs-placement="top"
                                                                                                                title="View details"><span
                                                                                                                    class="flaticon-view"></span></a>
                                                                                                        </li>
                                                                                                        <li
                                                                                                            class="list-inline-item mb-1">
                                                                                                            <a href="closeusedcarenquirycustomer?enqid=${usedcar.enquiryModel.inquiryId}&userid=${user.userId}"
                                                                                                                data-bs-toggle="tooltip"
                                                                                                                data-bs-placement="top"
                                                                                                                title="Close inquiry"><span
                                                                                                                    class="flaticon-trash"></span></a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <c:if
                                                                                                        test="${not empty usedcar.message}">

                                                                                                        <div
                                                                                                            class="toast-container">
                                                                                                            <div
                                                                                                                class="toast fade show" style="width:100px;">
                                                                                                                <div
                                                                                                                    class="toast-header bg-danger">
                                                                                                                    <strong
                                                                                                                        class="me-auto"
                                                                                                                        style="font-weight: bold; color: black;word-wrap: break-word; width:100px ;"><i
                                                                                                                            class="bi-globe"></i>
                                                                                                                        ${usedcar.message}</strong>
                                                                                                                </div>
                                                                                                                <div
                                                                                                                    class="toast-body">
                                                                                                                    <c:if
                                                                                                                        test="${task=='enquiry'}">
                                                                                                                        <a href="closeusedcarenquirycustomer?enqid=${usedcar.enquiryModel.inquiryId}&userid=${user.userId}"
                                                                                                                            type="button"
                                                                                                                            class="btn btn-warning btn-sm">Yes
                                                                                                                        </a>
                                                                                                                        <a href="continueusedcarenquirycustomer?enqid=${usedcar.enquiryModel.inquiryId}&userid=${user.userId}"
                                                                                                                            type="button"
                                                                                                                            class="btn btn-danger btn-sm">No
                                                                                                                        </a>
                                                                                                                    </c:if>
                                                                                                                    <c:if
                                                                                                                        test="${task=='deal'}">
                                                                                                                        <a href="closeusedcarenquirycustomer?enqid=${usedcar.enquiryModel.inquiryId}&userid=${user.userId}"
                                                                                                                            type="button"
                                                                                                                            class="btn btn-danger btn-sm">Ok
                                                                                                                        </a>
                                                                                                                    </c:if>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        

                                                                            </div>
                                                                        </div>

                                                                        </c:if>
                                                                        </td>
                                                                        </tr>
                                                                        </c:forEach>
                                                                        </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="tab-pane fade" id="nav-shopping" role="tabpanel"
                                                                aria-labelledby="nav-shopping-tab">
                                                                <div class="col-lg-12">
                                                                    <div class="table-responsive my_lisging_table">
                                                                        <table class="table">
                                                                            <thead class="table-light">
                                                                                <tr class="thead_row">
                                                                                    <th class="thead_title pl20"
                                                                                        scope="col">Make</th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        BodyType
                                                                                    </th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        Engine
                                                                                    </th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        Transmission
                                                                                    </th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        FuelType
                                                                                    </th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        Action</th>
                                                                                    <th class="thead_title" scope="col">
                                                                                        Remarks</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <c:forEach items="${newCarEnquiryData}"
                                                                                    var="newcar">
                                                                                    <tr>
                                                                                        <th class="align-middle pl20"
                                                                                            scope="row">
                                                                                            <div
                                                                                                class="car-listing bdr_none d-flex mb0">
                                                                                                <div class="thumb w150">
                                                                                                    <img class="img-fluid"
                                                                                                        src="pictures\newcar${newcar.imageFrontView}"
                                                                                                        onerror="this.src='images-ibc/no-image.png';" height="125%" width="100%"
                                                                                                        alt="No image found">
                                                                                                </div>
                                                                                                <div
                                                                                                    class="details ms-1">
                                                                                                    <h6 class="title">
                                                                                                        <a
                                                                                                            href="mycarnewcardetails?varid=${newcar.carVariantId}">${newcar.carBrand}
                                                                                                            ${newcar.carModelName}
                                                                                                            -
                                                                                                            ${newcar.carManufacturingYear}</a>
                                                                                                    </h6>
                                                                                                    <h5 class="price">
                                                                                                        &#8377;
                                                                                                        ${newcar.displayCarPrice}
                                                                                                    </h5>
                                                                                                </div>
                                                                                            </div>
                                                                                        </th>


                                                                                        <td class="align-middle">
                                                                                            ${newcar.carBodyType}
                                                                                        </td>
                                                                                        <td class="align-middle">
                                                                                            ${newcar.carEngineCapacity} CC
                                                                                        </td>
                                                                                        <td class="align-middle">
                                                                                            ${newcar.carTransmissionType}
                                                                                        </td>
                                                                                        <td class="align-middle">
                                                                                            ${newcar.carFuelType}
                                                                                        </td>
                                                                                        <td
                                                                                            class="editing_list align-middle">
                                                                                            <ul>
                                                                                                <li
                                                                                                    class="list-inline-item mb-1">
                                                                                                    <a href="mycarnewcardetails?varid=${newcar.carVariantId}"
                                                                                                        data-bs-toggle="tooltip"
                                                                                                        data-bs-placement="top"
                                                                                                        title="View details"><span
                                                                                                            class="flaticon-view"></span></a>
                                                                                                </li>
                                                                                                <li
                                                                                                    class="list-inline-item mb-1">
                                                                                                    <a href="closeenquirycustomer?enqid=${newcar.enquiryId}&userid=${user.userId}"
                                                                                                        data-bs-toggle="tooltip"
                                                                                                        data-bs-placement="top"
                                                                                                        title="Close inquiry"><span
                                                                                                            class="flaticon-trash"></span></a>
                                                                                                </li>

                                                                                            </ul>
                                                                                        </td>
                                                                                        <td>
                                                                                            <c:if
                                                                                                test="${not empty newcar.enquiryStatus}">
                                                                                                <div class="toast-container">
                                                                                                    <div class="toast fade show" style="width:100px;">
                                                                                                        <div class="toast-header bg-danger">
                                                                                                            <strong
                                                                                                                class="me-auto"
                                                                                                                style="font-weight: bold; color: black;word-wrap: break-word; width:100px;"><i
                                                                                                                    class="bi-globe"></i>
                                                                                                                    ${newcar.enquiryStatus}</strong>
                                                                                                        </div>
                                                                                                        <div class="toast-body">
                                                                                                            <a href="closeenquirycustomer?enqid=${newcar.enquiryId}&userid=${user.userId}"
                                                                                                                type="button"
                                                                                                                class="btn btn-warning btn-sm">Yes</a>
                                                                                                            <a href="continueenquirycustomer?enqid=${newcar.enquiryId}&userid=${user.userId}"
                                                                                                                type="button"
                                                                                                                class="btn btn-danger btn-sm">No</a>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </c:if>
                                                                                        </td>
                                                                                    </tr>
                                                                                </c:forEach>
                                                                            </tbody>
                                                                        </table>
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

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-dashboard-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:39 GMT -->

            </html>