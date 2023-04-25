<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
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

                                ${msg}
                                <!-- Form Start -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="row g-4">
                                        <div class="bg-light rounded h-100 p-4">
                                            <h6 class="mb-4 text-center">Add IBC Dealer</h6>
                                            <form action="../adddealer" method="post">

                                                <div class="row mb-3">
                                                    <label for="inputEmail3" class="col-sm-2 col-form-label">Enter
                                                        Name</label>
                                                    <div class="col-sm-10">
                                                        
                                                        <input type="text" name="dealerName" spellcheck="true" placeholder="Dealer Name" value="${dealer.dealerName}"
                                                            class="form-control" id="inputEmail3" required/>
                                                            <span style="color:red ;"><form:errors path="dealer.dealerName"/></span>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enter
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                      
                                                        <input type="text" name="dealerEmail" 
                                                            placeholder="Dealer Email" spellcheck="true"  value="${email}"
                                                            class="form-control" id="dealeremail" required/>
                                                            <span style="color:red ;"><form:errors path="dealer.dealerEmail"/></span>
                                                    </div>
                                                </div>
                                                
                                                <div class="row mb-3">
                                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enter
                                                        Phone</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="dealerPhone" spellcheck="true" placeholder="Dealer Phone" value="${dealer.dealerPhone}"
                                                            class="form-control" id="inputPassword3" required/>
                                                            <span style="color:red ;"><form:errors path="dealer.dealerPhone"/></span>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enter
                                                        city</label>
                                                    <div class="col-sm-10">
                                                        <input name="dealerAddress" spellcheck="true" placeholder="Dealer Address" value="${dealer.dealerAddress}"
                                                            class="form-control" id="" cols="30" rows="3"
                                                            required/>
                                                            <span style="color:red ;"><form:errors path="dealer.dealerAddress"/></span>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Add IBC
                                                    Dealer</button>

                                            </form>

                                        </div>
                                    </div>
                                </div>


                                <!-- Form End -->

                                <!-- Used Car Approvals End -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light rounded-top p-4">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 text-center text-sm-start">
                                                © <a href="#">Your Site Name</a>, All Right Reserved.
                                            </div>
                                            <div class="col-12 col-sm-6 text-center text-sm-end">
                                                <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                                Designed By <a href="https://htmlcodex.com">Msquare Technologies</a>
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

                <script>
                 
                if("${err}"!=""){
                                                        
                    document.getElementById("dealeremail").value="${dealer.dealerEmail}";
                }                                         
                </script>

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