<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>DASHMIN - Bootstrap Admin Template</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="" name="keywords">
                <meta content="" name="description">

                <!-- Favicon -->
                <link href="/img/favicon.ico" rel="icon">

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
                    rel="stylesheet">

                <!-- Icon Font Stylesheet -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                    rel="stylesheet">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                <link href="/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

                <!-- Customized Bootstrap Stylesheet -->
                <link href="/css-admin/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/css-admin/style-admin.css" rel="stylesheet">
               
            </head>

            <body>
                <div class="container-xxl position-relative bg-white d-flex p-0">
                    <!-- Spinner Start -->
                    <div id="spinner"
                        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                    <!-- Spinner End -->


                    <!-- Sidebar Start -->
                    <%@ include file="../common/employee-sidebar.jsp" %>
                        <!-- Sidebar End -->


                        <!-- Content Start -->
                        <div class="content">
                          <!-- Navbar Start -->
                          <%@ include file="../common/employee-navbar.jsp" %>

                          <!-- Navbar End -->

                            ${success}
                            ${error}
                            <!-- data display Used Car Start -->
                            <div class="container-fluid pt-4 px-4 col-md-6">
                                <div class="card ">
                                    <div class="card-header text-center">
                                        Car Details
                                    </div>
                                    <div class="card-body ">
                                        <table class="table table-sm">
                                            <tbody>
                                                <tr>
                                                    <th scope="row">Brand</th>
                                                    <th>${car.usedCarBrand}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Model</th>
                                                    <th>${car.usedCarModelName}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Variant</th>
                                                    <th>${car.usedCarVariant}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Fuel Type</th>
                                                    <th>${car.usedCarFuelType}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Purchased Year</th>
                                                    <th>${car.usedCarYear}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">RTO Passing</th>
                                                    <th>${car.usedCarRTO}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">KM Driven</th>
                                                    <th>${car.usedCarKilometers}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">No. Of Owners</th>
                                                    <th>${car.usedCarNoOfOwners}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Status</th>
                                                    <th>${car.usedCarStatus}</th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid pt-4 px-4 col-md-6">
                                <div class="card ">
                                    <div class="card-header text-center">
                                        User Details
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-sm">
                                            <tbody>
                                                <tr>
                                                    <th scope="row">Name</th>
                                                    <th>${car.userEntitySellCar.userName}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Email</th>
                                                    <th>${car.userEntitySellCar.userEmail}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Phone</th>
                                                    <th>${car.userEntitySellCar.userPhoneNumber}</th>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Address</th>
                                                    <th>${car.userEntitySellCar.userAddress}</th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <!-- data display Used Car End -->

                            <!-- BUTTON START -->
                           
                           

                                <div class="m-auto" style="width: 200px;">
                                    <a href="inspectiondone?usedcarid=${car.usedCarId}"
                                        class="btn btn-outline-success m-3">Send For Admin Approval</a>
                                </div>
                           
                           
                            
                            <!-- BUTTON END -->

                            <!-- Footer Start -->
                            <div class="container-fluid pt-4 px-4">
                                <div class="bg-light rounded-top p-4">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 text-center text-sm-start">
                                            © <a href="#">Your Site Name</a>, All Right Reserved.
                                        </div>
                                        <div class="col-12 col-sm-6 text-center text-sm-end">
                                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Footer End -->


                        </div>
                        <!-- Content End -->


                        <!-- Back to Top -->
                        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                                class="bi bi-arrow-up"></i></a>
                </div>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/lib/chart/chart.min.js"></script>
                <script src="/lib/easing/easing.min.js"></script>
                <script src="/lib/waypoints/waypoints.min.js"></script>
                <script src="/lib/owlcarousel/owl.carousel.min.js"></script>
                <script src="/lib/tempusdominus/js/moment.min.js"></script>
                <script src="/lib/tempusdominus/js/moment-timezone.min.js"></script>
                <script src="/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

                <!-- Template Javascript -->
                <script src="/js/main.js"></script>
            </body>

            </html>