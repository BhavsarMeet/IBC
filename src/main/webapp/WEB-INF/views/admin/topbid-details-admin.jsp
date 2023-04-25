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

                <!-- image slider css -->
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
                                                        <th>${carData.usedCarBrand}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Model</th>
                                                        <th>${carData.usedCarModelName}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Variant</th>
                                                        <th>${carData.usedCarVariant}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Fuel Type</th>
                                                        <th>${carData.usedCarFuelType}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Purchased Year</th>
                                                        <th>${carData.usedCarYear}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">RTO Passing</th>
                                                        <th>${carData.usedCarRTO}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">KM Driven</th>
                                                        <th>${carData.usedCarKilometers}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">No. Of Owners</th>
                                                        <th>${carData.usedCarNoOfOwners}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Base Price</th>
                                                        <th>&#8377;${carData.usedCarBasePrice}</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Status</th>
                                                        <th>${carData.usedCarStatus}</th>
                                                    </tr>
                                                    <tr>

                                                        <th scope="row">Inspection Report</th>
                                                        <th><a href="inspection-report\used-car${report}"
                                                                target="_blank">Inspection Report</a></th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Images</th>
                                                        <th>
                                                            <c:if test="${not empty images}">
                                                                <div class="slider-container">
                                                                    <div class="slider">
                                                                        <c:forEach
                                                                            items="${images}"
                                                                            var="image">
    
                                                                            <div class="slide">
                                                                                <img class="image"
                                                                                    src="pictures\usedcar${image}"
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
                                                            <c:if test="${empty images}">
                                                                No images uploaded yet!
                                                            </c:if>
                                                        </th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- Table Start -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light text-center rounded p-4">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <h6 class="mb-0">Top Bids-Seller Details</h6>
                                            <a href="">Show All</a>
                                        </div>
                                        <!-- <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-end">
                                                <li class="page-item">
                                                    <c:if test="${currentPage != 1}">
                                                        <a class="page-link"
                                                            href="../ibcemployeedetailspage?epage=${currentPage-1}">Previous</a>
                                                    </c:if>
                                                </li>
                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                
                                                    <li class="page-item"><a class="page-link"
                                                            href="../ibcemployeedetailspage?epage=${i}">${i}</a></li>
                                                </c:forEach>
                
                
                                                <c:if test="${currentPage lt noOfPages}">
                                                    <a class="page-link"
                                                        href="../ibcemployeedetailspage?epage=${currentPage+1}">Next</a>
                                                </c:if>
                                                </li>
                                            </ul>
                                        </nav> -->
                                        <div class="table-responsive">
                                            <table
                                                class="table text-start align-middle table-bordered table-hover mb-0">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col"><input class="form-check-input" type="checkbox">
                                                        </th>
                                                        <th scope="col">Dealer Name</th>
                                                        <th scope="col">Dealer Email</th>
                                                        <th scope="col">Dealer Phone</th>
                                                        <th scope="col">Dealer Bid</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Action</th>
                                                        <th scope="col">Action</th>
                                                        <th scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${bidData}" var="data">
                                                        <tr>
                                                            <td><input class="form-check-input" type="checkbox"></td>
                                                            <td>${data.dealer.dealerName}</td>
                                                            <td>${data.dealer.dealerEmail}</td>
                                                            <td>${data.dealer.dealerPhone}</td>
                                                            <td>&#8377;${data.bidValue}</td>
                                                            <td>${data.bidStatus}</td>
                                                            <td><a href="initiatedeal?dealerid=${data.dealer.dealerId}&carid=${carData.usedCarId}"
                                                                    class="btn btn-outline-primary">Initiate
                                                                    Deal</a></td>

                                                            <td><a href="sellcartodealer?dealerid=${data.dealer.dealerId}&carid=${carData.usedCarId}&bidval=${data.bidValue}"
                                                                    class="btn btn-outline-success">Sell Car</a></td>
                                                            <td><a href="dealrejectedbyadmin?dealerid=${data.dealer.dealerId}&carid=${carData.usedCarId}"
                                                                    class="btn btn-outline-danger">Reject Deal</a></td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- data display Used Car End -->

                                <!-- Table Start -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light text-center rounded p-4">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <h6 class="mb-0">Rejected Deals-Dealer</h6>
                                            <a href="">Show All</a>
                                        </div>
                                        <!-- <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-end">
                                                <li class="page-item">
                                                    <c:if test="${currentPage != 1}">
                                                        <a class="page-link"
                                                            href="../ibcemployeedetailspage?epage=${currentPage-1}">Previous</a>
                                                    </c:if>
                                                </li>
                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                
                                                    <li class="page-item"><a class="page-link"
                                                            href="../ibcemployeedetailspage?epage=${i}">${i}</a></li>
                                                </c:forEach>
                
                
                                                <c:if test="${currentPage lt noOfPages}">
                                                    <a class="page-link"
                                                        href="../ibcemployeedetailspage?epage=${currentPage+1}">Next</a>
                                                </c:if>
                                                </li>
                                            </ul>
                                        </nav> -->
                                        <div class="table-responsive">
                                            <table
                                                class="table text-start align-middle table-bordered table-hover mb-0">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col"><input class="form-check-input" type="checkbox">
                                                        </th>
                                                        <th scope="col">Dealer Name</th>
                                                        <th scope="col">Dealer Email</th>
                                                        <th scope="col">Dealer Phone</th>
                                                        <th scope="col">Dealer Bid</th>
                                                        <th scope="col">Status</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${rejectedDealsData}" var="data">
                                                        <tr>
                                                            <td><input class="form-check-input" type="checkbox"></td>
                                                            <td>${data.dealer.dealerName}</td>
                                                            <td>${data.dealer.dealerEmail}</td>
                                                            <td>${data.dealer.dealerPhone}</td>
                                                            <td>&#8377;${data.bidValue}</td>
                                                            <td>${data.bidStatus}</td>

                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!--Table End -->

                                <!-- BUTTON START -->

                               
                               


                                <!-- BUTTON END -->
                                <!-- Footer Start -->
                                <div class="container-fluid pt-4 px-4">
                                   
                                        <div class="row">
                                            <div class="col-6 col-sm-4 text-center text-sm-start">
                                                <form action="ctocsale">
                                                    <input type="hidden" name="usedcarid" value="${carData.usedCarId}" >
                                                <input type="text" name="baseprice" placeholder="enter base price for this car">
                                                <button type="submit" class="btn btn-outline-warning">Proceed For CTOC Sale</button>
                                            </form>
                                            </div>
                                           
                                        </div>
                                    
                                </div>
                                <!-- Footer End -->
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