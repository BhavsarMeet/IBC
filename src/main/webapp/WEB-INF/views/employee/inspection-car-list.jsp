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

                            <!-- Used Car Under Inspection Start -->

                            ${success}
                            <div class="container-fluid pt-4 px-4">
                                <div class="bg-light text-center rounded p-4">
                                    <div class="d-flex align-items-center justify-content-between mb-4">
                                        <h6 class="mb-0">Inspection Car Details</h6>
                                        <a href="">Show All</a>
                                    </div><nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end">
                                            <li class="page-item">
                                                <c:if test="${currentPage != 1}">
                                                    <a class="page-link"
                                                        href="../inspectioncarlist?page=${currentPage-1}">Previous</a>
                                                </c:if>
                                            </li>
                                            <c:forEach begin="1" end="${noOfPages}" var="i">
    
                                                <li class="page-item"><a class="page-link"
                                                        href="../inspectioncarlist?page=${i}">${i}</a></li>
                                            </c:forEach>
    
    
                                            <c:if test="${currentPage lt noOfPages}">
                                                <a class="page-link"
                                                    href="../inspectioncarlist?page=${currentPage+1}">Next</a>
                                            </c:if>
                                            </li>
                                        </ul>
                                        </nav>
                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-dark">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Brand</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Varaint</th>
                                                    <th scope="col">User Name</th>
                                                    <th scope="col">User Phone</th>
                                                    <th scope="col">Details</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${usedCarUnderInspection}" var="inspectioncars">
                                                    <tr>
                                                        <td><input class="form-check-input" type="checkbox"></td>
                                                        <td>${inspectioncars.usedCarBrand}</td>
                                                        <td>${inspectioncars.usedCarModelName}</td>
                                                        <td>${inspectioncars.usedCarVariant}</td>
                                                        <td>${inspectioncars.userEntitySellCar.userName}</td>
                                                        <td>${inspectioncars.userEntitySellCar.userPhoneNumber}</td>
                                                        <td><a href="inspectioncardetailsemployee?usedcarid=${inspectioncars.usedCarId}"
                                                             class="btn btn-outline-primary">View
                                                                Details</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Used Car Under Inspection End -->

                            <!-- Footer Start -->
                            <div class="container-fluid pt-4 px-4">
                                <div class="bg-light rounded-top p-4">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 text-center text-sm-start">
                                            &copy; <a href="#">Your Site Name</a>, All Right Reserved.
                                        </div>
                                        <div class="col-12 col-sm-6 text-center text-sm-end">
                                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                                            </br>
                                            Distributed By <a class="border-bottom" href="https://themewagon.com"
                                                target="_blank">ThemeWagon</a>
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