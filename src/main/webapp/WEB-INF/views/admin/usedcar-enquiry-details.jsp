<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page import="com.model.admin.AdminModel" %>
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

                <link rel="stylesheet" href="/css-admin/image-slider.css">

            </head>

            <body>
                <% AdminModel adminData=(AdminModel)session.getAttribute("admin"); %>

                <%if(adminData!=null){%>
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
                    <%@ include file="../common/admin-sidebar.jsp" %>
                        <!-- Sidebar End -->


                        <!-- Content Start -->
                        <div class="content">
                            <!-- Navbar Start -->
                            <%@ include file="../common/admin-navbar.jsp" %>

                                <!-- Navbar End -->
                                ${success}

                                <!-- data display Used Car Start -->
                                <div class="container-fluid pt-4 px-4 col-md-6">
                                    <!-- IMAGE COUROUSAL START -->






                                    <!-- IMAGE COUROUSAL END -->
                                    <div class="card ">
                                        <div class="card-header text-center">
                                            Car Details
                                        </div>
                                        <div class="card-body ">
                                            <table class="table table-sm">
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">Brand</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarBrand}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Model</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarModelName}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Variant</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarVariant}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Fuel Type</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarFuelType}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Purchased Year</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarYear}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">RTO Passing</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarRTO}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">KM Driven</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarKilometers}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">No. Of Owners</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarNoOfOwners}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Status</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarStatus}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Price</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.usedCarModelData.usedCarBasePrice}
                                                        </th>
                                                    </tr>
                                                    <tr>

                                                        <th scope="row">Inspection Report</th>
                                                        <th><a href="inspection-report\used-car${usedCarEnquiryDetails.usedCarInspectionReport}"
                                                                target="_blank">Inspection Report</a></th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Images</th>
                                                        <th>
                                                            <c:if test="${not empty usedCarEnquiryDetails.usedCarImages}">
                                                                <div class="slider-container">
                                                                    <div class="slider">
                                                                        <c:forEach
                                                                            items="${usedCarEnquiryDetails.usedCarImages}"
                                                                            var="images">
    
                                                                            <div class="slide">
                                                                                <img class="image"
                                                                                    src="pictures\usedcar${images}"
                                                                                    onerror="this.src='images-ibc/no-image.png';"
                                                                                    alt="No image found" >
                                                                            </div>
                                                                        </c:forEach>
    
                                                                    </div>
                                                                    <a class="prev"
                                                                        onclick="plusSlides(-1)">&#10094;</a>
                                                                    <a class="next"
                                                                        onclick="plusSlides(1)">&#10095;</a>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${empty usedCarEnquiryDetails.usedCarImages}">
                                                                No images uploaded yet!
                                                            </c:if>
                                                        </th>
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
                                                        <th>${usedCarEnquiryDetails.enquiryModel.interestedUser.userName}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Email</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.interestedUser.userEmail}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Phone</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.interestedUser.userPhoneNumber}
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Address</th>
                                                        <th>${usedCarEnquiryDetails.enquiryModel.interestedUser.userAddress}
                                                        </th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- data display Used Car End -->

                                <!-- BUTTON START -->

                                <c:if test="${car.usedCarModelData.usedCarStatus=='ready-for-inspection'}">

                                    <div class="m-auto" style="width: 200px;">
                                        <a href="findusedcarforinsepection?usedcarid=${car.usedCarModelData.usedCarId}"
                                            class="btn btn-outline-success m-3">Proceed Inspection</a>
                                        <a href="" class="btn btn-outline-danger m-3">Reject</a>
                                    </div>
                                </c:if>

                                <c:if test="${car.usedCarModelData.usedCarStatus=='inspection-done'}">
                                    <div class="m-auto" style="width: 200px;">
                                        <form action="ctodsale">

                                            <input type="hidden" name="usedcarid"
                                                value="${car.usedCarModelData.usedCarId}">
                                            <input type="text" name="bidvalue"
                                                placeholder="Enter base value of car here(in Rs.)">
                                            <button type="submit" class="btn btn-outline-primary">Proceed to
                                                Sale</button>
                                        </form>

                                        <a href="" class="btn btn-outline-danger m-3">Reject</a>
                                    </div>
                                </c:if>



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
                <%}else{
                    response.sendRedirect("./ibc-login.jsp");
                    }%>

                    <!-- image slider js -->
                    <script src="/js-admin/image-slider.js"></script>
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