<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page import="com.model.admin.AdminModel" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

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
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css-admin/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css-admin/style-admin.css" rel="stylesheet">
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

            
            ${success}
            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="bg-light rounded h-100 p-4">
                        <h6 class="mb-4 text-center">Add New Car</h6>
                        <form action="registernewcar" method="post">
                            <div class="row mb-3">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Enter Make</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carBrand" value="${car.carBrand}" placeholder="Car Make" class="form-control" id="inputEmail3" required>
                                    <span style="color:red ;"><form:errors path="car.carBrand"/></span>
                                    
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Model</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carModelName" value="${car.carModelName}" placeholder="Car Model" class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carModelName"/></span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Variant Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carVariantName" value="${car.carVariantName}" placeholder="Car Variant" class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carVariantName"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Manufacturing
                                    Year</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carManufacturingYear" value="${car.carManufacturingYear}" placeholder="Manufacturing Year" class="form-control"
                                        id="inputPassword3" required>
                                        <span style="color:red ;"><form:errors path="car.carManufacturingYear"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Body Type</label>
                                <div class="col-sm-10">
                                    <select class="form-select mb-3" name="carBodyType" value="${car.carBodyType}" required>
                                        <option value="">Body Type</option>
                                        <option value="SUV">SUV</option>
                                        <option value="Sedan">Sedan</option>
                                        <option value="Hatchback">Hatchback</option>
                                        <option value="Compact SUV">Compact SUV</option>
                                        <option value="Compact Sedan">Compact Sedan</option>
                                        <option value="MUV">MUV</option>
                                        <option value="Convertible">Convertible</option>
                                        <option value="Coupe">Coupe</option>
                                        <option value="Station Wagon">Station Wagon</option>
                                        <option value="Sports Car">Sports Car</option>
                                        <option value="Minivan">Minivan</option>
                                        <option value="Truck">Truck</option>
                                    </select>
                                    <span style="color:red ;"><form:errors path="car.carBodyType"/></span>
                                </div>
                            </div>
                            
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Engine Type</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carEngineType" value="${car.carEngineType}" placeholder="Engine Type"  class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carEngineType"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Engine
                                    Capacity</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carEngineCapacity" value="${car.carEngineCapacity}" placeholder="Engine Capacity"  class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carEngineCapacity"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Transmission Type</label>
                                <div class="col-sm-10">
                                    <select class="form-select mb-3" value="${car.carTransmissionType}" name="carTransmissionType" required>
                                        <option value="">Transmission Type</option>
                                        <option value="Automatic">Automatic</option>
                                        <option value="Manual">Manual</option>
                                        <option value="Hybrid">Hybrid</option>
                                    </select>
                                    <span style="color:red ;"><form:errors path="car.carTransmissionType"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Fuel Type</label>
                                <div class="col-sm-10">
                                    <select class="form-select mb-3" value="${car.carFuelType}" name="carFuelType" required>
                                        <option value="">Fuel Type</option>
                                        <option value="Petrol">Petrol</option>
                                        <option value="Diesel">Diesel</option>
                                        <option value="CNG">CNG</option>
                                        <option value="Electric">Electric</option>
                                    </select>
                                    <span style="color:red ;"><form:errors path="car.carFuelType"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Seating
                                    Capacity</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carSeatingCapacity" value="${car.carSeatingCapacity}"  placeholder="No. of Seats" class="form-control"
                                        id="inputPassword3" required>
                                        <span style="color:red ;"><form:errors path="car.carSeatingCapacity"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter No. of Doors</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carDoors" value="${car.carDoors}" placeholder="No. of Doors" class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carDoors"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Mileage</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carMileage" value="${car.carMileage}" placeholder="Mileage" class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carMileage"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Price</label>
                                <div class="col-sm-10">
                                    <input type="text" name="carPrice" value="${car.carPrice}" placeholder="Price"  class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carPrice"/></span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Enter Car Launching
                                    Date</label>
                                <div class="col-sm-10">
                                    <input type="date" name="carLaunchingDate" value="${car.carLaunchingDate}"  class="form-control" id="inputPassword3"
                                        required>
                                        <span style="color:red ;"><form:errors path="car.carLaunchingDate"/></span>
                                </div>
                            </div>

                            <!-- <fieldset class="row mb-3">
                                <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1"
                                            value="option1" checked>
                                        <label class="form-check-label" for="gridRadios1">
                                            First radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2"
                                            value="option2">
                                        <label class="form-check-label" for="gridRadios2">
                                            Second radio
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="row mb-3">
                                <legend class="col-form-label col-sm-2 pt-0">Checkbox</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                        <label class="form-check-label" for="gridCheck1">
                                            Check me out
                                        </label>
                                    </div>
                                </div>
                            </div> -->
                            <button type="submit" class="btn btn-primary">Add Car</button>
                        </form>
                    </div>
                </div>
            </div>


            <!-- Form End -->


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
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
    <%}else{
        response.sendRedirect("./ibc-login.jsp");
        }%>
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